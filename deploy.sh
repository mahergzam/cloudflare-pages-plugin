#!/bin/sh
set -xe

# Clones the public git repo and checkout to a branch
git clone ${PLUGIN_REPO_URL} .
git checkout ${PLUGIN_BRANCH}

# Install Wrangler
npm install
./node_modules/.bin/gatsby build
npm install -g wrangler --unsafe-perm=true

# Deploy to CloudFlare Pages
wrangler pages publish ${PLUGIN_PATH} --project-name=${PLUGIN_PROJECT_NAME} --branch=${PLUGIN_BRANCH}