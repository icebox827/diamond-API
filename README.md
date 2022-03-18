# diammond API

A RESTFUL API built with Ruby on Rails. It uses JWT to implement Authentication & Authorization. In this project, I built a fullstack application where users can access geo location and it's features. The repo for the client app can be accessed [here](https://github.com/icebox827/diamond-client)

## :red_circle: Live link

[API Home](https://diamond-api.herokuapp.com)
[Client App](https://diamond-client.herokuapp.com/)

## :hammer: Built with

- Ruby v2.7.1
- Ruby on Rails v7.0.2.3
- RSpec-Rails for testing

## :construction_worker: Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.7.1
Rails: 7.0.2.3
Postgres: >=9.5

### Setup

`$ git clone https://github.com/icebox827/diamond-API.git`
`$ cd diamond-API`

Install gems with: `bundle install`

Setup database with:

> make sure you have postgreSQL installed and running on your system
`rails db:create`
`rails db:migrate`
`rails db:seed`

### Usage

Start server with: `rails server -p 3001`

Open `http://localhost:3001/` in your browser.

### Deploy to a live server

Deploying to a live server like Heroku is easy, make sure you have the necessary credentials setup on your local machine
`heroku create`
`heroku rename app-new-name`
`git push heroku $BRANCH_NAME:master`
if you are already in master branch no need to add $BRANCH_NAME, just use `git push heroku master`
`heroku run rails db:migrate`
`heroku run rails db:seed`
`heroku open`

Enjoy your newly deployed rails API

### Run tests

`rpsec`

## API reference

The API will expose the following RESTful endpoints.

### BaseUrl: {Host-URL}/api/v1

| Endpoint                | Functionality                |
|-------------------------|------------------------------|
| POST /register          | Signup                       |
| POST /login             | Login                        |
| GET /users              | List all users               |
| GET /cars               | List all cars                |
| POST /cars              | Add a new car                |
| DELETE /cars/:id        | Delete a car                 |
| PUT /cars/:id           | Update a car                 |
| DELETE /user/:id        | Delete a user                |
| PUT /user/:id           | Update a user                |
| POST /booked_cars:id    | Booked a car                 |
| GET /booked_cars        | Get user booked cars         |

## Author

👤 **Denis Lafontant**

- GitHub: [@icebox827](https://github.com/icebox827)
- Twitter: [@heracles2k5](https://twitter.com/@heracles2k5)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/denis-lafontant/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/icebox827/igo-API/issues/1).

## Show your support

Give a ⭐️ if you like this project!

### Acknowledgements

- Microverse

## 📝 License

This project is [MIT](LICENSE) licensed.