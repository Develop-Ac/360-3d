FROM nginx:alpine

# remove config default
RUN rm -rf /usr/share/nginx/html/*

# copia arquivos do projeto
COPY . /usr/share/nginx/html

# expõe porta
EXPOSE 80

# inicia nginx
CMD ["nginx", "-g", "daemon off;"]
