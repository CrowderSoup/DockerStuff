# DockerStuff

DockerStuff is a collection of DockerFiles / Docker Compose scripts to help me
spin up containers that I need frequently while working. I'm sharing it with
you because it's useful to me. Feel free to fork and submit PRs with your own
setup!

## MySQL

This is just a simple `docker-compose.yml` file that will help you spin up
a MySQL server. It creates a default database (`dev`) for you to use.

To start it:
```
cd mysql && ./start.sh
```

This will start the MySQL container in daemon mode. If you do `docker ps` you
should see it listed. I have mapped it to `localhost:32773` because
reasons<sup>tm</sup>. It also creates a directory called `data` which allows
this container to maintain state between starting / stopping.

## PostgreSQL

This will spin up a postgres server for you, with the default PG port open
(5432). The data volume is stored in `./postgres/data` so you can tear down and
delete the container without blowing away the data. If you **need** to delete
the data, simply tear down the container, delete that directory, and start it
back up.

## Static Server

This will spin up an Nginx server pointed to a directory of your choosing. It
is not configured for anything except static sites.

To start it:
```
static-file-server/start.sh -d <YourStaticSiteDirectory> -p <WhateverPortYouWant>
```

This will start up a server that will server whatever directory you point it to
on whatever port you specify. This makes testing static sites on a robust
server a bit easier.

## Couchbase

Really simple, and basically the same setup as the MySQL server. It will create
a Couchbase server for you to use at the standard couchbase ports (8091).

To start it:
```
cd couchbase && ./start.sh
```

Then go to [http://localhost:8091](http://localhost:8091) to finish setup.

## RabbitMQ

Just your basic RabbitMQ setup. Should be sufficient for local dev/testing
purposes.

To start it:
```
cd rabbit && ./start.sh
```

## Redis

Default / basic Redis server. Default port (6379) mapped. Data is mapped to
volume `./data` for persistence. This directory is created when you run the
start script.

To start:
```
cd redis && ./start.sh
```

## memcached

Default / basic memcached server. Default port (11211) is mapped.

To start:
```
cd memcached && ./start.sh
```
