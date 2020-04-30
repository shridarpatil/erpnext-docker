# Erpnext-docker
Dockerizing erpnext for production
```
git clone https://github.com/shridarpatil/erpnext-docker.git
cd  erpnext-docker

docker-compose up
docker exec -it erpnext-docker_web-app_1 /bin/sh

bench reinstall --admin-password r00t --mariadb-root-username root --mariadb-root-password root
```
open http://localhost:8005

# Customizing docker

## Pull docker image
```docker pull shridh0r/erpnext:tagname```

## Run
Docker compose up by default runs bench start you can change it to run using gunicorn by replacing the command under service web-app in docker-compose.yml file with the following command

```/home/frappe/frappe-bench/env/bin/gunicorn -b 0.0.0.0:8000 --workers 4 --threads 4 -t 120 frappe.app:application --preload```.

```docker-compose up```


## Create site
Exec into docker container and create new site

- ```bench new-site site1.local --force --db-type postgres```

- ```bench install-app erpnext```

- Visit `http://localhost:8000`.

## Custom Build
Docker build by default pull's erpnext master branch </br>
``` docker build . -t shridh0r/erpnext:v12 --build-arg BRANCH=version-12 --build-arg IMAGE_VERSION=v12 ```

#### Build args
- [x] IMAGE_VERSION - Frappe image tagname. Check tags -> (https://hub.docker.com/r/shridh0r/erpnext/tags)
- [x] BRANCH - Branch name
- [x] APP_PATH - Erpnext app path
