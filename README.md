# Scaffold for social media app with Ruby on Rails

In this project, we transformed the original Blog app into an back-end server, providing it with some API endpoints to a to allow it to be used in different ways, rather than just through the site - for example, a mobile app or a CLI application.

## Built With

- Ruby v2.7.0
- Ruby on Rails v5.2.6

## Live Demo

TBA

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Ruby: 2.7.0
- Rails: 5.2.6
- Postgres: >=9.5

### Setup

To run this project, you only need a computer with internet connection and a browser installed, and follow these steps:

In your terminal, in the folder of your preference, type the following bash command to clone this repository:

```sh

```

then

```sh
cd ror-social-scaffold
```

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

Optionally, you can add the provided seeds for the database tables with:

```
    rails db:seed
```

### Usage

Start server with:

```
    rails server
```

API
Open the rest API client of your choice (we recommend using Thunder client VScode extension)

### API endpoints

When signing in, copy the bearer token from the authorization response headers.

| Name           | Endpoint                   | Method | Header                                                                                          | Body                                                                                                            |
| -------------- | -------------------------- | ------ | ----------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| Sign-up        | `/users`                   | POST   | { "Accept": "application/json", "Content-Type": "application/json" }                            | {"user": {"name": "Mario", "email": "mario@mail.com", "password": "123456", "password_confirmation": "123456"}} |
| Sign-in        | `/users/sign_in`           | POST   | { "Accept": "application/json", "Content-Type": "application/json" }                            | {"email": "mario@mail.com", "password": "123456"}                                                               |
| Sign-out       | `/users/sign_out`          | DELETE | { "Accept": "application/json", "Content-Type": "application/json", "Authorization": JWT token} |                                                                                                                 |
| Create post    | `/posts`                   | POST   | { "Accept": "application/json", "Content-Type": "application/json", "Authorization": JWT token} | {"content": "Example post"}                                                                                     |
| Get Post       | `/posts`                   | GET    | { "Accept": "application/json", "Content-Type": "application/json", "Authorization": JWT token} |                                                                                                                 |
| Create Comment | `/posts/:post_id/comments` | POST   | { "Accept": "application/json", "Content-Type": "application/json", "Authorization": JWT token} | {"content": "Example comment"}                                                                                  |
| Get comments   | `/posts/:post_id/comments` | GET    | { "Accept": "application/json", "Content-Type": "application/json", "Authorization": JWT token} |                                                                                                                 |

## Authors

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to comments and raise any [issue]() for this milestone.

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/)
- [The Odin Project](https://www.theodinproject.com/)
- [Rails Guides](https://guides.rubyonrails.org/index.html)

## 📝 License

This project is [MIT](./LICENSE) licensed.
