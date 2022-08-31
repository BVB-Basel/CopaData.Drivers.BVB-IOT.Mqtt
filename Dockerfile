# to build and extract exec
# $ docker build -t bvb-iot . && docker run -it bvb-iot:latest
# when build finished extract files like this
# $ docker cp <containerID>:/app/out/. ./out

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./

RUN dotnet publish -c Release -o out

COPY dev-entrypoint.sh ./

# dev purposes only, keep the container alive
ENTRYPOINT ["/bin/sh", "dev-entrypoint.sh"]
