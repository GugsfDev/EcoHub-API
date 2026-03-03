const swaggerJsDoc = require('swagger-jsdoc');

const swaggerOptions = {
  swaggerDefinition: {
    openapi: '3.0.0',
    info: {
      title: 'Minha API Node com Swagger',
      version: '1.0.0',
      description: 'Documentação da API criada com Express e documentada com Swagger',
      contact: {
        name: 'Seu Nome'
      },
    },
    servers: [
      {
        url: 'http://localhost:3000',
        description: 'Servidor Local'
      },
    ],
  },
  // Caminho de onde o Swagger vai ler as anotações das rotas
  apis: ['./src/routes/*.js'], 
};

const swaggerDocs = swaggerJsDoc(swaggerOptions);

module.exports = swaggerDocs;