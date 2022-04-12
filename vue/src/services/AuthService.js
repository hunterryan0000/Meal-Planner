import axios from 'axios';

const http = axios.create({
  baseURL: 'http://localhost:3000'
});

export default {

  login(user) {
    return axios.post('/login', user)
  },

  register(user) {
    return axios.post('/register', user)
  },

  findIngredient(term) {
    return http.get(`/ingredient/search/${term}`)
  },

  findAppliance(term) {
    return http.get(`/appliance/search/${term}`)
  },

  getRecipes() {
    return http.get(`/recipes/all`)
  }

}
