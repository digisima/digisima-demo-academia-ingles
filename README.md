# Lingua Academy — Demo Digisima

Pieza de portafolio: landing page de academia de inglés.

## Stack

HTML estático servido con Nginx en contenedor Docker.

## Local

```bash
docker build -t lingua-demo .
docker run --rm -p 8080:80 lingua-demo
# Abrir http://localhost:8080
```

## Deploy en Coolify

Ver instrucciones de deploy en la conversación. Resumen:

1. Push este repo a GitHub
2. Coolify → New Resource → Public Repository
3. Build Pack: **Dockerfile**
4. Domain: `academia-ingles.digisima.com`
5. Deploy

## Estructura

- `index.html` — el sitio
- `Dockerfile` — imagen nginx:alpine
- `nginx.conf` — config con gzip, security headers, cache control
- `.dockerignore` — excluye archivos innecesarios del build

---

Diseño y desarrollo: [Digisima](https://digisima.com)
