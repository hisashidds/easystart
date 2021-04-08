FROM openjdk:8-jdk-alpine
RUN apk add --update \
    apache-ant --update-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    --allow-untrusted \
    bash \
    git \
    zip \
    curl && \
    curl -o /var/tmp/ivy.zip https://www.apache.org/dist/ant/ivy/2.4.0/apache-ivy-2.4.0-bin.zip && \
    unzip /var/tmp/ivy.zip -d /var/tmp && \
    cp /var/tmp/apache-ivy-2.4.0/ivy-2.4.0.jar /usr/share/java/apache-ant/lib && \
    rm -r /var/tmp \
    && rm -rf /var/cache/apk/*

ENV ANT_HOME /usr/share/java/apache-ant
ENV PATH $PATH:$ANT_HOME/bin