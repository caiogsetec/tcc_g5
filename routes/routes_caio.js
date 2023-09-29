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
router.post('/agendaDenuncias', agendasDenunciasController.cadastrarAgendaDenuncias);
router.patch('/agendaDenuncias', agendasDenunciasController.editarAgendaDenuncias);
router.delete('/agendaDenuncias', agendasDenunciasController.apagarAgendaDenuncias);


router.get('/anexos', anexosController.listarAnexos);
router.post('/anexos', anexosController.cadastrarAnexos);
router.patch('/anexos', anexosController.editarAnexos);
router.delete('/anexos', anexosController.apagarAnexos);


router.get('/denuncias', denunciasController.listarDenuncias);
router.post('/denuncias', denunciasController.cadastrarDenuncias);
router.patch('/denuncias', denunciasController.editarDenuncias);
router.delete('/denuncias', denunciasController.apagarDenuncias);


router.get('/equipes', equipesController.listarEquipes);
router.post('/equipes', equipesController.cadastrarEquipes);
router.patch('/equipes', equipesController.editarEquipes);
router.delete('/equipes', equipesController.apagarEquipes);


router.get('/usuarios', usuariosController.listarUsuarios);
router.post('/usuarios', usuariosController.cadastrarUsuarios);
router.patch('/usuarios', usuariosController.editarUsuarios);
router.delete('/usuarios', usuariosController.apagarUsuarios);
//post
//patch
//delete

module.exports = router;