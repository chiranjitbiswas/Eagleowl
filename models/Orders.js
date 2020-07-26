const Sequelize = require('sequelize')
const db = require('../database/db.js')



module.exports = db.sequelize.define(
  'order',
  {
    order_id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    Date: {
      type: Sequelize.STRING
    },
    Phone: {
      type: Sequelize.STRING
    },
    Name: {
      type: Sequelize.STRING
    },
    Amount: {
      type: Sequelize.DECIMAL(4,0),
    },
  },
  {
    timestamps: false
  }
)
