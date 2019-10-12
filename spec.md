# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
      Use Corneal gem to create the Sinatra app
- [x] Use ActiveRecord for storing information in a database
      Use rake db:create_migration, rake db:migrate, rake db:seed to create tables and store the data to the database
- [x] Include more than one model class (e.g. User, Post, Category)
      Create User, Character model classes and store them in Model folder
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
      User has_many Characters 
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
      Character belongs_to User 
- [x] Include user accounts with unique login attribute (username or email)
      Use password_digest, has_secure_password, authenticate, and Helpers functions to check unique user login 
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
      Characters_controller has Create, Read, Update, and Destroy routes 
- [x] Ensure that users can't modify content created by other users
      Characters_controller use Edit, Patch, and Delete routes to check the user can't modify other user's characters
- [x] Include user input validations
      Model character uses validates :username, :email, presence: true to validate when create a new user
      Model user uses validates :name, :character_class, :race, presence: true to validate when create a new character 
      Use HTML to validate user's email input
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
      User Sinatra Flash, ActiveRecord errors to display error message for user's incorrect input
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message