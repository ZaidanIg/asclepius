# Gunakan image Node.js versi LTS
FROM node:18-slim

# Set lingkungan kerja dalam container
WORKDIR /usr/src/app

# Salin file package.json dan package-lock.json (jika ada)
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Salin seluruh kode aplikasi ke dalam container
COPY . .

# Expose port aplikasi
EXPOSE 8080

# Jalankan aplikasi
CMD ["node", "src/server/server.js"]