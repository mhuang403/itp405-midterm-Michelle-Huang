Midterm
=======

Clone this repo, `cd` into it, and run `composer install`. Next, create the `.env` file with the following contents, and update the database host, username, and password.

```
APP_ENV=local
APP_KEY=base64:rT+Rtp6O+Fbjyf26WeHf7YLIkj4iDIYJMQJoDqDmwMw=
APP_DEBUG=true
APP_LOG_LEVEL=debug
APP_URL=http://localhost

DB_CONNECTION=mysql
DB_HOST=XXX
DB_PORT=3306
DB_DATABASE=itp405-midterm
DB_USERNAME=XXX
DB_PASSWORD=XXX

BROADCAST_DRIVER=log
CACHE_DRIVER=file
SESSION_DRIVER=file
QUEUE_DRIVER=sync

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_DRIVER=smtp
MAIL_HOST=mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
```

Your midterm responses will be a combination of code and short answer. Your short answer responses should be placed in `ANSWERS.md`.

 __DO NOT CHANGE ANYTHING IN THE DATABASE__

## Question 1 - SQL Joins and Prepared Statements

Write the SQL that returns all reviews for book 1. Your result set should include the following columns:

* reviews.headline
* reviews.body
* reviews.rating
* books.title
* author.first_name
* author.last_name
* publishers.name aliased to "publisher_name" i.e. `SELECT publishers.name AS publisher_name`

Start by writing out this query in Sequel Pro, MySQL Workbench, or phpMyAdmin to figure out the query.

Once you've gotten that, create a route `/books/{id}`, that executes your raw query and dumps it out on the page as JSON. Bind the route parameter `id` to the `WHERE books.id = ?` clause in your SQL statement. You may use a controller or the route's callback function for this question.

[Here are the docs for how to execute a raw SQL query in Laravel using the DB class](https://laravel.com/docs/5.4/database#running-queries). Behind the scenes, Laravel uses prepared statements with PDO.

Remember, to dump out your data as JSON, simply return the data from the route or controller method and Laravel will automatically convert it to JSON.

## Question 2 - Object Relational Mapping

Build a page with the route `/books` that lists all books from the `books` table on the page. You must:

* Display the book title, author first and last name, and publisher name
* Use a controller
* Use Blade for templating
* Use the Eloquent ORM instead of the query builder (DB class)

In `ANSWERS.md`, explain potential problems that could arise with respect to the number of queries being executed. How might you solve it?

## Question 3

I've created a login page located at `/login`. If a login is successful, the user is redirected to `/admin`. Otherwise, the user is redirected back to `/login`.

* login = dtang@usc.edu
* password = laravel

__Task 1__: Add a message on the admin page for when a user successfully logs in. The message should say "Welcome back, <NAME>.", where "<NAME>" should be replaced with the authenticated user's name (the name column in the users table). This message should only appear once a user has logged in. If you refresh that page, the message will no longer be there.

__Task 2__: Add a message for when a user fails to login. The message should say "Invalid credentials" on the login page. If the user refreshes the login page, the error message will no longer be there.

## Question 4 - Middleware and Authentication

I've created a route `/admin` that returns a simple view. Your task is to protect this route from any user accessing it unless they are logged in __and__ have the `admin` column set to 1 in the `users` table. Protect this route by adding a middleware class called `IsAdmin`.

There are 2 user accounts in the `users` table, both with their password set to an encryption of "laravel". The user `dtang@usc.edu` is an admin, and the other is not. When you login with dtang@usc.edu, you should be redirected to `/admin`. If you log in with `itp@usc.edu`, you should be redirected to `/login`.

## Submission

When you are finished, push up your code to a repo called `itp405-midterm-FIRSTNAME_LASTNAME`. Then, send an email to the TA and myself with this link. Yay! You are done! :)