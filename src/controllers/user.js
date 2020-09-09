const userModel = require('../models/user')
const helper = require('../helpers/helpers')
const bcrypt = require('bcryptjs')
const jwt = require('jsonwebtoken')

module.exports = {
    updatePassword: (req, response) => {
      const email = req.params.email
      const {
        password,
        newpassword
      } = req.body
      if (password === newpassword) {
        const data = {
          password
        }
        bcrypt.genSalt(10, function (err, salt) {
          bcrypt.hash(data.password, salt, async function (err, hash) {
              const passwordFormat = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/
                  if (password.match(passwordFormat)) {
                      data.password = hash
                      userModel.updatePassword(email, data)
                      .then(result => {
                          const historyResult = result
                          helper.responseGetAll(response, historyResult, 200)
                      })
                      .catch(err => {
                        helper.responseGetAll(response, {message:'Gagal mengupdate password'}, 501)
                        console.log(err)
                      })
                  } else {
                      const message = 'password harus 8 hingga 15 karakter yang berisi setidaknya satu huruf kecil, satu huruf besar, satu digit angka, dan satu karakter khusus'
                      helper.responseGetAll(response, {message}, 501)    
                  }
          })
        })
      } else {
        const message = 'password tidak sama dengan newpassword'
        helper.responseGetAll(response, {message}, 501)    
      }
    },
    registerCustomer: (req, response) => {
      const {
        name,
        email,
        password
      } = req.body
      const data = {
        name,
        email,
        password,
        roleId: 2
      }
      bcrypt.genSalt(10, function (err, salt) {
        bcrypt.hash(data.password, salt, async function (err, hash) {
            await userModel.cekUserByEmail(email)
            .then(res => {
                const result = res
          if (result.length !== 0) {
            const message = 'data sudah ada'
            helper.responseGetAll(response, {message}, 501)
          } 
          else {
            const mailFormat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/
            const passwordFormat = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/
            if (email.match(mailFormat)) {
                if (password.match(passwordFormat)) {
                    data.password = hash
                    userModel.registerCustomer(data)
                    .then(result => {
                        const historyResult = result
                        helper.responseGetAll(response, historyResult, 200)
                    })
                    .catch(err => console.log(err))
                } else {
                    const message = 'password harus 8 hingga 15 karakter yang berisi setidaknya satu huruf kecil, satu huruf besar, satu digit angka, dan satu karakter khusus'
                    helper.responseGetAll(response, {message}, 501)    
                }
            } else {
                const message = 'Format email salah'
                helper.responseGetAll(response, {message}, 501)
            }
          }
            })
        })
      })
    },
    login: (req, res) => {
      const { email, password } = req.body
      userModel.cekUserByEmail(email)
        .then(result => {
          if (result.length === 0) return helper.responseGetAll(res, { message: 'Email Or Password Wrong' }, 501)
          const user = result[0]
          const hash = user.password
          bcrypt.compare(password, hash)
            .then(resCompare => {
              if (!resCompare) return helper.responseGetAll(res, { message: 'Email Or Password Wrong' }, 501)
              const payload = {
                id: user.id,
                email: user.email,
                roleId: user.roleId
              }
              jwt.sign(payload, process.env.SECRET_KEY, { expiresIn: '1h' }, function (err, token) {
                if (err) return console.log(err)
                user.token = token
                delete user.password
                helper.responseGetAll(res, user, 200)
              })
            })
        })
        .catch(err => console.log(err))
    },
    resetPassword: (req, res) => {
     const {email, password} = req.body
     userModel.cekUserByEmail(email)
        .then(result => {
          if (result.length === 0) {
            console.log('gagal')
            return helper.responseGetAll(res, { message: 'Email tidak terdaftar' }, 501)
          }
          console.log('berhasil')
          helper.responseGetAll(res, {message: 'berhasil'}, 200)
        })
        .catch(err => console.log(err))
    }
  }
  