#! /bin/bash

if [[ $1 == "test" ]]
then
PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the \ variable above to query your database.

echo $($PSQL "TRUNCATE games,teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    #get_winner_team_name
    
    WINNER_TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER' ")
    if [[ -z $WINNER_TEAM_NAME ]]
    then
      INSERT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_NAME == "INSERT 0 1" ]]
      then  
        echo Inserted into teams, $WINNER
      fi
    fi
    
    #get_opponent_team_name
    OPPONENT_TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
     
    if [[ -z $OPPONENT_TEAM_NAME ]]  
    then
      INSERT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
       if [[ $INSERT_NAME == "INSERT 0 1" ]]
       then  
        echo Inserted into teams, $WINNER
       fi
    fi
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    INSERT_GAMES=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS)")
    if [[ INSERT_GAMES == "INSERT 0 1" ]]
    then
      echo Inserted $YEAR $ROUND $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS
    fi
    
  fi
done