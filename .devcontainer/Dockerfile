FROM alpine:3.17 as base-environment

ENV TZ=US/Eastern

RUN apk update
RUN apk add nodejs jq libxml2-dev libxslt hugo bash openjdk17-jre-headless git

FROM base-environment as deps

WORKDIR /opt/oscal

RUN apk add npm unzip wget dpkg maven

# OSCAL core repository dependencies
ADD ./oscal/build/package.json .
ADD ./oscal/build/package-lock.json .
RUN npm ci

ARG saxonversion=10.6
RUN mvn org.apache.maven.plugins:maven-dependency-plugin:2.10:get -DartifactId=Saxon-HE -DgroupId=net.sf.saxon -Dversion=${saxonversion}

WORKDIR /tmp

ARG calabashversion=1.2.5-100
ENV CALABASH_HOME=/opt/calabash
RUN wget https://github.com/ndw/xmlcalabash1/releases/download/${calabashversion}/xmlcalabash-${calabashversion}.zip
RUN mkdir -p "${CALABASH_HOME}"
RUN unzip -d "${CALABASH_HOME}" "xmlcalabash-${calabashversion}.zip"
RUN f=`ls -d "${CALABASH_HOME}"/*| xargs` && mv "${CALABASH_HOME}"/*/* "${CALABASH_HOME}" && rmdir "${f}"

ARG oscalcliversion=0.3.3
RUN wget https://repo1.maven.org/maven2/gov/nist/secauto/oscal/tools/oscal-cli/cli-core/${oscalcliversion}/cli-core-${oscalcliversion}-oscal-cli.zip
RUN mkdir -p /opt/oscal-cli
RUN unzip -d /opt/oscal-cli cli-core-${oscalcliversion}-oscal-cli.zip
RUN chmod +x /opt/oscal-cli/bin/oscal-cli

FROM base-environment as final

COPY --from=deps /opt/oscal /opt/oscal
COPY --from=deps /opt/calabash /opt/calabash
COPY --from=deps /opt/oscal-cli /opt/oscal-cli

ENV SAXON_HOME=/opt/oscal
ENV CALABASH_HOME=${SAXON_HOME}
ENV PATH=/opt/oscal-cli/bin:/oscal/build/metaschema/support/xspec/bin:/opt/oscal/node_modules/.bin:${PATH}

VOLUME ["/oscal"]
WORKDIR /oscal
RUN git config --global --add safe.directory /oscal

ENTRYPOINT ["/bin/bash"]