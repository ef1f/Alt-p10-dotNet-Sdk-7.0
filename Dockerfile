FROM registry.altlinux.org/alt/base:p10
ENV DOTNET_GENERATE_ASPNET_CERTIFICATE=false DOTNET_RUNNING_IN_CONTAINER=true DOTNET_USE_POLLING_FILE_WATCHER=true NUGET_XMLDOC_MODE=skip
RUN apt-get update && apt-get install -y ca-certificates curl wget git dirmngr mercurial subversion procps dotnet-sdk-7.0 && \
apt-get clean && find /var/lib/apt/lists/ -type f -exec rm {} + 
