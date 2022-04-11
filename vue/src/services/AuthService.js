import axios from 'axios';

export default {

  login(user) {
    return axios.post('/login', user)
  },

  register(user) {
    return axios.post('/register', user)
  },

  findIngredient(term) {
    return axios.get(`/ingredient/search/${term}`)
  }

}
