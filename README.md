This is a tool that installs and runs a Cube World Alpha server in a [Docker](https://www.docker.com/) container.

This image does the following:
- Installs game to `/data` from [The Internet Archive](https://archive.org/details/CubeWorldAlpha)
- Connect users via lazy-startup proxy
- Automatically shuts down the server after lack of network activity
