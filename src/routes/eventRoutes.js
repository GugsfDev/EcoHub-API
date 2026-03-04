const express = require("express");
const router = express.Router();
const eventController = require("../controllers/eventController");
const authMiddleware = require("../middlewares/authMiddleware");
const upload = require("../middlewares/uploadMiddleware");

/**
 * @swagger
 * components:
 *   schemas:
 *     Event:
 *       type: object
 *       required:
 *         - titulo
 *         - descricao
 *       properties:
 *         id:
 *           type: integer
 *           description: ID do evento
 *         titulo:
 *           type: string
 *           description: Título do evento
 *         descricao:
 *           type: string
 *           description: Descrição do evento
 *         data_evento:
 *           type: string
 *           format: date
 *         imagem:
 *           type: string
 *           description: Imagem do evento
 *       example:
 *         titulo: Hackathon ENIAC
 *         descricao: Evento de tecnologia
 *         data_evento: 2026-10-10
 */

/**
 * @swagger
 * /api/events:
 *   get:
 *     summary: Lista todos os eventos
 *     tags: [Events]
 *     responses:
 *       200:
 *         description: Lista de eventos retornada com sucesso
 */
router.get("/", eventController.getEvents);

/**
 * @swagger
 * /api/events:
 *   post:
 *     summary: Criar um novo evento
 *     tags: [Events]
 *     security:
 *       - bearerAuth: []
 */
router.post(
  "/",
  authMiddleware,
  upload.single("imagem"),
  eventController.createEvent
);

/**
 * @swagger
 * /api/events/{id}:
 *   delete:
 *     summary: Deletar evento
 *     tags: [Events]
 */
router.delete("/:id", authMiddleware, eventController.deleteEvent);

module.exports = router;