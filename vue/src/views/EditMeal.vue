<template>
  <div class="parent">

    <h3 class="recipe_header">All Recipes</h3> 
    <div class="meal_header">
         <h3>Meal</h3>
         <button v-on:click.prevent="submitMeal()">Save</button>
    </div>
    <h3 class="recipe_meal_header">Recipes</h3>
    <form class="form" action="">

    <!-- meal name -->
        <label for="meal-name">Meal Name:</label>
            <b-form-input id="meal-name" v-model="mealName" trim></b-form-input>

    <!-- meal description -->
        <label for="description">Description:</label>
        <b-form-textarea
            id="description"
            v-model="mealDescription"
            placeholder=""
            rows="3"
            max-rows="6"
        ></b-form-textarea>
        
        <label for="mealType">Meal Type:</label>
        <b-form-select placeholder="Meal Type" v-model="typeOfMeal" :options="typeOptions" id="mealType">
                    <template #first>
                        <b-form-select-option :value="null" disabled>Meal Type</b-form-select-option>
                    </template>
        </b-form-select>

        <label for="servings">How many meals will this last?</label>
        <b-form-select id="servings" v-model="servings" :options="servingOptions">
            <template #first>
                <b-form-select-option :value="null" disabled>-- How many meals will this last? --</b-form-select-option>
            </template>
        </b-form-select>    
    
    
    </form>
    <draggable class="list-group" :list="recipeList" group="recipes" id="recipe_list">
              <recipe-panel v-for="recipe in recipeList" :key="recipe.id" :recipe="recipe"></recipe-panel>
    </draggable>
    <draggable class="list-group" :list="mealList" group="recipes" id="meal_plan">
              <recipe-panel v-for="recipe in mealList" :key="recipe.id" :recipe="recipe"></recipe-panel>
    </draggable>
</div>
</template>

<script>
import AuthService from '../services/AuthService.js'
import RecipePanel from '../components/RecipePanel.vue';
import draggable from 'vuedraggable';


export default {
    name: 'edit-meal',
    components: {
        RecipePanel,
        draggable
    },
    data() {
        return {
            meal: null,
            recipeList: [] ,
            mealList: [],
            mealName: '',
            mealDescription: '',
            typeOfMeal: '',
            typeOptions: [
                {value: 'Breakfast', text: 'Breakfast'},
                {value: 'Lunch', text: 'Lunch'},
                {value: 'Dinner', text: 'Dinner'},
                {value: 'Snack', text: 'Snack'},
                {value: 'Other', text: 'Other'}
            ],
            servings: null,
            servingOptions: [
                {value: '1', text: '1'}, 
                {value: '2', text: '2'},
                {value: '3', text: '3'},
                {value: '4', text: '4'},
                {value: '5', text: '5'},
                {value: '6', text: '6'},
                {value: '7', text: '7'},
                {value: '8', text: '8'},
                {value: '9', text: '9'},
                {value: '10', text: '10'},
                {value: '11', text: '11'},
                {value: '12', text: '12'},
                {value: '13', text: '13'},
                {value: '14', text: '14'},
                {value: '15', text: '15'},
            ]
        }
    },
    created() {
        // console.log("searching");
        AuthService.searchMeal(this.$route.params.id)
        .then((response) => {
            // console.log(response.data);
            this.meal = response.data;
            this.mealDescription = response.data.description;
            this.mealName = response.data.name;
            this.typeOfMeal = response.data.type_of_meal;
            this.servings = response.data.servings;
            AuthService.getRecipes().then((response) => {
                this.recipeList = [];
                this.mealList = [];
                for(let recipe of response.data){
                    // console.log(this.meal.mealsRecipesList);
                    if(this.meal.mealsRecipesList.filter(e => e.recipe_id == recipe.id).length > 0){
                        this.mealList.push(recipe);
                    } else{
                        this.recipeList.push(recipe);
                    }
                    // console.log(recipe);
                }
            })
        })
    },
    methods: {
        submitMeal() {
            if(this.mealName !== ''){
                AuthService.editMeal(this.getMeal)
                .then((response) => {
                    // console.log(response.data);
                    this.$router.push('/meals/'+response.data.id);
                })
                this.$router.push({ name: 'meals' });
            }
        }
    },
    computed: {
        getMeal(){
          return {
              id: this.meal.id,
              name: this.mealName,
              description: this.mealDescription,
              type_of_meal: this.typeOfMeal,
              servings: this.servings,
              mealsRecipesList: this.getRecipesList
          }
      },
      getRecipesList(){
          let list = [];
          for(let item of this.mealList){
              list.push({recipe_id: item.id});
          }
          return list;
      }
    }
}
</script>

<style scoped>
.parent{
    margin-left: 30px;
    margin-right: 30px;
}
#recipe_list, #meal_plan{
    width: 100%;
    overflow-y: auto;
    background-color: white;
}

.recipe_header, .meal_header, .recipe_meal_header{
    width: 100%;
    text-align: center;
} 

.parent {
display: grid;
grid-template-columns: repeat(4, 1fr);
grid-template-rows: .25fr repeat(2, 1.5fr) .25fr repeat(2, 1fr);
grid-column-gap: 15px;
grid-row-gap: 0px;
height: 80vh;
}

.recipe_header { grid-area: 1 / 1 / 2 / 3; }
.meal_header { grid-area: 1 / 3 / 2 / 5; }
.form { grid-area: 2 / 3 / 4 / 5; }
.recipe_meal_header { grid-area: 4 / 3 / 5 / 5; }
#meal_plan { grid-area: 5 / 3 / 7 / 5; }
#recipe_list { grid-area: 2 / 1 / 7 / 3; }

#recipe_list *, #meal_plan *{
    height: 100px;
    border: 2px solid black;
}

.meal_header button{
    display: block;
    right: 15px;
    top: 17vh;
}
.meal_header {
    display: grid;
    grid-template-columns: 10fr, 1fr;
    grid-template-rows: 1fr
}
.meal_header h3{
    grid-area: 1/1/1/10;
    padding-left: 100px;
}
.meal_header button{
    grid-area: 1/10/1/10;
                
                
    
                    cursor: pointer;
                    outline: 0;
                    color: #fff;
                    background-color: green;
                    border-color: green;
                    display: inline-block;
                    font-weight: 400;
                    line-height: 1.5;
                    text-align: center;
                    border: 1px solid transparent;
                    padding: 6px 12px;
                    font-size: 16px;
                    border-radius: .25rem;
                
}
</style>
