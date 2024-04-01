
# CDA.PL Folder Downloader

## Description

The CDA.PL Folder Downloader is an application designed to facilitate the downloading of files from CDA.PL folders.

Project downloaded from [GitHub](https://github.com/Bartixxx32/CDA.PL-Folder-Downloader)

<br />

## Installation

1. Download folder.

2. Create the file `./.docker/.env` using `./.docker/.env.example` as template.

3. Go inside folder `./docker` and run `docker compose up -d --build` to start containers.

<br />

## Usage

1. Run `docker start CDAFolderDownloader` to start container.

2. Then run `docker exec -it CDAFolderDownloader sh -c "./download.sh link"` to download files.

3. After download, run `docker stop CDAFolderDownloader` to stop container.
