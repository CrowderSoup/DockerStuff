# DockerFiles

This repo will house some basic DockerFiles / Docker Compose files that will
help me get a development environment spun up quickly.

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

## License

MIT License

Copyright (c) 2017 Aaron Crowder

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
