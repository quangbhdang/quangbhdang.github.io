# Base image: Ruby with necessary dependencies for Jekyll
FROM ruby:3.2

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*


# Create a non-root user with UID 1000
RUN groupadd -g 1000 vscode && \
    useradd -m -u 1000 -g vscode vscode

# Set the working directory
WORKDIR /usr/src/app

# Copy Gemfile first for better caching
COPY Gemfile Gemfile.lock* ./

# Install bundler and dependencies as root
RUN gem install connection_pool:2.5.0
RUN gem install bundler:2.3.26
RUN bundle install

# Copy all site files
COPY . .

# Set permissions for the working directory
RUN chown -R vscode:vscode /usr/src/app

# Switch to the non-root user
USER vscode

# Command to serve the site
CMD ["jekyll", "serve", "-H", "0.0.0.0", "-P", "4000", "-w", "--livereload", "--config", "_config.yml,_config_docker.yml"]

