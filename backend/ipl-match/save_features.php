<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "ipl_test";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if($conn){

        $city = $_POST['city'];
        $team1 = $_POST['team1'];
        $team2 = $_POST['team2'];
        $toss_winner = $_POST['toss_winner'];
        $toss_decision = $_POST['toss_decision'];
        $result = $_POST['result'];
        $dl_applied = $_POST['dl_applied'];
        $win_by_runs = $_POST['win_by_runs'];
        $win_by_wickets = $_POST['win_by_wickets'];
        $player_of_match = $_POST['player_of_match'];
        $venue = $_POST['venue'];

        $sql = "INSERT INTO test1(city,team1,team2,toss_winner,toss_decision,
                                    result,dl_applied,win_by_runs,win_by_wickets,
                                    player_of_match,venue) VALUES('$city','$team1','$team2',
                                    '$toss_winner','$toss_decision','$result',$dl_applied,
                                    $win_by_runs,$win_by_wickets,'$player_of_match','$venue')";
        
        if (mysqli_query($conn, $sql)) {
            echo "New record created successfully<br>";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }

        #Retrieve the query id from the saved record
        $sql = "SELECT query_id FROM test1 WHERE team1='".$team1."' AND team2='".$team2."'";

        $result = mysqli_query($conn, $sql);
        
        if (mysqli_num_rows($result) > 0) {
            while($row = mysqli_fetch_assoc($result)){
                $q_id = $row['query_id'];
            }
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }

        $url = "http://127.0.0.1:5000/match-winner/".$q_id;

        header("Location:".$url);


    }
    else{
        die("Connection terminated");
    }

?>