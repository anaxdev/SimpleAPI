# RESTful API for User Management

This is a simple RESTful API project that manages users (create, get, update, delete). This project uses Node.js, Express, and Mongoose.

## Get Started

Clone the repo:

```bash
git clone https://github.com/anaxdev/SimpleAPI.git
cd SimpleAPI
```

### 1. Build a production docker image and deploy:

Build the production image:

```bash
docker-compose build
```

Deploy in docker container:

```bash
docker-compose build
```


### 2. Run on local repository using development commands:

Install the dependencies:

```bash
yarn install
```

Set the environment variables:

```bash
cp .env.example .env

# open .env and modify the environment variables (if needed)
```

Run database (mongodb):

```bash
docker-compose up -d mongodb
```

Run backend:

```bash
# Running in development mode:
yarn dev

# running in production mode:
yarn start

# Running Unit Test:
yarn test
```

### 3. Run on local repository using docker container:

```bash
# run docker container in development mode
yarn docker:dev

# run all tests in a docker container
yarn docker:test
```


## How to test

### API Documentation

To view the list of available APIs, run the server and go to `http://localhost:3000/v1/docs` in your browser. It's swagger page.

### API Endpoints

List of available api endpoints:

**User routes**:\
`POST /v1/users` - create a user\
`GET /v1/users` - get all users\
`GET /v1/users/:userId` - get user\
`PATCH /v1/users/:userId` - update user\
`DELETE /v1/users/:userId` - delete user

