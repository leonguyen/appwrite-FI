# Appwrite on Fly.io

Production-ready Appwrite deployment template for Fly.io.

## Features

- Appwrite 1.9.x
- Fly.io optimized
- MariaDB separated
- Redis separated
- Persistent volumes
- Health checks
- GitHub Actions CI/CD
- Private Fly networking

## Quick Start

### Install Fly CLI

https://fly.io/docs/hands-on/install-flyctl/

### Login

```bash
fly auth login
```

### Create volumes

```bash
fly volumes create appwrite_data --size 20
fly volumes create mariadb_data --size 20
```

### Deploy MariaDB

```bash
cd db
fly launch --no-deploy
fly deploy
```

### Deploy Redis

```bash
cd ../redis
fly launch --no-deploy
fly deploy
```

### Deploy Appwrite

```bash
cd ../appwrite
fly launch --no-deploy
fly secrets import < ../secrets.env
fly deploy
```

## Recommended Region

Singapore (`sin`) for Southeast Asia.

## Important

Do NOT expose MariaDB publicly.

Use Fly private networking only.
