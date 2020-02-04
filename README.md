# Erpnext-docker
Dockerizing erpnext for production


## Run
Docker compose up by default runs bench start you can change it run using gunicorn by replacing the command under service web-app in docker-compose.yml with the following command

```/home/frappe/frappe-bench/env/bin/gunicorn -b 0.0.0.0:8000 --workers 4 --threads 4 -t 120 frappe.app:application --preload```.

```docker-compose up```


## Create site
Exec into docker container and create new site

- ```bench new-site site1.local --force --db-type postgres```

- ```bench install-app erpnext```


## Custom Build
Docker build by default pull's erpnext master branch </br>
``` docker build . -t shridh0r/erpnext:v12 --build-arg BRANCH=version-12 --build-arg IMAGE_VERSION=v12 ```

#### Build args
- [x] IMAGE_VERSION - Frappe image tagname. Check tags -> (https://hub.docker.com/r/shridh0r/frappe/tags)
- [x] BRANCH - Branch name
- [x] APP_PATH - Erpnext app path
