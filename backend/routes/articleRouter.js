const articleController = require('../controllers/articleController.js')

const router = require('express').Router()


// routes
router.post('/addArticle', articleController.addArticle)
router.post('/getArticles', articleController.getAllArticles)

module.exports = router
