const { json } = require('express'); 
const db = require('../database/connection'); 

module.exports = {
    async listarEquipes(request, response) {
        try {
            return response.status(200).json({confirma: 'Listar Equipes'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async cadastrarEquipes(request, response) {
        try {
            return response.status(200).json({confirma: 'Cadastrar Equipes'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async editarEquipes(request, response) {
        try {
            return response.status(200).json({confirma: 'Editar Equipes'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async apagarEquipes(request, response) {
        try {
            return response.status(200).json({confirma: 'Apgar Equipes'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
};  
