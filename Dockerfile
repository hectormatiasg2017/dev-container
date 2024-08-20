FROM mcr.microsoft.com/devcontainers/typescript-node:1-22-bookworm

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip python3.11-venv

# Install Poetry for the current user
RUN curl -sSL https://install.python-poetry.org | python3 -
# Add Poetry to PATH
ENV PATH="/root/.local/bin:$PATH"

# Install AWS CLI
RUN apt-get update && \
    apt-get install -y unzip && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip aws 

RUN npm install -g aws-cdk

# Optional: Install PHP
# RUN apt-get update && apt-get install -y php php-cli php-mbstring
