# gg-devops-caching-service

By Corey Gale (corey@gumgum.com)

## Example requests

### Create key

    curl --request POST \
        --header "Content-Type: application/json" \
        --data '{"value":"Hello GumGum!"}' \
        http://localhost:8000/set/test

Response: `{"code": 200}`

### Get key value

    curl http://localhost:8000/get/test

Response: `{"value: "Hello world!"}`

## Docker image

    docker pull mechtron/gg-devops-caching-service
