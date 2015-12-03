# Setup instructions
1. Clone the repo
2. Confirm that you have heroku installed
    * Try `heroku -h` if this throws an error then install heroku from [here](https://toolbelt.heroku.com/). Instructions for setting up Heroku rails are [here](https://devcenter.heroku.com/articles/getting-started-with-rails4) but everything about creating a new app is unnecessary since this has already been done
2. `cd hypeRPG`
3. Run `bundle install`.
4. Make sure you have postgres installed and running
5. run `hero`
6. Navigate to `localhost:3000`

# Deployment instructions

```
cd into/root/dir/
git add --all
git commit -m "New stuff for the website"
git push heroku master
heroku run rake db:migrate
```
## Common Issues
* `No such file or directory Is the server running locally and accepting connections on Unix domain socket"/tmp/.s.PGSQL.5432"`- You need to start up postgres
* `FATAL: database "hypeRPG_development" does not exist`  - You need to create a database in your local postgres that matches this name:

```
psql postgres
```
Then in the postgres shell
```
create database hyperpg_development;  
create user some_user password 'some_password';
grant all on database hypeRPG_development to some_user;
```
change some_password and some_user to whatever you want them to be
# Write Up
Team Members: Phillip Kuznetsov, Alex Chan, David Lin, Jaron Armiger

Demo Link: https://warm-harbor-2298.herokuapp.com/

Idea: A click based RPG where you can fight enemies and get cool items.


### Models and Description:

*Player*

has email, and many characters

*Character*

belongs_to player

has name, health, hype, armor, speed, enemy flag, base health and damage, cash, and items

*Item*

belongs_to character

has name,

### Features:

Players can sign up and play as a Character

Characters can fight multiple enemies upon
entering the depths of the cave. After 
defeating enemies, they can get money to
buy more items.

Items make characters more beefy

### Division of Labor:

Phillip: Made Home Controller, Player and Character Models

David and Alex: Made Cave controller, Enemy fighting

Jaron: Made Item Model, Shop Controller
