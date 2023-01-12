FROM ubuntu:22.04 as base
RUN apt-get update
RUN apt-get install -y openjdk-17-jdk gfortran gnucobol scala lua5.2 sqlite3 yabasic fpc

# ==================================================
FROM base as fortran
WORKDIR /src
COPY fortran/app.f90 .
RUN gfortran -o ./app app.f90
RUN ./app >> result.txt

# ==================================================
FROM base as lua
WORKDIR /src
COPY lua/app.lua .
RUN lua app.lua >> result.txt

# ==================================================
FROM base as open-cobol
WORKDIR /src
COPY cobol/app.cbl .
RUN cobc -x -O3 -free -o ./app app.cbl
RUN ./app >> result.txt

# ==================================================
FROM base as scala
WORKDIR /src
COPY scala/app.scala .
RUN scala -nobootcp -nc app.scala >> result.txt

# ==================================================
FROM base as sqllite
WORKDIR /src
COPY sql-sqlite/app.sql .
RUN sqlite3 < app.sql >> result.txt

# ==================================================
FROM base as basic
WORKDIR /src
COPY basic/app.yab .
RUN yabasic app.yab >> result.txt

# ==================================================
FROM base as pascal
WORKDIR /src
COPY pascal/app.pas .
RUN fpc app.pas
RUN ./app >> result.txt

# ==================================================
FROM gcc as nasm
WORKDIR /src
RUN apt-get update
RUN apt-get install -y nasm
COPY assembly/app.asm .
RUN nasm -f elf64 app.asm -o app.obj
RUN gcc -no-pie -o app app.obj
RUN ./app >> result.txt

# ==================================================
FROM node as node
WORKDIR /src
COPY nodejs/app.js .
RUN node app.js >> result.txt

# ==================================================
FROM gcc as gcc
WORKDIR /src
COPY c/app.c .
RUN gcc -o app app.c
RUN ./app >> result.txt

# ==================================================
FROM mcr.microsoft.com/dotnet/sdk as dotnet-cs
WORKDIR /src
COPY csharp/csharp.csproj .
COPY csharp/Program.cs .
RUN dotnet build -c Release
RUN ./bin/Release/net7.0/csharp >> result.txt

# ==================================================
FROM python as python
WORKDIR /src
COPY python/app.py .
RUN python app.py >> result.txt

# ==================================================
FROM ruby as ruby
WORKDIR /src
COPY ruby/app.ru .
RUN ruby app.ru >> result.txt

# ==================================================
FROM openjdk as openjdk
WORKDIR /src
COPY java/app.java .
RUN java app.java openjdk >> result.txt

# ==================================================
FROM julia as julia
WORKDIR /src
COPY julia/app.jl .
RUN julia app.jl >> result.txt

# ==================================================
FROM golang as golang
WORKDIR /src
COPY golang/app.go app.go
RUN go build app.go
RUN ./app >> result.txt

# ==================================================
FROM rust as rust
WORKDIR /src
COPY rust/. .
RUN cargo run --release >> result.txt

# ==================================================
FROM r-base as r-base
WORKDIR /src
COPY r-lang/app.r app.r
RUN Rscript --no-echo app.r >> result.txt

# ==================================================
FROM zenika/kotlin as kotlin
WORKDIR /src
COPY kotlin/app.kt .
RUN kotlinc -d app.jar app.kt
RUN java -jar ./app.jar >> result.txt

# ==================================================
FROM dart as dart
WORKDIR /src
COPY dart/app.dart .
RUN dart app.dart >> result.txt

# ==================================================
FROM perl as perl
WORKDIR /src
COPY perl/app.pl .
RUN perl app.pl >> result.txt

# ==================================================
FROM swift as swift
WORKDIR /src
COPY swift/app.swift .
RUN swiftc -O -g app.swift
RUN ./app >> result.txt

# ==================================================
FROM base
WORKDIR /app
COPY --from=nasm /src/result.txt ./nasm.txt
COPY --from=node /src/result.txt ./node.txt
COPY --from=gcc /src/result.txt ./gcc.txt
COPY --from=dotnet-cs /src/result.txt ./dotnet-cs.txt
COPY --from=python /src/result.txt ./python.txt
COPY --from=ruby /src/result.txt ./ruby.txt
COPY --from=openjdk /src/result.txt ./openjdk.txt
COPY --from=julia /src/result.txt ./julia.txt
COPY --from=fortran /src/result.txt ./fortran.txt
COPY --from=rust /src/result.txt ./rust.txt
COPY --from=golang /src/result.txt ./golang.txt
COPY --from=r-base /src/result.txt ./r-base.txt
COPY --from=open-cobol /src/result.txt ./open-cobol.txt
COPY --from=kotlin /src/result.txt ./kotlin.txt
COPY --from=dart /src/result.txt ./dart.txt
COPY --from=perl /src/result.txt ./perl.txt
COPY --from=scala /src/result.txt ./scala.txt
COPY --from=swift /src/result.txt ./swift.txt
COPY --from=lua /src/result.txt ./lua.txt
COPY --from=sqllite /src/result.txt ./sqllite.txt
COPY --from=basic /src/result.txt ./basic.txt
COPY --from=pascal /src/result.txt ./pascal.txt
ENTRYPOINT cp -r . /result
