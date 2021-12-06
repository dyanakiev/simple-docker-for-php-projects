
# Install mkcert for ssl
brew install mkcert nss

mkcert -install

# Generate ssl for website
mkdir ssl && cd ssl && mkcert replace-with-site-name.test && cd ..

# Build
docker-compose build --no-cache