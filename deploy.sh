#!/usr/bin/env bash
set -e

echo "Deploying MariaDB..."
cd db
fly deploy

echo "Deploying Redis..."
cd ../redis
fly deploy

echo "Deploying Appwrite..."
cd ../appwrite
fly deploy

echo "Done."
