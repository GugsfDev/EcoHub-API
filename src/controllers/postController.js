const db = require("../config/db");

exports.getPosts = (req, res) => {
    const sql = "SELECT posts.*, users.nome FROM posts JOIN users ON posts.usuario_id = users.id ORDER BY data_publicacao DESC";
    db.query(sql, (err, results) => {
        if (err) return res.status(500).json({ erro: err.message });
        res.json(results);
    });
};

exports.createPost = (req, res) => {
    const { conteudo } = req.body;
    const usuario_id = req.user.id;
    const imagem_url = req.file ? req.file.filename : null;
    const sql = "INSERT INTO posts (usuario_id, conteudo, imagem_url) VALUES (?, ?, ?)";

    db.query(sql, [usuario_id, conteudo, imagem_url], (err, result) => {
        if (err) return res.status(500).json({ erro: err.message });
        res.status(201).json({ mensagem: "Post criado!", id: result.insertId });
    });
};

exports.deletePost = (req, res) => {
    const { id } = req.params;
    db.query("DELETE FROM posts WHERE id = ?", [id], (err) => {
        if (err) return res.status(500).json({ erro: err.message });
        res.json({ mensagem: "Post removido!" });
    });
};