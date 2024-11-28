# Node.js 기본 이미지 사용
FROM node:16

# 앱 디렉토리 생성
WORKDIR /app

# package.json과 package-lock.json 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 앱 소스 복사
COPY . .

# 앱 실행 포트
EXPOSE 3000

# 앱 실행 명령어
CMD ["npm", "start"]
