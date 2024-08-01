# Sử dụng Node.js chính thức làm cơ sở
FROM node:14

# Tạo thư mục làm việc trong container
WORKDIR /usr/src/app

# Sao chép package.json và package-lock.json vào container
COPY package*.json ./

# Cài đặt các phụ thuộc
RUN npm install

# Sao chép mã nguồn ứng dụng vào container
COPY . .

# Mở cổng 8080
EXPOSE 8080

# Chạy ứng dụng khi container khởi động
CMD [ "node", "app.js" ]

