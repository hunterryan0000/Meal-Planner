import axios from 'axios';
import authHeader from './auth-header';

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
    return http.get(`/recipes/all`, { headers: authHeader() });
  },

  addRecipe(recipe) {
    return http.post(`/recipes/add`, recipe, {headers: authHeader()})
  },
  
  editRecipe(recipe){
    return http.put(`/recipes/edit`, recipe, {headers: authHeader()})
  },

  searchRecipe(id) {
    return http.get(`/recipes/search/${id}`, {headers: authHeader()})
  },

  deleteRecipe(recipe) {
    return http.delete(`/recipes/delete`, {headers: authHeader(), data: recipe})
  },

  addMeal(meal) {
    console.log(authHeader())
    return http.post(`/meals/add`, meal, {header: authHeader()})
  },

  getMeals(){
    return http.get(`/meals/all`, { headers: authHeader() })
  },

  searchMeal(id) {
    return http.get(`/meals/search/${id}`, {headers: authHeader()})
  },

  deleteMeal(meal) {
    return http.delete(`/meals/delete`, {headers: authHeader(), data: meal})
  },

  editMeal(meal){
    return http.put(`/meals/edit`, meal, { headers: authHeader() })
  }

}
