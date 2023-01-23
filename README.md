# language-benchmarking

1에서 100000000까지의 합을 구하는 프로그램을 다양한 언어로 작성하고, 각 언어별로 실행시간을 측정한다.

## 빌드 docker
``` bash
docker build -t language-benchmarking .
```

|언어|결과|속도(초)|
|---|---|---|
|gcc|5000000050000000|00.00000|
|assembly|50000000500000000|00.00000|
|java - openjdk|5000000050000000|00.02600|
|C#|5000000050000000|00.02900|
|pascal|5000000050000000|00.03200|
|fortran - intel|5000000050000000|00.03242|
|go|5000000050000000|00.03440|
|dart|5000000050000000|00.03600|
|kotlin - java|5000000050000000|00.05400|
|swift|5000000050000000|00.08970|
|nodejs|5000000050000000|00.10000|
|fortran|5000000050000000|00.12481|
|scala|5000000050000000|00.16000|
|julia|5000000050000000|00.16115|
|rust|5000000050000000|00.30000|
|python -  pypy|5000000050000000|00.34404|
|lua|5000000050000000|00.75491|
|R|5000000050000000|02.84364|
|ruby|5000000050000000|03.60540|
|peal|5000000050000000|05.00000|
|cobol|5000000050000000|05.97000|
|python|5000000050000000|08.63253|
|basic|5e+15|10.10134|
|sql - sqlite|5000000050000000|31.24800|


## 실행 docker
``` bash
docker run -it --name language-benchmarking --rm language-benchmarking bash
```

## docker에서 실행한 결과를 호스트로 복사
``` bash
docker cp language-benchmarking:/app/. ./result/
```

## 결과 파일 만들기
``` bash
cat result/* > result.txt
```

![결과](./resource/clip20230106_1322_51_228.png)  

# docker run -it -v $(pwd)/kotlin:/kotlin --rm zenika/kotlin bash

docker build -t sample1 -f dockerfile1 .
docker run -it --rm sample1 bash
docker run -it -v $pwd/kotlin:/kotlin --rm sample1 bash

javac -d bin app.java && jar -cvmf manifest.txt aa.jar -C bin . && java -jar aa.jar


docker cp sources.list language-benchmarking:/etc/apt/sources.list
