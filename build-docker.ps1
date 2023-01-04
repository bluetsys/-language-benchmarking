docker build -t sample .
docker run -v $pwd/result:/app1 -it --rm sample bash

docker cp sample:/app/result ./result/.