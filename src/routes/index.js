const express = require('express')
const router = express.Router()
const user = require('./user')
const category = require('./category')

router
.use('/users', user)
.use('/categories', category)

module.exports = router