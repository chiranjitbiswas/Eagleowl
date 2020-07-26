const express = require('express')
const orderRouter = express.Router()
const Sequelize = require('sequelize')
const db = require('../database/db.js')
const cors = require('cors')
const Order = require('../models/Orders.js')
orderRouter.use(cors())


orderRouter.get('/allOrders', function (req, res, next) {
  Order.findAll({
    order: [
      ['Phone', 'ASC'],
    ]
  })
    .then(orders => {
      true
      res.json(orders)
    })
    .catch(err => {
      res.send('error: ' + err)
    })
})



orderRouter.get('/orderPhoneNos', function (req, res, next) {
  Order.findAll({
    attributes: [[db.sequelize.fn('DISTINCT', db.sequelize.col('Phone')), 'Phone'],'Name'],
    order: [
      ['Phone', 'ASC'],
    ]
 
  })
    .then(order => {
      if (order) {
        res.json(order)
      } else {
        res.send('Table empty!')
      }
    })
    .catch(err => {
      res.send('error: ' + err)
    })
})
orderRouter.get('/orderCount', function (req, res, next) {
  Order.count()
    .then(order => {
      if (order) {
        res.json(order)
      } else {
        res.send('Table empty!')
      }
    })
    .catch(err => {
      res.send('error: ' + err)
    })
})



orderRouter.get('/amountCount', function (req, res, next) {
  Order.findAll({
    attributes: [[db.sequelize.fn('sum', db.sequelize.col('Amount')), 'total_amount'],]
  })
    .then(order => {
      if (order) {
        res.json(order)
      } else {
        res.send('Table empty!')
      }
    })
    .catch(err => {
      res.send('error: ' + err)
    })
})

module.exports = orderRouter

