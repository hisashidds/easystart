FROM openjdk:8-jdk-alpine
RUN apk add --update \
    apache-ant --update-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    --allow-untrusted \
    bash \
    git \
    zip \
    curl && \
    curl -o /var/tmp/ivy.zip https://downloads.apache.org/ant/ivy/2.5.0/apache-ivy-2.5.0-bin.zip && \
    unzip /var/tmp/ivy.zip -d /var/tmp && \
    cp /var/tmp/apache-ivy-2.5.0/ivy-2.5.0.jar /usr/share/java/apache-ant/lib && \
    wget -P /usr/share/java/apache-ant/lib https://repo.maven.apache.org/maven2/org/codehaus/cargo/cargo-core-uberjar/1.9.3/cargo-core-uberjar-1.9.3.jar && \
    wget -P /usr/share/java/apache-ant/lib https://repo.maven.apache.org/maven2/org/codehaus/cargo/cargo-ant/1.9.3/cargo-ant-1.9.3.jar && \
    wget -P /usr/share/java/apache-ant/lib https://repo.maven.apache.org/maven2/commons-discovery/commons-discovery/0.5/commons-discovery-0.5.jar && \
    wget -P /usr/share/java/apache-ant/lib https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.jar && \
    rm -r /var/tmp \
    && rm -rf /var/cache/apk/*

ENV ANT_HOME /usr/share/java/apache-ant
ENV PATH $PATH:$ANT_HOME/bin