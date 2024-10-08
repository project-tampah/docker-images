# Docker images

- [Postgres AWS backup](https://hub.docker.com/r/projecttampah/postgres-backup)

## Tags

| Postgres    |  Tag  |
| ----------- | ----- |
| Postgres 14 | 1.1.0 |
| Postgres 15 | 2.1.0 |
| Postgres 16 | 3.0.0 |

## Postgres Backup

### Environment Variables

| Variable                | Description                                       |
| ----------------------- | ------------------------------------------------- |
| POSTGRES_HOST           | Host from postgres server (e.g. `postgres`)       |
| POSTGRES_PORT           | Port from postgres server (e.g. `5432`)           |
| POSTGRES_USER           | User from postgres server (e.g. `postgres`)       |
| POSTGRES_PASSWORD       | Password from postgres server (e.g. `mysecretpw`) |
| POSTGRES_DB             | Datatabase name to backup (e.g. `mydatabase`)     |
| AWS_ACCESS_KEY_ID       | AWS S3 Key id                                     |
| AWS_SECRET_ACCESS_KEY   | AWS S3 Access key id                              |
| AWS_STORAGE_BUCKET_NAME | AWS S3 Bucket name                                |
| HEARTBEAT_URL           | Monitoring Heartbeat Url                          |

### Build & Push

```bash
docker buildx build --platform linux/amd64 -t projecttampah/postgres-backup:2.1.0 -f ./postgres-backup/Dockerfile postgres-backup --push
```
