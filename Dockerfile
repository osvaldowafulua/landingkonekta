FROM nginx:alpine

# Copiar a configuração personalizada do Nginx
COPY default.conf /etc/nginx/conf.d/default.conf

# Copiar todos os arquivos HTML para o diretório público do Nginx
COPY . /usr/share/nginx/html

# Garantir permissões de leitura
RUN chmod -R 755 /usr/share/nginx/html

# Expor a porta 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
