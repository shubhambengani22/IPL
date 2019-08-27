#The training file is separated from the actual api and we can run the training.py
#anytime and save the model and labelencoders in the pickle file to use it later.
import numpy as np
import pandas as pd
import pickle
import mysql.connector
from flask import Flask, render_template, request, redirect, url_for
from flask_restful import reqparse, abort, Api, Resource

app = Flask(__name__)
    
#This function gets the value from the link of the parameters mentioned.
@app.route("/match-winner/<q>", methods=['POST', 'GET'])
def get(q):
    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="ipl_test"
    )
    mycursor = mydb.cursor()
    check_row2 = "SELECT * FROM test1 WHERE query_id=%s"
    print(check_row2, q)
    mycursor.execute(check_row2, (q,))
    result2 = mycursor.fetchall()
    print(result2)
    num_rows2 = len(result2)
    
    if num_rows2 > 0:
        row = result2[0][2:-1]
        row = list(row)
        row = pd.DataFrame(list(row))
        row = row.T   
        row = row.values
        #Load the model in the pickle file
        pickle_in = open("dtree.pickle","rb")
        model = pickle.load(pickle_in)
        
        #Load the encoders in the pickle file
        pickle_in2 = open("label_encoders.pickle","rb")
        le_all = pickle.load(pickle_in2)
        
        le_1_dict = dict(zip(le_all[0].classes_, le_all[0].transform(le_all[0].classes_)))
        le_2_dict = dict(zip(le_all[1].classes_, le_all[1].transform(le_all[1].classes_)))
        le_3_dict = dict(zip(le_all[2].classes_, le_all[2].transform(le_all[2].classes_)))
        le_4_dict = dict(zip(le_all[3].classes_, le_all[3].transform(le_all[3].classes_)))
        le_5_dict = dict(zip(le_all[4].classes_, le_all[4].transform(le_all[4].classes_)))
        
        row[:, 0][0] = le_1_dict.get(row[:, 0][0], 'unknown')
        row[:, 1][0] = le_2_dict.get(row[:, 1][0], 'unknown')
        row[:, 2][0] = le_3_dict.get(row[:, 2][0], 'unknown')
        row[:, 3][0] = le_4_dict.get(row[:, 3][0], 'unknown')
        row[:, 7][0] = le_5_dict.get(row[:, 7][0], 'unknown')
        
        print(row)
        
        winner = model.predict(row)[0]
        #winning_team = id_to_team(le_y_dict, winner)
        
        check_row = "SELECT predicted_winner FROM test1 WHERE query_id=%s"
        mycursor.execute(check_row, (q,))
        result = mycursor.fetchall()
        num_rows = len(result)
        
        if num_rows > 0:
            status = 'Record(s) found.'
            if result[0][0] == 'yet_to_predict':
                update = "UPDATE test1 SET predicted_winner=%s WHERE query_id=%s"
                val = (winner, q)
                mycursor.execute(update, val)
                mydb.commit()
                print(mycursor.rowcount, "record updated.")
        else:
            status = 'No Record(s) found.'
    else:
        print('No records found.')        
    

    #print(id_to_team(le_y_dict, winner))
    
    return render_template('match-winner.html', match_id=q, winner=winner)

#This function converts the winner id to the actual team name.
#This function was created because the winner is an id and we want the text.
def id_to_team(le_y_dict, winner):
    for team, _id in le_y_dict.items():
        if _id == winner:
            return team

#The link will be changed to only uid later. When we do change this,
#the data shall be picked up from the database according to the uid
#and the winner shall be updated accordingly.
#api.add_resource(PredictWinner, '/match-winner/<q>')

#The port value can be changed to any value. If we want to use the debug mode,
#just remove the port vakue and do 'debug=True'
if __name__ == '__main__':
    app.run(debug=True, use_reloader=False)