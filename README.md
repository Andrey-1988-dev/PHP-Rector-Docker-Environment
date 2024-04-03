# PHP-Rector-Docker-Environment

This repository contains a Docker setup for a PHP development environment that includes Rector, a tool for automated refactoring and code quality improvement.

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisites

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

List the different parameters available to your container

```bash
docker-compose down # Stop and remove containers, networks
docker-compose build # Build or rebuild services
docker-compose up -d # Create and start containers in detached mode
docker exec -it rector-app-1 bash # Enter the container
/app/vendor/bin/rector process /app/src/ --dry-run # Run Rector in dry-run mode
/app/vendor/bin/rector process /app/src/ # Run Rector to refactor the code
```

## License

This project is distributed under the GNU GPL v3.0 license. You can freely use, modify and distribute this code, but you must keep the authorship of the original code and indicate the license. You must also share your changes under the same license. You can read more about the license in the file LICENSE.

## Authors

This project was created by [Andrey Yurkevich](https://github.com/Andrey-1988-dev "Andrey Yurkevich"). If you have any questions or suggestions about this project, please feel free to contact me.