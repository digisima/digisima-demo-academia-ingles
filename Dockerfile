FROM nginx:1.27-alpine

# Copiar configuración personalizada
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar el sitio
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

# Healthcheck simple para que Coolify sepa que el contenedor está vivo
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
