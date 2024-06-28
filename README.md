# kue-dashboard

Simple Docker container for [kue's](https://github.com/Automattic/kue) web UI.

## Usage

Available on Docker Hub as [vytein/kue-dashboard](https://hub.docker.com/r/vytein/kue-dashboard).

    $ docker run -e REDIS_URL=redis://127.0.0.1:6379 -t vytein/kue-dashboard

## Development

    $ make build
    $ make push

## License

[BSD 3-Clause](https://github.com/pavlovml/kue-dashboard/blob/master/LICENSE)
