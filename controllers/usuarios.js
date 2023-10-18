const { json } = require('express'); 
const db = require('../database/connection'); 

module.exports = {
    async listarUsuarios(request, response) {
        try {
            const sql = 'SELECT usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario, usu_ativo = 1 as usu_ativo FROM usuarios;';
            
            const usuarios = await db.query(sql);

            return response.status(200).json({confirma: usuarios[0] });
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async cadastrarUsuarios(request, response) {
        try {
            return response.status(200).json({confirma: 'Cadastrar Usuarios'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async editarUsuarios(request, response) {
        try {
            return response.status(200).json({confirma: 'Editar Usuarios'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async apagarUsuarios(request, response) {
        try {
            return response.status(200).json({confirma: 'Apagar Usuarios'});
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
};  
