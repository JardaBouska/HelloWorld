FROM mcr.microsoft.com/dotnet/sdk:5.0

# Install Jenkins agent dependencies
USER root
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    && rm -rf /var/lib/apt/lists/*

# Install Docker CLI
RUN curl -sSL https://get.docker.com/ | sh

# Create Jenkins user
RUN useradd -m -d /home/jenkins -s /bin/bash jenkins

# Add Jenkins user to the Docker group
RUN usermod -aG docker jenkins

USER jenkins
