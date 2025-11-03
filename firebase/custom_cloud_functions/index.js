const admin = require("firebase-admin/app");
admin.initializeApp();

const createInscricao = require("./create_inscricao.js");
exports.createInscricao = createInscricao.createInscricao;
