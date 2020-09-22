FROM sonarqube:8.3.1-community

ADD sonar.mv.db /opt/sonarqube/data/sonar.mv.db
RUN \
    wget -O extensions/plugins/sonarqube-community-branch-plugin-1.4.0.jar \
        https://github.com/mc1arke/sonarqube-community-branch-plugin/releases/download/1.4.0/sonarqube-community-branch-plugin-1.4.0.jar \
    && ln -s extensions/plugins/sonarqube-community-branch-plugin-1.4.0.jar \
        lib/common/sonarqube-community-branch-plugin-1.4.0.jar \
    && wget -O extensions/plugins/sonar-cnes-report-3.2.2.jar \
        https://github.com/cnescatlab/sonar-cnes-report/releases/download/3.2.2/sonar-cnes-report-3.2.2.jar \
    && wget -O extensions/plugins/sonar-build-breaker-plugin-2.3.1.347.jar \
        https://github.com/adnovum/sonar-build-breaker/releases/download/2.3.1/sonar-build-breaker-plugin-2.3.1.347.jar

