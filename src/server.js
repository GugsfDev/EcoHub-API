const express = require('express');
const swaggerUi = require('swagger-ui-express');
const swaggerDocs = require('./docs/swagger');
const userRoutes = require('./routes/useRoutes');
const db = require('./db');

const app = express();
const PORT = 3000;

app.use(express.json());

// Swagger
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs));

// rota principal
app.get('/', (req, res) => {
  res.send('API funcionando 🚀');
});

// rotas da API
app.use('/api/users', userRoutes);

// teste de banco
app.get('/teste-banco', (req, res) => {
  db.query('SELECT 1', (err) => {
    if (err) {
      return res.status(500).json({ erro: 'Banco não conectou' });
    }
    res.json({ status: 'Banco conectado' });
  });
});

app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
  console.log(`Swagger: http://localhost:${PORT}/api-docs`);
});