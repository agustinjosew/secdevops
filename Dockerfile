# Usar una imagen base de Node.js 8
FROM node:8

# Establecer el directorio de trabajo
WORKDIR /usr/src/app

# Copiar package.json y package-lock.json primero para aprovechar la caché de Docker
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código fuente al contenedor
COPY . .

# Exponer el puerto que la aplicación utilizará
EXPOSE 8080

# Ejecutar la aplicación con un usuario no root
RUN adduser --disabled-password appuser
USER appuser

# Comando por defecto para ejecutar la aplicación
CMD ["node", "server.js"]
