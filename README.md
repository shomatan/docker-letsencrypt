# Docker: Let's Encrypt

## Usage

    docker run \
        -v $(pwd):/etc/letsencrypt \
        -v $(pwd):/var/log/letsencrypt \
        -p 80:80 -p 443:443 \
        shomatan/letsencrypt:0.14.0-alpine \
        --domain YOUR_DOMAIN --email YOUR_EMAIL