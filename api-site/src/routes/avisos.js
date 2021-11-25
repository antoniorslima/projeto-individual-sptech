var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.get("/", function(req, res) {
    avisoController.testar(req, res);
});

router.get("/listar", function(req, res) {
    avisoController.listar(req, res);
});

router.get("/quantidade", function(req, res) {
    avisoController.quantidade(req, res);
});

router.get("/telaSerie", function(req, res) {
    avisoController.telaSerie(req, res);
});

router.get("/listar/:idUsuario", function(req, res) {
    avisoController.listarPorUsuario(req, res);
});

router.get("/pesquisar/:descricao", function(req, res) {
    avisoController.pesquisarDescricao(req, res);
});

router.post("/publicar/:idUsuario", function(req, res) {
    avisoController.publicar(req, res);
});

router.delete("/avisos/deletar/:idAviso", function(req, res) {
    avisoController.deletar(req, res);
});

router.put("/avisos/editar/:idAviso", function(req, res) {
    avisoController.editar(req, res);
});

module.exports = router;