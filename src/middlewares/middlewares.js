const jwt = require('jsonwebtoken')
const helper = require('../helpers/helpers')
const multer = require('multer')

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, './uploads')
    },
    filename: function (req, file, cb) {
      cb(null, file.fieldname + '-' + Date.now() + file.originalname)
    }
  })

const upload = multer({     
    storage: storage
})

module.exports = {
    verifyAccess: (req, res, next) => {
      let token = req.headers.authorization
      if (token !== undefined) {
        token = token.split(' ')[1]
        jwt.verify(token, process.env.SECRET_KEY, function (err, decode) {
          if (err) {
            console.log(err)
            if(err.name === "JsonWebTokenError"){
              return helper.responseGetAll(res, { message: 'token invalid' }, 401)
            } else if (err.name === "TokenExpiredError") {
              return helper.responseGetAll(res, { message: 'token expired' }, 401)
            }
          }
          if (decode.roleId == 'seller') {
            next()
          } else {
            return helper.responseGetAll(res, { message: 'Anda bukan Admin' }, 401)
          }
        })
      } else {
        return helper.responseGetAll(res, { message: 'token has not been entered' }, 401)
      }
    },
    upload: upload
  }