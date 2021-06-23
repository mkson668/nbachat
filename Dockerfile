FROM node:latest

# creating project folder
RUN mkdir /nbachat

# setting work directory
WORKDIR /nbachat

# copying over required npm dependencies
COPY package.json /nbachat/

RUN npm install

# copy all files 
COPY . /nbachat/

EXPOSE 3000

CMD ["npm", "start"]