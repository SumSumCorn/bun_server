# Bun 런타임을 기반으로 하는 공식 이미지 사용
FROM oven/bun:1

# 작업 디렉토리 설정
WORKDIR /app

# 패키지 파일 복사 및 의존성 설치
COPY package.json bun.lockb ./
RUN bun install

# 소스 코드 복사
COPY . .

# 포트 노출
EXPOSE 3000

# 서버 실행
CMD ["bun", "run", "index.ts"]