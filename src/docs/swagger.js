const swaggerDocument = {
  openapi: '3.0.0',
  info: {
    title: 'EcoHub API',
    version: '1.0.0',
    description: 'Documentação completa da API do EcoHub',
  },
  servers: [
    {
      url: 'http://localhost:3000',
      description: 'Servidor Local'
    },
  ],

  // ==========================================
  // CONFIGURAÇÃO DO CADEADO (AUTENTICAÇÃO JWT)
  // ==========================================
  components: {
    securitySchemes: {
      bearerAuth: {
        type: 'http',
        scheme: 'bearer',
        bearerFormat: 'JWT',
        description: 'Insira o seu token JWT aqui (sem a palavra "Bearer")'
      }
    }
  },
  
  // Aplica o cadeado a todas as rotas por padrão
  security: [
    {
      bearerAuth: []
    }
  ],

  paths: {
    // ==========================================
    // ROTAS DE USUÁRIOS (USERS)
    // ==========================================
    '/api/users': {
      get: {
        tags: ['Users'],
        summary: 'Lista todos os usuários',
        responses: { '200': { description: 'Sucesso' } }
      }
    },
    '/api/users/register': {
      post: {
        tags: ['Users'],
        summary: 'Criar novo usuário',
        security: [], // <-- Rota pública, sem cadeado
        requestBody: {
          required: true,
          content: {
            'application/json': {
              schema: {
                type: 'object',
                properties: {
                  nome: { type: 'string', example: 'Gustavo' },
                  email: { type: 'string', example: 'gustavo@email.com' },
                  senha: { type: 'string', example: '123456' }
                }
              }
            }
          }
        },
        responses: {
          '201': { description: 'Usuário criado com sucesso' },
          '500': { description: 'Erro no servidor' }
        }
      }
    },
    '/api/users/login': {
      post: {
        tags: ['Users'],
        summary: 'Login do usuário',
        security: [], // <-- Rota pública, sem cadeado
        requestBody: {
          required: true,
          content: {
            'application/json': {
              schema: {
                type: 'object',
                properties: {
                  email: { type: 'string', example: 'gustavo@email.com' },
                  senha: { type: 'string', example: '123456' }
                }
              }
            }
          }
        },
        responses: {
          '200': { description: 'Login realizado com sucesso' },
          '401': { description: 'Credenciais inválidas' }
        }
      }
    },

    // ==========================================
    // ROTAS DE PROJETOS (PROJECTS)
    // ==========================================
    '/api/projects': {
      get: {
        tags: ['Projects'],
        summary: 'Lista todos os projetos',
        responses: { '200': { description: 'Sucesso' } }
      },
      post: {
        tags: ['Projects'],
        summary: 'Criar um novo projeto',
        description: '**Permissão necessária:** `Admin`\n\nApenas administradores podem criar novos projetos.',
        requestBody: {
          required: true,
          content: {
            'application/json': {
              schema: {
                type: 'object',
                properties: {
                  titulo: { type: 'string', example: 'Reciclagem Solidária' },
                  descricao: { type: 'string', example: 'Projeto focado na coleta seletiva do bairro.' }
                }
              }
            }
          }
        },
        responses: { 
          '201': { description: 'Projeto criado' },
          '401': { description: 'Token não fornecido ou inválido' },
          '403': { description: 'Acesso negado (Requer Admin)' },
          '500': { description: 'Erro no servidor' }
        }
      }
    },
    '/api/projects/{id}': {
      delete: {
        tags: ['Projects'],
        summary: 'Deletar um projeto',
        description: '**Permissão necessária:** `Admin`\n\nApenas administradores podem excluir projetos.',
        parameters: [
          {
            name: 'id',
            in: 'path',
            required: true,
            description: 'ID do projeto a ser deletado',
            schema: { type: 'string' }
          }
        ],
        responses: { 
          '200': { description: 'Projeto deletado com sucesso' },
          '401': { description: 'Token não fornecido ou inválido' },
          '403': { description: 'Acesso negado (Requer Admin)' }
        }
      }
    },

    // ==========================================
    // ROTAS DE EVENTOS (EVENTS)
    // ==========================================
    '/api/events': {
      get: {
        tags: ['Events'],
        summary: 'Lista todos os eventos',
        responses: { '200': { description: 'Sucesso' } }
      },
      post: {
        tags: ['Events'],
        summary: 'Criar um novo evento',
        description: '**Permissão necessária:** `Admin`',
        requestBody: {
          required: true,
          content: {
            'application/json': {
              schema: {
                type: 'object',
                properties: {
                  titulo: { type: 'string', example: 'Mutirão de Limpeza' },
                  descricao: { type: 'string', example: 'Vamos limpar o parque municipal.' },
                  data: { type: 'string', format: 'date', example: '2026-04-15' },
                  local: { type: 'string', example: 'Parque Central' }
                }
              }
            }
          }
        },
        responses: { 
          '201': { description: 'Evento criado' },
          '401': { description: 'Token não fornecido ou inválido' },
          '403': { description: 'Acesso negado (Requer Admin)' },
          '500': { description: 'Erro no servidor' }
        }
      }
    },
    '/api/events/{id}': {
      delete: {
        tags: ['Events'],
        summary: 'Deletar um evento',
        description: '**Permissão necessária:** `Admin`',
        parameters: [
          {
            name: 'id',
            in: 'path',
            required: true,
            description: 'ID do evento a ser deletado',
            schema: { type: 'string' }
          }
        ],
        responses: { 
          '200': { description: 'Evento deletado com sucesso' },
          '401': { description: 'Token não fornecido ou inválido' },
          '403': { description: 'Acesso negado (Requer Admin)' }
        }
      }
    },

    // ==========================================
    // ROTAS DE NOTÍCIAS (NEWS)
    // ==========================================
    '/api/news': {
      get: {
        tags: ['News'],
        summary: 'Lista todas as notícias',
        responses: { '200': { description: 'Sucesso' } }
      },
      post: {
        tags: ['News'],
        summary: 'Criar uma nova notícia',
        description: '**Permissão necessária:** `Admin`',
        requestBody: {
          required: true,
          content: {
            'application/json': {
              schema: {
                type: 'object',
                properties: {
                  titulo: { type: 'string', example: 'Nova lei ambiental aprovada' },
                  conteudo: { type: 'string', example: 'A câmara aprovou hoje a nova lei que...' }
                }
              }
            }
          }
        },
        responses: { 
          '201': { description: 'Notícia criada' },
          '401': { description: 'Token não fornecido ou inválido' },
          '403': { description: 'Acesso negado (Requer Admin)' },
          '500': { description: 'Erro no servidor' }
        }
      }
    },
    '/api/news/{id}': {
      delete: {
        tags: ['News'],
        summary: 'Deletar uma notícia',
        description: '**Permissão necessária:** `Admin`',
        parameters: [
          {
            name: 'id',
            in: 'path',
            required: true,
            description: 'ID da notícia a ser deletada',
            schema: { type: 'string' }
          }
        ],
        responses: { 
          '200': { description: 'Notícia deletada com sucesso' },
          '401': { description: 'Token não fornecido ou inválido' },
          '403': { description: 'Acesso negado (Requer Admin)' }
        }
      }
    },

    // ==========================================
    // ROTAS DE POSTS (POSTS)
    // ==========================================
    '/api/posts': {
      get: {
        tags: ['Posts'],
        summary: 'Lista todos os posts',
        responses: { '200': { description: 'Sucesso' } }
      },
      post: {
        tags: ['Posts'],
        summary: 'Criar um novo post',
        description: '**Permissão necessária:** `Admin`',
        requestBody: {
          required: true,
          content: {
            'application/json': {
              schema: {
                type: 'object',
                properties: {
                  titulo: { type: 'string', example: 'Dicas de Sustentabilidade' },
                  conteudo: { type: 'string', example: 'Aprenda a reduzir o consumo de água na sua casa.' }
                }
              }
            }
          }
        },
        responses: { 
          '201': { description: 'Post criado' },
          '401': { description: 'Token não fornecido ou inválido' },
          '403': { description: 'Acesso negado (Requer Admin)' },
          '500': { description: 'Erro no servidor' }
        }
      }
    },
    '/api/posts/{id}': {
      delete: {
        tags: ['Posts'],
        summary: 'Deletar um post',
        description: '**Permissão necessária:** `Admin`',
        parameters: [
          {
            name: 'id',
            in: 'path',
            required: true,
            description: 'ID do post a ser deletado',
            schema: { type: 'string' }
          }
        ],
        responses: { 
          '200': { description: 'Post deletado com sucesso' },
          '401': { description: 'Token não fornecido ou inválido' },
          '403': { description: 'Acesso negado (Requer Admin)' }
        }
      }
    }
  }
};

module.exports = swaggerDocument;