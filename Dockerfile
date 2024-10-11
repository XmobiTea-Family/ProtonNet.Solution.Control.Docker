# Stage 1: Use .NET SDK image to extract the .NET environment
FROM mcr.microsoft.com/dotnet/runtime:8.0

# Set the working directory
WORKDIR /protonnetcontrol

# Copy files into the container
COPY ./applications ./applications
COPY ./control/net8.0/linux-x64 ./control/net8.0/linux-x64
COPY ./control/proton-control-log4net.config ./control/proton-control-log4net.config
COPY ./libs/agents/net8.0/linux-x64 ./libs/agents/net8.0/linux-x64
COPY ./LICENSE ./LICENSE
COPY ./control.sh ./control.sh
COPY ./ProtonNetServerSettings.json ./ProtonNetServerSettings.json
COPY ./logs ./logs

# Ensure scripts have execute permissions
RUN chmod +x ./control.sh
RUN chmod +x ./control/net8.0/linux-x64/XmobiTea.ProtonNet.Control
RUN chmod +x ./libs/agents/net8.0/linux-x64/XmobiTea.ProtonNet.Control.Agent

# Set the entry point to run the script
ENTRYPOINT ["./control.sh"]

# Optional command argument
CMD ["version"]
