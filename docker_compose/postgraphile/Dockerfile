FROM node:alpine
RUN npm install -g postgraphile@4 postgraphile-plugin-nested-mutations postgraphile-plugin-connection-filter@2.3.0
EXPOSE 5000
ENTRYPOINT ["postgraphile", "-n", "0.0.0.0"]