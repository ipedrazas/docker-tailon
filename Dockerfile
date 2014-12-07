FROM python:2

RUN pip install tailon

RUN mkdir /tailon
ADD run.sh /tailon/run.sh
RUN chmod +x /tailon/run.sh

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 8084

WORKDIR "/tailon"

CMD ["/tailon/run.sh"]

# docker run -it --rm -p 8084:8084 -e "BASE=/PATH_TO_LOG /PATH_TO_LOG" --volumes-from CONTAINER_NAME ipedrazas/tailon 
