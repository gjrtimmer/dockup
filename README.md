[![build status](https://gitlab.timmertech.nl/docker/dockup/badges/master/build.svg)](https://gitlab.timmertech.nl/docker/dockup/commits/master)

# dockup

Docker backup to S3 compatible storage

# Source Repositories

- [github.com](https://github.com/GJRTimmer/dockup)
- [gitlab.timmertech.nl](https://gitlab.timmertech.nl/docker/dockup)

# Installation

<details>
<summary>Install from DockerHub</summary>
<p>

Download:

```bash
docker pull datacore/dockup:latest
```

Build:

```bash
docker build -t datacore/dockup https://github.com/GJRTimmer/dockup
```

</p>
</details>

<br/>

<details>
<summary>Install from TimmerTech</summary>
<p>

Download:

```bash
docker pull registry.timmertech.nl/docker/dockup:latest
```

Build:

```bash
docker build -t datacore/dockup https://gitlab.timmertech.nl/docker/dockup
```

</p>
</details>

# Usage

The dockup container provides 2 commands `backup` and `restore` each command can be provided with options. Or environment variables can be used to configure the command.

- `backup <options> [path...]`
- `restore <options>`

The `restore` command has 2 implementations. Interactive and non-interactive. When running the container in non-interactive mode the restore command will automatically restore the latest backup. When running in interactive mode the user will be provided with a list of all backups and can choose which one to restore.

# Options

| Option               | Value                | Environment Variable              | Description            |
| -------------------- | -------------------- | --------------------------------- | ---------------------- |
| `-s3`, `--endpoint`  | scheme://$HOST:$PORT | Endpoint of address of S3 (Minio) |
| `-a`, `--access-key` | `string`             | `ACCESS_KEY`                      | S3 Access Key          |
| `-s`, `--secret-key` | `string`             | `SECRET_KEY`                      | S3 Secret Key          |
| `-b`, `--bucket`     | `string`             | `BUCKET`                          | Bucket Name            |
| `-n`, `--name`       | `string`             | `BACKUP_NAME`                     | Backup name            |
| `-v`, `--verbose`    | `0` / `1`            | `VERBOSE`                         | Enable verbose logging |
| `-h`, `--help`       | -                    | -                                 | Show help              |

# Examples
