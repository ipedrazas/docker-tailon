docker-tailon
=============

I was looking for an easy way to expose application logs via web. Tailon does that very well, so I just needed an easy way to send my logs to Tailon: Docker volumes, of course :)

First run a conatiner you want to capture the logs from. If your conatiner was not given a name, grab the name and pass it to the Tailon container:

```
docker run -it --rm -p 8084:8084 --volumes-from CONTAINER_NAME ipedrazas/tailon
```

Access your web console in port 8084
  
