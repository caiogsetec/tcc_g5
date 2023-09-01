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
};  
