# Use an existing docker image as a base
## 가장 작은 사이즈로 정말 필요한 것들만 담겨져 있는 이미지
FROM alpine

# Download and install a depenency
RUN apk add --update redis

# Tell the image what to do when it starts
# as a container
CMD ["redis-server"]