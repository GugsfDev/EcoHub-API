const db = require("../config/db");

exports.toggleLike = (req, res) => {
    const { post_id } = req.body;
    const usuario_id = req.user.id;

    const sqlCheck = "SELECT id FROM likes WHERE post_id = ? AND usuario_id = ?";
    db.query(sqlCheck, [post_id, usuario_id], (err, results) => {
        if (err) return res.status(500).json({ erro: err.message });

        if (results.length > 0) {
            // Se já existe, remove (Unlike)
            db.query("DELETE FROM likes WHERE post_id = ? AND usuario_id = ?", [post_id, usuario_id], () => {
                res.json({ mensagem: "Curtida removida" });
            });
        } else {
            // Se não existe, adiciona (Like)
            db.query("INSERT INTO likes (post_id, usuario_id) VALUES (?, ?)", [post_id, usuario_id], (err) => {
                if (err) return res.status(500).json({ erro: err.message });

                // Notificar dono do post
                db.query("SELECT usuario_id FROM posts WHERE id = ?", [post_id], (err, post) => {
                    if (!err && post.length > 0 && post[0].usuario_id !== usuario_id) {
                        const sqlNotify = "INSERT INTO notifications (usuario_id, remetente_id, tipo, post_id) VALUES (?, ?, 'curtida', ?)";
                        db.query(sqlNotify, [post[0].usuario_id, usuario_id, post_id]);
                    }
                });
                res.status(201).json({ mensagem: "Post curtido!" });
            });
        }
    });
};