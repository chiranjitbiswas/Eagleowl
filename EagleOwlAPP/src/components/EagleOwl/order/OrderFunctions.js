import axios from 'axios'

export const getList = () => {
  return axios
    .get('/orders/allOrders', {
      headers: { 'Content-Type': 'application/json' }
    })
    .then(res => {
      return res.data
    })
}

export const getPhones = () => {
  return axios
    .get('/orders/orderPhoneNos', {
      headers: { 'Content-Type': 'application/json' }
    })
    .then(res => {
      return res.data
    })
}

export const getOrder = () => {
  return axios
    .get('/orders/orderCount', {
      headers: { 'Content-Type': 'application/json' }
    })
    .then(res => {
      return res.data
    })
}

export const getAmount = () => {
  return axios
    .get('/orders/amountCount', {
      headers: { 'Content-Type': 'application/json' }
    })
    .then(res => {
      return res.data
    })
}
