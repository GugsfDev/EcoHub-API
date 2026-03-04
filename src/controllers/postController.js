const db = require("../config/db");

// LISTAR EVENTOS
exports.getEvents = (req, res) => {
  const sql = "SELECT * FROM events ORDER BY data_criacao DESC";

  db.query(sql, (err, results) => {
    if (err) {
      return res.status(500).json({ erro: err });
    }

    res.json(results);
  });
};

// CRIAR EVENTO
exports.createEvent = (req, res) => {
  const { titulo, descricao, data_evento, imagem, criado_por } = req.body;

  const sql = `
    INSERT INTO events (titulo, descricao, data_evento, imagem, criado_por)
    VALUES (?, ?, ?, ?, ?)
  `;

  db.query(
    sql,
    [titulo, descricao, data_evento, imagem, criado_por],
    (err, result) => {
      if (err) {
        return res.status(500).json({ erro: err });
      }

      res.status(201).json({
        mensagem: "Evento criado com sucesso",
        id: result.insertId
      });
    }
  );
};

// DELETAR EVENTO
exports.deleteEvent = (req, res) => {
  const { id } = req.params;

  const sql = "DELETE FROM events WHERE id = ?";

  db.query(sql, [id], (err) => {
    if (err) {
      return res.status(500).json({ erro: err });
    }

    res.json({
      mensagem: "Evento deletado"
    });
  });
};