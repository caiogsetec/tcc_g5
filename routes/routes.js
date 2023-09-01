const db = require('../database/connection');
const express = require('express');
const router = express.Router();

//referência a controllers que serão utilzados nas portas
const agendasDenunciasController = require('../controllers/agendaDenuncias');

//definição de rotas
router.get('/agendaDenuncias', agendasDenunciasController.listarAgendaDenuncias);
//post
//patch
//delete

module.exports = router;