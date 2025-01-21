# Menggunakan Node.js sebagai base image
FROM node:16

# Set working directory
WORKDIR /usr/src/app

# Copy package.json dan package-lock.json untuk instalasi dependensi
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh kode aplikasi ke dalam container
COPY . .

# Expose port 8080
EXPOSE 8080

# Jalankan aplikasi
CMD ["npm", "start"]
