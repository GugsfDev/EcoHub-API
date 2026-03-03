// Simulando um banco de dados
const users = [
    { id: 1, name: 'João Silva', email: 'joao@email.com' },
    { id: 2, name: 'Maria Souza', email: 'maria@email.com' }
];

exports.getUsers = (req, res) => {
    res.status(200).json(users);
};

exports.createUser = (req, res) => {
    const newUser = {
        id: users.length + 1,
        name: req.body.name,
        email: req.body.email
    };
    users.push(newUser);
    res.status(201).json(newUser);
};