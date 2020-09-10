const express = require('express')
const categoryController = require('../controllers/category')
const router = express.Router()
const { upload, verifyAccess } = require('../middlewares/middlewares')

router
  .post('/Category', verifyAccess, upload.single('image'), categoryController.insertCategory)
  .get('/Category', categoryController.category)
//   .patch('/registercustomer/:email', categoryController.updatePassword)

module.exports = router