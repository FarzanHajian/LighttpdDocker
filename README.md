# LighttpdDocker

This is a simple and lightweight [Lighttpd](https://www.lighttpd.net) Docker image. The image is based on the Alpine Linux image.

No change is done to the default configuration file (located at `/etc/lighttpd/lighttpd.conf` by default), but check out [Lighttpd Wiki](https://redmine.lighttpd.net/projects/lighttpd/wiki/Docs_ConfigurationOptions) to learn about configuration options available to Lighttpd.

To build the image with your static website, copy your static website files into `www/` and use the Docker build command to build the image.

The following commands are typical Docker commands to use.
- Building the image:
    - `docker build -t mylighttpd:latest .`
- Running a new container and binding it to the host's port 8080 (browse to http://localhost:8080 to check the result):
    - `docker run --name myserver -p8080:80 -d mylighttpd:latest`
- Logging into the running container (probably to debug):
    - `docker exec -it myserver /bin/sh`
- Getting rid of the container:
    - `docker stop myserver`
    - `docker rm myserver`