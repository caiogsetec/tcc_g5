const db = require('../database/connection');
const express = require('express');
const router = express.Router();

//referência a controllers que serão utilzados nas portas
const agendasDenunciasController = require('../controllers/agendaDenuncias');
const anexosController = require('../controllers/anexos');
const denunciasController = require('../controllers/denuncias');
const equipesController = require('../controllers/equipes');
const usuariosController = require('../controllers/usuarios');

//definição de rotas
router.get('/agendaDenuncias', agendasDenunciasController.listarAgendaDenuncias);
router.get('/anexos', anexosController.listarAnexos);
router.get('/denuncias', denunciasController.listaranexos);
router.get('/agendaDenuncias', agendasDenunciasController.listarAgendaDenuncias);
router.get('/agendaDenuncias', agendasDenunciasController.listarAgendaDenuncias);
//post
//patch
//delete

module.exports = router;