#!/bin/sh

build(){
#    cd workplace
    # frappe repo path
    echo "[i] ERP repo: $APP_PATH"

    # frappe branch
    echo "[i] App branch: $BRANCH"

    # Python Version
    bench get-app --branch $BRANCH erpnext $APP_PATH
#    bench install-app erpnext
}

"$@"
