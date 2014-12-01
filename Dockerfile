FROM python:2

RUN pip install tailon

RUN mkdir /app
ADD run.sh /app/run.sh
RUN chmod +x /app/run.sh

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 8084

CMD ["/app/run.sh"]

# docker run -it --rm -p 8084:8084 --volumes-from boring_mcclintock ipedrazas/tailon
