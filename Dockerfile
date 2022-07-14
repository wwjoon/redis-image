# Step 1: Use an existing docker image as a base
# alpine? 가장 작은 사이즈로 정말 필요한 것들만 담겨져 있는 이미지
FROM alpine

# Step 2: Download and install dependency
# apk? Apache Package 프로그램
RUN apk add --update redis

# Step 3: Tell the image what to do when it starts as container
CMD ["redis-server"]