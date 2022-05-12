FROM node:latest

RUN git clone https://github.com/KING-BOT-OFFICIAL/4.5-1 /root/4.5-1
WORKDIR /root/4.5-1/
RUN git clone https://github.com/KING-BOT-OFFICIAL/4.5-1
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]

