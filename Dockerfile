FROM alpine:latest
EXPOSE 80
RUN apk update
RUN apk add lighttpd
COPY ./www/* /var/www/localhost/htdocs/
ENTRYPOINT [ "lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf" ]

# This line can be used instead of the main entry point command for debugging purposes
# ENTRYPOINT [ "/bin/sh", "-c", "--", "while true; do sleep 30; done;" ]
