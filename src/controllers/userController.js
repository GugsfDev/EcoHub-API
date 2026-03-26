const db = require("../config/db");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

const SECRET = "segredo_super_secreto";

// ==========================================
// LISTAR USUÁRIOS
// ==========================================
exports.getUsers = (req, res) => {
  db.query(
    "SELECT id, nome, email, data_criacao FROM users",
    (err, results) => {
      if (err) {
        return res.status(500).json({ erro: err });
      }
      res.json(results);
    }
  );
};

// ==========================================
// CRIAR USUÁRIO
// ==========================================
exports.createUser = async (req, res) => {
  try {
    const { nome, email, senha } = req.body;

    if (!nome || !email || !senha) {
      return res.status(400).json({
        erro: "Nome, email e senha são obrigatórios"
      });
    }

    const senhaHash = await bcrypt.hash(senha, 10);

    const sql = "INSERT INTO users (nome, email, senha) VALUES (?, ?, ?)";

    db.query(sql, [nome, email, senhaHash], (err, result) => {
      if (err) {
        console.error("❌ ERRO NO BANCO DE DADOS:", err.message);
        console.error("Código do erro:", err.code);
        
        return res.status(500).json({ 
          erro: "Erro no banco de dados", 
          detalhes: err.message,
          codigo: err.code 
        });
      }

      res.status(201).json({
        mensagem: "Usuário criado com sucesso",
        id: result.insertId
      });
    });
  } catch (error) {
    console.error("❌ ERRO NO CATCH:", error);
    res.status(500).json({ erro: error.message });
  }
};

// ==========================================
// LOGIN
// ==========================================
exports.login = (req, res) => {
  const { email, senha } = req.body;

  const sql = "SELECT * FROM users WHERE email = ?";

  db.query(sql, [email], async (err, results) => {
    if (err) {
      return res.status(500).json({ erro: err });
    }

    if (results.length === 0) {
      return res.status(401).json({
        erro: "Usuário não encontrado"
      });
    }

    const user = results[0];

    const senhaValida = await bcrypt.compare(senha, user.senha);

    if (!senhaValida) {
      return res.status(401).json({
        erro: "Senha incorreta"
      });
    }

    // AQUI ESTÁ A CORREÇÃO PRINCIPAL:
    // Adicionamos 'tipo: user.tipo' para a permissão ir dentro do token!
    const token = jwt.sign(
      { 
        id: user.id, 
        email: user.email, 
        tipo: user.tipo // <-- Salva se ele é 'admin' ou 'aluno'
      },
      SECRET,
      { expiresIn: "1d" }
    );

    res.json({
      mensagem: "Login realizado com sucesso",
      token,
      usuario: {
        id: user.id,
        nome: user.nome,
        email: user.email,
        tipo: user.tipo // <-- Devolve o tipo na resposta também (boa prática)
      }
    });
  });
};