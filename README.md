# Erpnext-docker
Dockerizing erpnext for production


## Build
Docker compose buld by default pull erpnext master branch </br>
``` docker build . -t shridh0r/erpnext:v12 --build-arg BRANCH=version-12 --build-arg IMAGE_VERSION=v12 ```

#### Build args
- [x] IMAGE_VERSION - Frappe image tagname. Check tags -> (https://hub.docker.com/r/shridh0r/frappe/tags)
- [x] BRANCH - Branch name
- [x] APP_PATH - Erpnext app path


Set frappe-path/branch dynamically by passing build-arg
```
docker-compose build --build-arg FRAPPE_PATH=https://github.com/erpnext/erpnext.git --build-arg IMAGE_VERSION=v12
```

## Run
```docker-compose up```

## Create site
Create new-site
```
bench new-site site1.local --force --db-type postgres --db-root-username postgres --db-root-password root
```
