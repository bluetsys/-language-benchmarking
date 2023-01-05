# language-benchmarking

1에서 100000000까지의 합을 구하는 프로그램을 다양한 언어로 작성하고, 각 언어별로 실행시간을 측정한다.

## 빌드 docker
``` bash
docker build -t sample .
```

## 실행 docker
``` bash
docker run -it --name language-benchmarking --rm sample bash
```

## docker에서 실행한 결과를 호스트로 복사
``` bash
docker cp language-benchmarking:/app/. ./result/
```

## 결과 파일 만들기
``` bash
cat result/* > result.txt
```

![결과](./resource/clip20230105_1150_22_740.png)  

> C# 테스트
> 5000000050000000
> 00:00:00.0489763

>  fortran 테스트
>      5000000050000000
>   0.127251998    

> gcc 테스트
> 5000000050000000
> 0.000000

> go 테스트
> 5000000050000000
> 29.1206ms

> julia 테스트
> 5000000050000000
> 0.0418961

> assembly 테스트
> 5000000050000000
>

> nodejs 테스트
> 5000000050000000
> 0.093

> cobol 테스트
> 5000000050000000
> 0000000000005938

> java - openjdk
> 5000000050000000
> 0.27

> python 테스트
> 5000000050000000
> 9.14266079996014

> R 테스트
> 5e+15
> 2.795 0.045 2.84 0 0

> ruby 테스트
> 5000000050000000
> 4.5164804

> rust 테스트
> 5000000050000000
> 300ns


# docker run -it -v $(pwd)/kotlin:/kotlin --rm zenika/kotlin bash