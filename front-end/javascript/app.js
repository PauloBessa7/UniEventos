const express = require('express');
const path = require('path');
const app = express();
const port = 3001;

// Configura o middleware para servir arquivos estáticos
app.use(express.static(path.join(__dirname, '../')));

// Rota principal para servir index.html
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'));
});

// Inicia o servidor
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});