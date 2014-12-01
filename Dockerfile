FROM python:3-onbuild

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 8084

ADD run.sh

CMD ["run.sh"]


# docker run -it --rm -p 8084:8084 --volumes-from boring_mcclintock ipedrazas/tailon
# docker run -it --rm -p 8084:8084 -e "BASELOG=/var/log/flask-log/*" --volumes-from boring_mcclintock ipedrazas/tailon
