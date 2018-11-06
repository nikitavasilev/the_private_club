# Test Drive Development - PostGreSQL - MiniTest - Devise Authentication - The Private Club

This work was done as a project for [The Hacking Project Bootcamp](https://www.thehackingproject.org/).

[Click here](https://theprivate-club.herokuapp.com/) to check the live version of the app.
The goal was to learn the basics of TDD using MiniTest to test the models and the views before deploying the app. The app is build on Rails and a PostGreSQL database. We use the `Devise` gem for authentication.

## Requirements

You need at least ruby 2.5.1, rails 5.2.1 and bundler installed on your computer.

1. First of all `git clone the repo`
2. Run `$ cd the_private_club`
3. Run `$ bundle install`
4. Run `$ rails db:create`
5. Run `$ rails db:migrate`
6. Run `$ rake db:reset` which gonna clean all the cells of our database, and create brand new tables along with our `seeds.rb` file
7. Run `$ rails server` to deploy the app in local
8. Open your browser, and type: `http://localhost:3000`
9. To play with the database run `$ rails console`
10. To `MiniTest` test, run:
    * `$ rails test:models` to test models
    * `$ rails test:controllers` to test the views

# Contributions

This project was build with the help of:
* [Nikita Vasilev](https://github.com/nikitavasilev)
* [Arthur Mansuy](https://github.com/tutus06)
* [Nathaniel Debache](https://github.com/Natdenice)
* [Thomas Charvet](https://github.com/TomacTh)
* [Ysaline Macé](https://github.com/Ysalien)

## Contact

Problems or questions? File an issue at [GitHub](https://github.com/nikitavasilev/the_private_club/issues).