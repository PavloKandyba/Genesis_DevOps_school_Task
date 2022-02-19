**Tasks for passing to Genesis DevOps school**

Note: Assuming the Linux machine has installed all needed packages to run command and YAML file.
Then skip step #1 and go to the second part.
if you do not have installed one of the following packages please run prerequesting.sh first:**

-curl
-git
-Docker
-Dcoker-compose

**#1**
``` bash
sudo apt install git

# Download a wordpress docker-compose example

git clone https://github.com/
cd wordpress-docker-compose && docker-compose up -d --build

# Run prerequesting.sh

sh prerequesting.sh
```

**#2**
The following part is almost one command to run complete install and setup:

``` bash
# Download a wordpress docker-compose example
git clone https://github.com/
cd wordpress-docker-compose && docker-compose up -d --build
```

**#3**
Visit your site at <http://localhost> and your database via phpMyAdmin
at <http://localhost:8080>.

Default identification for your wordpress website admin:

  - `Username: wordpress` and
  - `Password: wordpress`

Default identification for the phpMyAdmin interface:

  - `Username: root` and
  - `Password: password`




**Useful commands**:

``` bash
# Stop and remove containers
docker-compose down
# Build, and start the wordpress website
docker-compose up -d --build
# Reset everything
docker-compose down
rm -rf certs/* certs-data/* logs/nginx/* mysql/* wordpress/*
```


