# mysite

## A Django Blog Application

### Features

- create and manage blog posts

- apply tags to posts and filter posts by tags

- markdown syntax support for blog posts

- blog posts full-text search

- share posts by email

### SetUp Instructions

Install [git](https://git-scm.com/downloads) and [docker](https://docs.docker.com/engine/install/)

Clone this repository

##### Gmail Setup

- Create or signin to your gmail account

- Open [https://myaccount.google.com/security](https://myaccount.google.com/security) to enable 2-step verification for your account

- Access [https://myaccount.google.com/apppasswords](https://myaccount.google.com/apppasswords) to creaate an app password. \*_Make sure to copy the generated password._

Run the following command inside the repository root to create an environment variable file

```bash
$ cp src/.env.example src/.env
```

Make the following changes to the .env file

- Replace EMAIL_HOST_USER with `your-gmail-email-address`

- Replace EMAIL_HOST_PASSWORD with a your newly created app password

- Replace DEFAULT_FROM_EMAIL with "My Blog <`your-gmail-email-address`>"

##### Run Docker

Run the following command to start the docker container(s)

```bash
$ docker compose up
```

##### Seed Database Data

In another terminal, run the following commands

```bash
$ docker compose exec web_run bash
```

Move into the django source code directory

```bash
$ cd src
```

Seed the database

```bash
$ python manage.py loaddata mysite_data.json
```

### Access the Application

- Access the blog admin at [http://127.0.0.1/admin](http://127.0.0.1/admin)

  `Username: root`

  `Password: 1234pass`

- Access the blog site at [http://127.0.0.1/blog](http://127.0.0.1/blog)
