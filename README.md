# mysite

## A Django Blog Application

### Features

- create and manage blog posts

- apply tags to posts and filter posts by tags

- markdown syntax support for blog posts

- blog posts full-text search

### SetUp Instructions

Install [git](https://git-scm.com/downloads) and [docker](https://docs.docker.com/engine/install/)

Clone this repository

Inside the repository root, run the following command to start the docker container(s)

```bash
$ docker compose up
```

In another terminal, run the following commands

```bash
$ docker compose exec web_run bash
```

Move into the django application directory

```bash
$ cd django
```

Create superuser

```bash
$ python manage.py createsuperuser
```

Seed the database

```bash
$ python manage.py loaddata mysite_data.json
```

### Access the Application

- Access the blog admin at [127.0.0.1:8000/admin](127.0.0.1:8000/admin)

- Access the blog site at [127.0.0.1:8000/blog](127.0.0.1:8000/blog)
