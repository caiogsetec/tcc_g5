const { json } = require('express'); 
const db = require('../database/connection'); 

module.exports = {
    async listarUsuarios(request, response) {
        try {
            const sql = 'SELECT usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario FROM usuarios WHERE usu_ativo = 1;';
            
            const usuarios = await db.query(sql);

            const nReg = usuarios[0].lenght; 

            return response.status(200).json(
                {
                    confirma: 'Sucesso',
                    message: 'Usuários cadastrados',
                    nItens: nReg,
                    itens: usuarios[0]
                }
                    );
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async cadastrarUsuarios(request, response) {
        try {
            const { usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario } = request.body;

            const sql = 'INSERT INTO usuario (usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario FROM usuarios) VALUES (?, ?, ?, ?, ?,);';

            const values = [usu_id, usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario];
            
            const confirmacao = await db.querry(sql, values);

            const usu_id = confirmacao[0].insertId;

            return response.status(200).json(
                {
                    confirma: 'Sucesso',
                    message: 'Cadastro de usuário efetuado.',
                    usu_id
                }
                );
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async editarUsuarios(request, response) {
        try {
            const { usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario } = request.body;

            const { usu_id } = request.params;

            const sql = 'UPDATE usuarios SET usu_nome = ?, usu_email = ?, usu_senha = ?, usu_cpf = ?, usu_telefone = ?, usu_aceite_termos = ?, usu_aceite_politicas = ?, usu_funcionario FROM usuarios, WHERE usu_id = ?;'

            const values = [usu_nome, usu_email, usu_senha, usu_cpf, usu_telefone, usu_aceite_termos, usu_aceite_politicas, usu_funcionario];

            const atualizacao = await db.querry(sql, values);

            return response.status(200).json(
                {
                confirma: 'Sucesso',
                message: 'Usuário' + usu_id + "atualizado com sucesso!",
                registrosAtualizados: atualizacao[0].affectedRows
                }
                );
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
    async apagarUsuarios(request, response) {
        try {
            const { usu_id } = request.params;

            const sql = 'DELETE FROM usuarios WHERE usu_id = ?';

            const values = [usu_id];

                await db.querry(sql, values);

            return response.status(200).json(
                {
                    confirma: 'Sucesso',
                    message: 'Usuário com id' + usu_id + 'excluído com sucesso'
                }
                );
        } catch (error) {
            return response.status(500).json({confirma: 'Erro', message: error});
        }
    }, 
};  
