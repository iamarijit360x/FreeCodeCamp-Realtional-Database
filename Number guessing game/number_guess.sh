#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUM=$(( $RANDOM % 1001  ))


echo "Enter your username:"
read USERNAME
USER_ID=$($PSQL "select player_id from players where username='$USERNAME'")
if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  BEST_GAME=$($PSQL "select best_game from players where username='$USERNAME'")
  GAME_PlAYED=$($PSQL "select game_played from players where username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAME_PlAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
I=1
while [[ true ]]
do
  read NUMBER
  if [[ ! $NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  if [[ $NUMBER == $NUM ]]
  then
    echo "You guessed it in $I tries. The secret number was $NUM. Nice job!"
    break
  elif [[ $NUMBER > $NUM ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
  (( I++ ))
  
done

if [[ -z $BEST_GAME ]]
then
  INSERT_DATA=$($PSQL "insert into players(username,best_game,game_played) values('$USERNAME',$I,1)")
else
  if [[ $I < $BEST_GAME ]]
  then
    UPDATE_DATA=$($PSQL "update players set best_game=$I where username='$USERNAME'")
  fi
  UPDATE_GAME_PLAYED=$($PSQL "update players set game_played=game_played + 1 where username='$USERNAME'")
fi