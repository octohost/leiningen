FROM octohost/openjdk7


RUN apt-get update && apt-get install -y curl && curl -s https://raw.github.com/technomancy/leiningen/stable/bin/lein --output /usr/bin/lein && chmod 755 /usr/bin/lein
RUN export LEIN_ROOT="true" && lein
