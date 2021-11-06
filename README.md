# Blog-app API End-Points RoR

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
git clone https://github.com/EroAuditore/blog-api.git
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

Install figaro to set Env variables
Figaro installation is easy:

```
$ bundle exec figaro install
```

This creates a commented config/application.yml file and adds it to your .gitignore. Add your own configuration to this file and you're done!

Given the following configuration file you'll have to add this variables and write your own password and user to connect to DB:

# config/application.yml

> #Dev <br>
> psql_uid: postgres_user <br>
> psql_pwd: Mypsqlpassword <br>
> #prod <br>
>
> prod_psql_uid: postgres_user<br>
> prod_psql_pwd: Mypsqlpassword<br>
>
> DEVISE_JWT_SECRET_KEY: 128bb7e76c921aa7d907b1e3f5abc3e8f725f4e4f7c2a0317b0de16f0ab426279d781dfd36ccde8ab53506eeb74e5f808be3754e46b540b94284ecbfead488ac

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

| Name           | Endpoint                     | Method | Header                                                                                          | Body                                                                       |
| -------------- | ---------------------------- | ------ | ----------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| Sign-up        | `/signup`                    | POST   | { "Accept": "application/json", "Content-Type": "application/json" }                            | {"user": {"name": "test", "email": "test@mail.com", "password": "123456"}} |
| Sign-in        | `/login`                     | POST   | { "Accept": "application/json", "Content-Type": "application/json" }                            | {"email": "test@mail.com", "password": "123456"}                           |
| Sign-out       | `/logout`                    | DELETE | { "Accept": "application/json", "Content-Type": "application/json", "Authorization": JWT token} |                                                                            |
| Create post    | `/api/v1/posts`              | POST   | { "Accept": "application/json", "Content-Type": "application/json", "Authorization": JWT token} | { "post": { "content": "post example" } }                                  |
| Get Post       | `/api/v1/posts`              | GET    | { "Accept": "application/json", "Content-Type": "application/json", "Authorization": JWT token} |                                                                            |
| Create Comment | `/api/v1/posts/:id/comments` | POST   | { "Accept": "application/json", "Content-Type": "application/json", "Authorization": JWT token} | { "comment": { "content": "comment example" } }                            |
| Get comments   | `/api/v1/posts/:id/comments` | GET    | { "Accept": "application/json", "Content-Type": "application/json", "Authorization": JWT token} |                                                                            |

## Authors

👨‍💻 **Eduardo Rodriguez**

- GitHub: [@EroAuditore](https://github.com/EroAuditore)
- Twitter: [@EroAuditore](https://twitter.com/EroAuditore)
- LinkedIn: [EroAuditore](https://www.linkedin.com/in/EroAuditore/)

👨‍💻 **Daniel Samuel**

- Github: [DanSam5k](https://github.com/DanSam5k)
- Twitter: [@\_dan_sam](https://twitter.com/_dan_sam)
- Linkedin: [dansamuel](https://www.linkedin.com/in/dansamuel/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to comments and raise any [issue](https://github.com/EroAuditore/blog-api/issues) for this milestone.

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/)
- [The Odin Project](https://www.theodinproject.com/)
- [Rails Guides](https://guides.rubyonrails.org/index.html)

## 📝 License

This project is [MIT](./LICENSE) licensed.
