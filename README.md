
# CDA.PL Folder Downloader

## Description

The CDA.PL Folder Downloader is an application designed to facilitate the downloading of files from CDA.PL folders.

Project downloaded from [GitHub](https://github.com/Bartixxx32/CDA.PL-Folder-Downloader)

<br />

## Installation

1. Download folder.

2. Create the file `./.docker/.env` using `./.docker/.env.example` as template.

3. Go inside folder `./docker` and run `docker compose up -d --build` to build container.

<br />

## Usage

1. Run `docker start CDAFolderDownloader` to start container.

2. Then run `docker exec -it CDAFolderDownloader sh -c "./download.sh link"` to download files.

3. In some cases, there are directories that are visible only after logging in. In this case, you need to create a file `app/list.txt` and save the download links in it.
  <br />The fastest way to download links is by typing in the browser console:

   ```js
   jQuery('a.link-title-visit').each(function(i, v){
     console.log('https://www.cda.pl' + $(this).attr('href'));
   });
   ```
   
   After creating the file `app/list.txt`, run `docker exec -it CDAFolderDownloader sh -c "./download.sh"` to download the files.

4. After download, run `docker stop CDAFolderDownloader` to stop container.

<br />

## Translations

<details>
  <summary><b>Polish</b></summary>

  <br />

  CDA.PL Folder Downloader jest aplikacją przeznaczoną do ułatwiania pobierania plików z folderów CDA.PL.

  Projekt został pobrany z [GitHub](https://github.com/Bartixxx32/CDA.PL-Folder-Downloader)

  <br />

  ## Instalacja

  1. Pobierz folder.

  2. Utwórz plik `./.docker/.env` używając `./.docker/.env.example` jako szablonu.

  3. Wejdź do folderu `./docker` i uruchom `docker compose up -d --build`, aby utworzyć kontener.

  <br />

  ## Użycie

  1. Uruchom `docker start CDAFolderDownloader`, aby uruchomić kontener.

  2. Następnie uruchom `docker exec -it CDAFolderDownloader sh -c "./download.sh link"`, aby pobrać pliki.

  3. Zdarzają się katalogi, które są widoczne tylko po zalogowaniu, w tym przypadku trzeba utworzyć plik `app/list.txt` i zapisac w nim linki do pobrania.
     <br />Najszybszy sposób do pobrania linków to wpisanie w konsoli przeglądarki:

     ```js
     jQuery('a.link-title-visit').each(function(i, v){
       console.log('https://www.cda.pl' + $(this).attr('href'));
     });
     ```

     Po utworzeniu pliku `app/list.txt` uruchom `docker exec -it CDAFolderDownloader sh -c "./download.sh"`, aby pobrać pliki.

  4. Po pobraniu plików, uruchom `docker stop CDAFolderDownloader`, aby zatrzymać kontener.

</details>