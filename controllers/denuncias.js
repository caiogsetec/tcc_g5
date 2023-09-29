const { json } = require('express'); 
const db = require('../database/connection'); 

module.exports = {
    async listarDenuncias(request, response) {
        try {
            return response.status(200).json({confirma: 'Listar Denuncias'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    
    async cadastrarDenuncias(request, response) {
        try {
            return response.status(200).json({confirma: 'Cadastrar Denuncias'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 

    async editarDenuncias(request, response) {
        try {
            return response.status(200).json({confirma: 'Editar Denuncias'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 

    async apagarDenuncias(request, response) {
        try {
            return response.status(200).json({confirma: 'Apagar Denuncias'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
};  
