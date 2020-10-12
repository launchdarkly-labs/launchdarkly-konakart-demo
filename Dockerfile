FROM konakart/konakart_9200_ce
LABEL maintainer="sse@launchdarkly.com"
EXPOSE 8780
WORKDIR /usr/local/konakart/custom

# `files` subdirectory is intended to mirror the KonaKart install directory
COPY ./files/custom/appn/src/com/konakart/actions/BaseAction.java ./appn/src/com/konakart/actions/BaseAction.java 
COPY ./files/custom/build.xml build.xml
COPY ./files/custom/lib/launchdarkly-java-server-sdk-5.0.2.jar lib/launchdarkly-java-server-sdk-5.0.2.jar
COPY ./files/custom/lib/slf4j-api-1.7.21.jar lib/slf4j-api-1.7.21.jar

RUN ./bin/kkant -f ./build.xml build
RUN ./bin/kkant -f ./build.xml copy_jars
#ENTRYPOINT ["/usr/local/konakart/bin/startkonakart.sh"]