// Import các module cần thiết
const express = require('express');
const app = express();
const port = 8080;

// Định nghĩa một route đơn giản
app.get('/', (req, res) => {
  res.send('Hello, World!');
});

// Khởi động server và lắng nghe tại cổng 8080
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
