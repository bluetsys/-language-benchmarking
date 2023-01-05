clear
docker build -t language-benchmarking .
docker run -it --rm -v $pwd/result:/result --name language-benchmarking language-benchmarking bash
#docker run -it --rm language-benchmarking bash