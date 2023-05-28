# Setup Virtuoso with COVID Pub Graph


Create the necessary folders for virtuoso

```bash
mkdir -p ${PWD}/virtuoso/database
mkdir -p ${PWD}/virtuoso/settings
mkdir -p ${PWD}/virtuoso/vsp
mkdir -p ${PWD}/virtuoso/import
```


Use the files

```
urls.2020-09-23.txt
urls.2020-12-07.txt
urls.2021-03-11.txt
urls.2021-11-14.txt
```

to download inside the `/import` folder the various snapshot, each one within the corresponding subfolder, e.g., `/virtuoso/import/2020-09-23`

Start virtuoso, stop it, and replace the `virtuoso.ini` file with the provided one (pay attention to the memory configuration.


```bash
docker run --name covid-vos  -d \
            --volume ${PWD}/virtuoso/database:/database \
            --volume ${PWD}/virtuoso/settings:/settings \
            --volume ${PWD}/virtuoso/vsp:/opt/virtuoso-opensource/vsp \
            --volume ${PWD}/virtuoso/import:/import  \
            --env DBA_PASSWORD=abcdefg \
            --restart unless-stopped \
            -t -p 8891:8890 -i openlink/virtuoso-opensource-7:latest



docker stop covid-vos


sudo cp virtuoso.ini  ${PWD}/virtuoso/database/virtuoso.ini

```


move the load scripts, e.g., `import-2021-11-14.sql` inside `/virtuoso/import`, then

**  Load the data from `/import` dir**

```bash
docker exec -it covid-vos /opt/virtuoso-opensource/bin/isql 1111 dba abcdefg /import/import-2020-09-23.sql
```

note the `DBA_PASSWORD` is `abcdefg`



