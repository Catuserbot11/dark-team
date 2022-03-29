FROM buildkite/puppeteer:latest

RUN apt update
RUN apt install ffmpeg git -y
RUN git clone https://github.com/tuhinpal/WhatsBot.git /app

WORKDIR /app
RUN npm install
CMD ["npm", "start"]
EXPOSE 8080
