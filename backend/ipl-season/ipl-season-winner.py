import numpy as np
import pandas as pd
import pickle
import mysql.connector
from flask import Flask, render_template, request, redirect, url_for
from flask_restful import reqparse, abort, Api, Resource
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
from sklearn.tree import DecisionTreeClassifier
import operator

app = Flask(__name__)
#api = Api(app)
    
@app.route('/season-winner/<user_id>/<year>', methods=['POST', 'GET'])
def predict(user_id, year):
    
    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="ipl_test"
    )
    mycursor = mydb.cursor()
    
    #importing dataset
    data = pd.read_csv('matches.csv')
    #data.drop(['season'], axis=1, inplace=True)
    
    ipl_teams = ['Chennai Super Kings', 'Delhi Capitals', 'Kings XI Punjab', 'Kolkata Knight Riders',
                 'Mumbai Indians', 'Rajasthan Royals', 'Royal Challengers Bangalore', 'Sunrisers Hyderabad',
                 'Delhi Daredevils']
    
    df_teams = data[(data.team1.isin(ipl_teams)) & (data.team2.isin(ipl_teams))]
    #df_teams = data.copy()
    
    if year == '2020':
        df_pred = pd.read_csv('ipl2020.csv')
        for i in range(len(df_pred)):
            df_pred.iloc[i, 0] = df_pred.iloc[i, 0].strip()
            df_pred.iloc[i, 1] = df_pred.iloc[i, 1].strip()
    else:
        df_pred = df_teams[df_teams.season == int(year)]
        #df_pred = df_pred.drop(['winner'], axis=1)
        num_matches = len(df_pred)
        match_ids = [i for i in range(1, num_matches+1)]
        df_pred['match_id'] = match_ids    
        df_pred.drop(['season', 'city', 'toss_winner', 'toss_decision', 'result',
           'dl_applied', 'win_by_runs', 'win_by_wickets',
           'player_of_match', 'venue'], axis = 1, inplace=True)
        
    
    #df_team2 = data[data.team2.isin(ipl_teams) && data.team2.isin(ipl_teams)]
    
    #df_teams = pd.concat((df_team1, df_team2))
    #df_teams = df_teams.drop_duplicates()
    
    if int(year) < 2020:
        df_teams = df_teams.set_index('season')
    
    df_teams['team1'] = df_teams['team1'].replace(['Delhi Daredevils'], 'Delhi Capitals')
    df_teams['team2'] = df_teams['team2'].replace(['Delhi Daredevils'], 'Delhi Capitals')
    
    df_teams = df_teams.drop(['city', 'toss_winner', 'toss_decision', 'result',
           'dl_applied', 'win_by_runs', 'win_by_wickets',
           'player_of_match', 'venue'], axis = 1)
    
    #df_pred = df_teams[df_teams.index == 2019]
    #df_pred['match_id'] = match_ids
    
    if int(year) <= 2019:
        drop_years = [i for i in range(int(year), 2020)]
        df_untilyear = df_teams.drop(drop_years)
        
    #df_until2018.drop(['season'], axis=1, inplace=True)
    
    final = pd.get_dummies(df_teams, prefix=['team1', 'team2'], columns=['team1', 'team2'])
            
    if int(year) < 2020:
        final_untilyear = pd.get_dummies(df_untilyear, prefix=['team1', 'team2'], columns=['team1', 'team2'])
    final_pred = pd.get_dummies(df_pred, prefix=['team1', 'team2'], columns=['team1', 'team2'])
    
    if int(year) < 2020:
        X = final.drop(['winner'], axis=1)
    else:
        X = final.drop(['season','winner'], axis=1)
    y = final["winner"]
    if int(year) < 2020:
        X2 = final_pred.drop(['match_id', 'winner'], axis=1)
        print(X2)
        #y2 = final_pred['winner']et_
    else:
        X2 = final_pred.drop(['match_id'], axis=1)
        print(X2)
    
    if int(year) < 2020:
        X_year = final_untilyear.drop(['winner'], axis=1)
        y_year = final_untilyear["winner"]

    #X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.01, random_state=42)
    
    rf = RandomForestClassifier(n_estimators=100, max_depth=20,
                                  random_state=0)
    '''
    clf = DecisionTreeClassifier()
    clf.fit(X_train, y_train)
    
    dt_pred = clf.predict(X_test)
    '''
    
    if year == '2020':
        rf.fit(X, y)
    else:
        rf.fit(X_year, y_year)
    
    rf_pred = rf.predict(X2)
    '''
    score = rf.score(X_year, y_year)
    score2 = rf.score(X2, y2)
    
    print("Training set accuracy: ", '%.3f'%(score))
    print("Test set accuracy: ", '%.3f'%(score2))
    '''
    #print(accuracy_score(y_test, rf_pred))
    #print(accuracy_score(y_test, dt_pred))
    
    points_table = {}
    
    for i in range(len(ipl_teams)):
        points_table[ipl_teams[i]] = 0
        
    rf_pred_df = pd.DataFrame(rf_pred, columns=['matches_won'])
    
    index = list(rf_pred_df.matches_won.value_counts().index)
    
    matches_won = rf_pred_df.matches_won.value_counts()
    
    matches_won = matches_won.reset_index()
    
    print('Number of matches won : \n', matches_won)
    
    for i in range(len(ipl_teams)-1):
        points_table[matches_won['index'][i]] = matches_won['matches_won'][i]*2
    
    sorted_points = sorted(points_table.items(), key=operator.itemgetter(1), reverse=True)
    
    top_four = sorted_points[:4]
    
    top_four_teams = []
    
    for i in range(4):
        top_four_teams.append(top_four[i][0])
        
    fix = []
    for i in range(2):
        fix.append([top_four_teams[i*2], top_four_teams[i*2 + 1]])
        
    print("The top four teams are :")
    for i in range(4):
        print(top_four_teams[i])
    print("\n")
    
    print("The Semi - Final matches are :")
    for i in range(2):
        print((i+1)," : ",fix[i][0]," vs ",fix[i][1])
    print("\n")
    
    match_id = []
    for i in range(2):
        ids = df_pred[(df_pred['team1'] == fix[i][0]) & (df_pred['team2'] == fix[i][1])].match_id
        if ids.empty:
            ids = df_pred[(df_pred['team1'] == fix[i][1]) & (df_pred['team2'] == fix[i][0])].match_id
        match_id.append(list(ids)[0])
        
    matches = []
    for i in range(2):
        matches.append(final_pred[final_pred.match_id == match_id[i]])
        
    qual = pd.concat((matches[0], matches[1]))
    
    if int(year) < 2020:
        X4 = qual.drop(['match_id', 'winner'], axis=1)
    else:
        X4 = qual.drop(['match_id'], axis=1)
    
    qual_winners = rf.predict(X4)
    
    finalist = qual_winners[0]
    
    print("Match status - "+fix[0][0]+" vs "+fix[0][1]+" -> "+finalist)
    print("\n")
    
    #print("The first finalist is : ", finalist)
    
    qual2 = []
    
    for i in range(2):
        if finalist in fix[0][i]:
            pass
        else:
            qual2.append(fix[0][i])
    qual2.append(qual_winners[1])
    
    print("Match status - "+fix[1][0]+" vs "+fix[1][1]+" -> "+qual_winners[1])
    print("\n")
    
    for i in range(2):
        if qual_winners[1] in fix[1][i]:
            pass
        else:
            #qual2.append(fix[1][i])
            print(fix[1][i]+" is eliminated.")
    print("\n")
    #print(qual2)
    
    qual_id = df_pred[(df_pred['team1'] == qual2[0]) & (df_pred['team2'] == qual2[1])].match_id
    
    if qual_id.empty:
        qual_id = df_pred[(df_pred['team1'] == qual2[1]) & (df_pred['team2'] == qual2[0])].match_id
    qual_id = int(list(qual_id)[0])
    
    match_qual2 = final_pred[final_pred.match_id == qual_id]
    
    if int(year) < 2020:        
        X_qual2 = match_qual2.drop(['match_id', 'winner'], axis=1)
    else:
        X_qual2 = match_qual2.drop(['match_id'], axis=1)
    
    finalist2 = rf.predict(X_qual2)[0]
    
    print("Match status - "+qual2[0]+" vs "+qual2[1]+" -> "+finalist2)
    print("\n")
    
    print("The second finalist is  : ", finalist2)
    
    final_match_id = df_pred[(df_pred['team1'] == finalist) & (df_pred['team2'] == finalist2)].match_id
    final_match_id = int(list(final_match_id)[0])
    
    match_final = final_pred[final_pred.match_id == final_match_id]
    
    if int(year) < 2020:
        X_final = match_final.drop(['match_id', 'winner'], axis = 1)
    else:
        X_final = match_final.drop(['match_id'], axis = 1)
    
    winner = rf.predict(X_final)[0]
    
    print("\n")
    print("The winner is : ",winner)
    
    check_rows = "SELECT * FROM season_winner WHERE user_id = %s AND season=%s"
    
    mycursor.execute(check_rows, (user_id, year))
    
    result = mycursor.fetchall()
    
    if len(result) > 0:
        print(len(result), " records found.")
        print("Not inserting the record.")
    else:
        print("No records found.")
        print("Inserting the record.")
        insert_winner = "INSERT INTO season_winner(user_id, season, predicted_winner) VALUES(%s, %s, %s)"
        values = (user_id, year, winner)
        mycursor.execute(insert_winner, values)
        mydb.commit()
        print(mycursor.rowcount, " values inserted.")
    
    return render_template('season-winner.html', winner=winner)
    
#api.add_resource(SeasonWinner, '/<year>')

if __name__ == '__main__':
    app.run(use_reloader=False)