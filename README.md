# Disque docker image with authentification

The Dockerfile for this image is based on [richnorth/disque](https://hub.docker.com/r/richnorth/disque/).

We added support for authentification.
Supply your password for disque-server as the `DISQUE_PASS` environment variable, and the `disque.conf` file will be generated with the line:

```
requirepass yourpasswordhere
```

If `DISQUE_PASS` is not passed, disque-server will be started without authentication.

This image is in Docker Hub: https://hub.docker.com/r/gitbook/disque-with-auth/