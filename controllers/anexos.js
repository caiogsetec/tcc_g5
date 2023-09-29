const { json } = require('express'); 
const db = require('../database/connection'); 

module.exports = {
    async listarAnexos(request, response) {
        try {
            return response.status(200).json({confirma: 'Listar Anexos'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async cadastrarAnexos(request, response) {
        try {
            return response.status(200).json({confirma: 'Cadastrar Anexos'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async editarAnexos(request, response) {
        try {
            return response.status(200).json({confirma: 'Editar Anexos'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async apagarAnexos(request, response) {
        try {
            return response.status(200).json({confirma: 'Apagar Anexos'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
};  
