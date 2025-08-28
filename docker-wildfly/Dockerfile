FROM quay.io/wildfly/wildfly:latest

# Copie des fichiers avec permissions explicites (évite les problèmes Windows)
COPY --chown=jboss:jboss deployment/fin-query-1.0-SNAPSHOT.war /opt/jboss/wildfly/standalone/deployments/
COPY --chown=jboss:jboss modules/com/mysql/main /opt/jboss/wildfly/modules/com/mysql/main/
COPY --chown=jboss:jboss configuration/standalone-clean.xml /opt/jboss/wildfly/standalone/configuration/standalone.xml

# Script d'entrée avec permissions UNIX forcées
COPY --chmod=755 entrypoint.sh /opt/jboss/entrypoint.sh

# Création de l'utilisateur admin
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent


ENTRYPOINT ["/opt/jboss/entrypoint.sh"]