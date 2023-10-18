const { json } = require('express'); 
const db = require('../database/connection'); 

module.exports = {
    async listarAgendaDenuncias(request, response) {
        try {
            const sql = 'SELECT agd_id, den_id, eqp_id, agd_instrucoes, agd_data, adg_periodo, agd_relatorio FROM agenda_denuncias;'
           
            const usuarios = await db.query(sql);

            return response.status(200).json({confirma: AgendaDenuncias[0]});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    },     
    async cadastrarAgendaDenuncias(request, response) {
        try {
            return response.status(200).json({confirma: 'Cadastrar Agenda Denuncias'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    },     
    async editarAgendaDenuncias(request, response) {
        try {
            return response.status(200).json({confirma: 'Editar Agenda Denuncias'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    },     
    async apagarAgendaDenuncias(request, response) {
        try {
            return response.status(200).json({confirma: 'Apagar Agenda Denuncias'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    },     
};  
