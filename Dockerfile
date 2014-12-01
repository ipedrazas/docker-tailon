FROM python:2

RUN pip install tailon

RUN mkdir /tailon
ADD run.sh /tailon/run.sh
RUN chmod +x /tailon/run.sh

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 8084

ENTRYPOINT "/tailon"

CMD ["/tailon/run.sh"]

# docker run -it --rm -p 8084:8084 --volumes-from boring_mcclintock ipedrazas/tailon
