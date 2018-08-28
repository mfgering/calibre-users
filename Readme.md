Introduction
============

The goal for this image is to manage the database for Calibre users. Normally, you run this image/container before
running the Calibre server, *mgering/calibre-server*. The user database is persisted and shared between these two images
by a persistent volume at */root/.config/calibre*.


Operation
=========

Then run this image:

```
docker run -it -v calibre-config:/root/.config/calibre mgering/calibre-users
```

Details for the above command:
* The *-it* flags make the container interactive
* The *calibre-config* volume is used to hold the configuration, including the user database.

After initializing the user database, you can run the *mgering/calibre-server* image/container to expose the library via a web interface. If you want to modify the user database, you need to rerun this image/container and restart the *mgering/calibre-server* image.
