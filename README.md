docker-tailon
=============

I was looking for an easy way to expose application logs via web. Tailon does that very well, so I just needed an easy way to send my logs to Tailon: Docker volumes, of course :)

To run Tailon as a docker execute the following command:

  docker run -it --rm -p 8084:8084 --volumes-from sad_yonath ipedrazas/tailon
  
