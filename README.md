# Erpnext-docker
Dockerizing erpnext for production


## Build
Docker compose buld by default pull erpnext master branch </br>
``` docker build . -t shridh0r/erpnext:v12 --build-arg BRANCH=version-12 --build-arg IMAGE_VERSION=v12 ```

#### Build args
- [x] IMAGE_VERSION - Frappe image tagname. Check tags -> (https://hub.docker.com/r/shridh0r/frappe/tags)
- [x] BRANCH - Branch name
- [x] APP_PATH - Erpnext app path


## Run
```docker-compose up```

## Create site
Exec into docker container and create new site

Create new-site
```
bench new-site site1.local --force --db-type postgres
```
```
bench install-app erpnext
```
