# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
      Use Corneal gem to create the app
- [x] Use ActiveRecord for storing information in a database
      Use rake db:create_migration, rake db:migrate, rake db:seed to create tables and migrate the to database
- [x] Include more than one model class (e.g. User, Post, Category)
      Create User, Character models in Model folder
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
      Add User has_many Characters in user.rb
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
      Add Character belongs_to User in character.rb
- [x] Include user accounts with unique login attribute (username or email)
      Use Session and authenticate to check unique login 
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
      Include Create, Read, Update, and Destroy routes in Characters_controller
- [x] Ensure that users can't modify content created by other users
      Use Helpers functions to check if the user edit or modify characters which are not belong to the them
- [x] Include user input validations
       Use validates :username, :email, presence: true to validate username, email when create new user
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
      Use HTML, Flash gem, ActiveRecord errors to validate show error message for user's incorrect input
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message