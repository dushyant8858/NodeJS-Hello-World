docker stop nodejs-hello-world
docker rm nodejs-hello-world
docker build -t dushyant8858/nodejs-hello-world:DD .
docker run --name nodejs-hello-world -p 8080:8080 -d dushyant8858/nodejs-hello-world:DD
docker push dushyant8858/nodejs-hello-world:DD



git add . 
git commit -m "NodeJS-Hello-World"
git push

