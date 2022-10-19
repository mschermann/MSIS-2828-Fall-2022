# The network
* `docker network create danet`
* Check with `docker network ls`

# The database
* `docker build -t db ./db`
* `docker run -d --name db --network danet -p 5432:5432 db`

# The database GUI
* `docker build -t dba ./dba`
* `docker run -d --name dba --network danet -p 80:80 dba`

# Build the Django container
* `docker build -t app . `

# Create the Django project in the container
* `docker run -it -p 8000:8000 --name app --network danet -v $(pwd)/app:/app app /bin/bash`
* `django-admin startproject web`

# Connect the database
* In the `app/web/settings.py`, change the database connector to `django.db.backends.postgresql` and define the appropriate `NAME` (web), `USER` (root), `PASSWORD` (`pass`), `HOST` (`db`), and `PORT` (`5432`).
* Apply the migrations: `python /app/web/manage.py migrate`
* Check whether the Django project starts: `python /app/web/manage.py runserver`

# Alternatively
* `docker-compose up`