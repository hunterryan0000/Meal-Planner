<template>
  <div>
  <h1> Create Recipe </h1>
  <form>
    <label for="recipe-name" >Recipe Name:</label>
    <input id="recipe-name" v-model="name">

    <label for="description">Description:</label>
    <textarea id="description" v-model="description"> </textarea>

    <label for="instructions">Instructions:</label>
    <textarea id="instructions" v-model="instructions"> </textarea>

    <label for="serving-size">Serving Size:</label>
    <select id="serving-size" v-model="serving">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
    </select>

    <label for="add-ingredient">Ingredient:</label>
    <input list="ingredient-list" id="add-ingredient" v-model="ingredient" v-on:change="searchIngredientList()">
    <button id="add-ingredient" v-on:click.prevent="addIngredientToArray()">Add</button>
    <datalist id="ingredient-list">
    </datalist>



    <p>Ingredients</p>
    <ul id="ingredient-list">
        <li v-for="ingredient in ingredients" v-bind:key="ingredient">{{ingredient}}</li>
    </ul>

    <label for="add-appliance">Appliance:</label>
    <input id="add-appliance" v-model="appliance">
    <button id="add-appliance" v-on:click.prevent="addApplianceToArray()">Add</button>

    <p>Appliances</p>
    <ul id="appliance-list">
        <li v-for="appliance in appliances" v-bind:key="appliance">{{appliance}}</li>
    </ul>

    <p>Difficulty:</p>
    <input type="radio" id="1" value="1" name="difficulty" v-model="difficulty">
    <label for="1">1</label>
    <input type="radio" id="2" value="2" name="difficulty" v-model="difficulty">
    <label for="1">2</label>
    <input type="radio" id="3" value="3" name="difficulty" v-model="difficulty">
    <label for="1">3</label>
    <input type="radio" id="4" value="4" name="difficulty" v-model="difficulty">
    <label for="1">4</label>
    <input type="radio" id="5" value="5" name="difficulty" v-model="difficulty">
    <label for="1">5</label>

    <button v-on:click.prevent="consoleLogRecipeList()">Save to Recipe List</button>

  </form>

  </div>
</template>

<script>
import AuthService from '../services/AuthService.js'

export default {
    name: 'create-recipe',
    data () {
        return {
        ingredients: [],
        ingredient: '',

        appliances: [],
        appliance: '',

        name: '',
        description: '',
        instructions: '',
        serving: 0,
        difficulty: 0,

        ingredientList: []
        }
    },
    methods: {
        addIngredientToArray(){
            this.ingredient


            this.ingredients.push(this.ingredient);
            console.log(this.ingredients);
        },
        addApplianceToArray(){
            this.appliances.push(this.appliance);
        },
        consoleLogRecipeList(){
            console.log(this.getRecipe);
            console.log(typeof this.difficulty);
        },
        searchIngredientList(){
            AuthService.findIngredient(this.ingredient)
            .then((response) => {
                this.ingredientList = response.data;
            })
            console.log(this.ingredientList);
        }
    },
    computed: {
        getRecipe() {
            return {
                name: this.name,
                description: this.description,
                instructions: this.instructions,
                serving: Number(this.serving),
                difficulty: Number(this.difficulty),
                ingredients: this.ingredients,
                appliances: this.appliances
            }
        }
    }
}
</script>

<style>

</style>