# Step 1: Use an existing docker image as a base
# alpine? 가장 작은 사이즈로 정말 필요한 것들만 담겨져 있는 이미지
FROM alpine

# Step 2: Download and install dependency
# apk? Apache Package 프로그램
# gcc? GNU Compiler Collection은 여러 언어를 지원하는 컴파일 시스템입니다.
RUN apk add --update redis
RUN apk add --update gcc

# Step 3: Tell the image what to do when it starts as container
CMD ["redis-server"]