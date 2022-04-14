!<template>
<!-- <div class="root">
  <div class="header">
      <h3 class="recipe_header">All Recipes</h3>
      <h3 class="meal_header">Meal List</h3>
  </div>
  <div class="wrapper">

          <draggable class="list-group" :list="recipeList" group="recipes" id="recipe_list">
              <recipe-panel v-for="recipe in recipeList" :key="recipe.id" :recipe="recipe"></recipe-panel>
          </draggable>

          <draggable class="list-group" :list="mealList" group="recipes" id="meal_plan">
              <recipe-panel v-for="recipe in mealList" :key="recipe.id" :recipe="recipe"></recipe-panel>
          </draggable>

  </div>
</div> -->

<div class="parent">

    <h3 class="recipe_header">All Recipes</h3> 
    <div class="meal_header">
         <h3>Meal</h3>
         <button>Add</button>
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

        <label for="servings">Servings:</label>
        <b-form-select id="servings" v-model="servings" :options="servingOptions">
            <template #first>
                <b-form-select-option :value="null" disabled>-- How many servings does this recipe make? --</b-form-select-option>
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
  name: 'create-meal',
  components: {
    RecipePanel,
    draggable
  },
  data () {
      return{
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
      AuthService.getRecipes()
      .then((response) => {
        console.log(response.data);
        this.recipeList = response.data;
      })
  },
  

}
</script>

<style scoped>
/* div{
    border: 3px solid green;
}
.wrapper{
    display: flex;
    height: 80vh;
    margin-left: 5%;
    margin-right: 5%;
    gap: 30px;
}
.wrapper #recipe_list, .wrapper #meal_plan{
    width: 50%;
    overflow-y: auto;

}
#recipe_list,  #meal_plan{
    display: flex;
    flex-direction: column;
}
#recipe_list *, #meal_plan *{
    height: 200px;
}
.root{
    display: flex;
    flex-direction: column;
}
.header{
    display: flex;
    justify-content: space-evenly;
    margin-left: 5%;
    margin-right: 5%;
    gap: 30px;

}
*/

#recipe_list, #meal_plan{
    width: 100%;
    overflow-y: auto;
    background-color: white;
}

.recipe_header, .meal_header, .recipe_meal_header{
    color: white;
    width: 100%;
    text-align: center;
} 

.parent {
display: grid;
grid-template-columns: repeat(4, 1fr);
grid-template-rows: .25fr repeat(2, 1.5fr) .25fr repeat(2, 1fr);
grid-column-gap: 0px;
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
label{
    color: white;
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
}
.meal_header button{
    grid-area: 1/10/1/10;
}

</style>