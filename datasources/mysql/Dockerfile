FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY ontop/ontop-cli-5.4.0 /app/ontop
COPY jdbc/mysql-connector-j-8.3.0.jar /app/ontop/jdbc/


ENTRYPOINT ["/app/ontop/ontop"]
CMD ["endpoint", \
     "--ontology=/app/ontology.owl", \
     "--mapping=/app/mapping.ttl", \
     "--properties=/app/ontop.properties", \
     "--port=8080"]
