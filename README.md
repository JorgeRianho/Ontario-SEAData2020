# Ontario-SEAData2020

Repositorio del experimento presentado en **"Optimizing Federated Queries Based on the Data Lake Physical Design" (SEA Data 2020)**.

Este README esta orientado a usuarios que quieran ejecutar rapidamente los endpoints SPARQL de Ontop sobre las 10 bases del proyecto, tanto en version **MySQL** como en version **PostgreSQL**.

## Requisitos

- Docker + Docker Compose plugin (`docker compose`)
- 7-Zip (`7z`) para extraer archivos partidos (`.zip.001`, `.zip.002`, ...)
- Sistema Linux/WSL/macOS con al menos 16 GB RAM recomendados

## Estructura relevante

- `datasources/tsv/`: datos tabulares (incluye archivos comprimidos)
- `datasources/mysql/docker-compose.yml`: stack de MySQL + Ontop
- `datasources/mysql/docker-compose-p.yml`: stack de PostgreSQL + Ontop
- `datasources/mysql/ontop-configs/<db>/`: configuracion Ontop por base (`mapping.ttl`, `ontology.owl`, `ontop.properties`)

## 1) Preparar datos comprimidos

En GitHub los datos pueden venir comprimidos en partes (`tsv.zip.001`, `tsv.zip.002`, ...).

Desde la raiz del proyecto (`Ontario-SEAData2020`):

```bash
cd datasources/tsv
7z x tsv.zip.001 -y
cd ../..
```

Esto recrea las carpetas `affymetrix`, `chebi`, `dailymed`, `diseasome`, `drugbank`, `kegg`, `linkedct`, `medicare`, `sider`, `tcga` con sus `.tsv`.

## 2) Levantar version MySQL + Ontop (10 endpoints)

```bash
cd datasources/mysql
docker compose up -d --build
```

Comprobar estado:

```bash
docker compose ps
```

Debes ver:

- `mysql_*_idx` en `healthy`
- `ontop_*` en `Up`

## 3) Levantar version PostgreSQL + Ontop (10 endpoints)

La version PostgreSQL usa:

- archivo `datasources/mysql/docker-compose-p.yml`
- PostgreSQL en puertos `9100`-`9109`
- endpoints Ontop tambien en `8080`-`8089`

Comando:

```bash
cd datasources/mysql
docker compose -f docker-compose-p.yml up -d --build
```

Comprobar estado:

```bash
docker compose -f docker-compose-p.yml ps
```

Debes ver:

- `postgres_*_idx` en `healthy`
- `ontop_*` en `Up`

## 4) Nota importante de puertos (MySQL vs PostgreSQL)

Ambas variantes publican Ontop en los mismos puertos `8080`-`8089`.

- Si quieres usar MySQL, levanta `docker-compose.yml`.
- Si quieres usar PostgreSQL, levanta `docker-compose-p.yml`.
- No levantes ambas variantes de Ontop al mismo tiempo en la misma maquina, porque chocan los puertos.

## 5) Puertos de los endpoints SPARQL

- `affymetrix`: `http://localhost:8080/sparql`
- `chebi`: `http://localhost:8081/sparql`
- `dailymed`: `http://localhost:8082/sparql`
- `diseasome`: `http://localhost:8083/sparql`
- `drugbank`: `http://localhost:8084/sparql`
- `kegg`: `http://localhost:8085/sparql`
- `linkedct`: `http://localhost:8086/sparql`
- `medicare`: `http://localhost:8087/sparql`
- `sider`: `http://localhost:8088/sparql`
- `tcga`: `http://localhost:8089/sparql`

## 6) Probar un endpoint rapidamente

Ejemplo (Affymetrix):

```bash
curl -G "http://localhost:8080/sparql" \
  --data-urlencode "query=ASK { ?s ?p ?o }"
```

Ejemplo (Drugbank):

```bash
curl -G "http://localhost:8084/sparql" \
  --data-urlencode "query=SELECT ?s ?p ?o WHERE { ?s ?p ?o } LIMIT 5"
```

## 7) Ver logs

Todos los logs:

```bash
docker compose logs -f
```

Solo un servicio:

```bash
docker compose logs -f ontop_drugbank
docker compose logs -f mysql_drugbank_idx
```

Para PostgreSQL:

```bash
docker compose -f docker-compose-p.yml logs -f
docker compose -f docker-compose-p.yml logs -f ontop_drugbank
docker compose -f docker-compose-p.yml logs -f postgres_drugbank_idx
```

## 8) Parar o reiniciar

Parar stack:

```bash
docker compose down
```

Reiniciar solo un endpoint:

```bash
docker compose restart ontop_kegg
```

Parar variante PostgreSQL:

```bash
docker compose -f docker-compose-p.yml down
```

## 9) Problemas comunes

### `ontop_*` se reinicia con `Cannot find relation ...`

El mapping referencia una tabla que no existe en la BD cargada.

- Revisa: `datasources/mysql/ontop-configs/<db>/mapping.ttl`
- Verifica tablas reales:

```bash
docker compose exec mysql_<db>_idx mysql -uontop -pontop123 -e "SHOW TABLES" <db>
```

- Ajusta el `mapping.ttl` y reinicia ese endpoint:

```bash
docker compose restart ontop_<db>
```

En PostgreSQL, equivalente:

```bash
docker compose -f docker-compose-p.yml exec postgres_<db>_idx psql -U postgres -d <db> -c "\dt"
docker compose -f docker-compose-p.yml restart ontop_<db>
```

### MySQL tarda mucho en `tcga`

`tcga` es grande y puede tardar bastante en inicializar/importar. Es normal que `ontop_tcga` tarde mas en estar operativo.

### Quiero reimportar desde cero una BD

```bash
docker compose stop mysql_<db>_idx ontop_<db>
# limpiar contenido de datasources/mysql/volumes/<db>
docker compose up -d mysql_<db>_idx ontop_<db>
```

## 10) Ejecutar el experimento original

El script disponible es:

- `experiment.sh`

Antes de ejecutarlo, confirma que las rutas y nombres de carpeta usados por el script coinciden con tu entorno local.
