# Put together the basic components
* Copy `api` and `consumer` and the `docker-compose.yml` from Week 4
* Copy `db` and `dba` from Week 3

# Include the `db` in the `docker-compose.yml`
* Use the postgres image
* Create an initialization script `setup_meal_recs.sql`
* Read [this](https://github.com/docker-library/docs/blob/master/postgres/README.md#initialization-scripts) to understand how to include the initialization script (use a volume)
* Read [this](https://github.com/docker-library/docs/blob/master/postgres/README.md#where-to-store-data) to nderstand how to persist the data 
* The best way to avoid access rights issues is to use [**named volumes**](https://docs.docker.com/storage/volumes/#create-and-manage-volumes) instead of the typical approach to directly link a specific directory

# Include the `dba` in the `docker-compose.yml`
* Use the dpage/pgadmin4 image
* Use a named volume to persist the dba data.

# Change the `consumer.py` to access the db
