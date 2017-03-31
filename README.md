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
