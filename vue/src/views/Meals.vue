!<template>
  <div>
      <meal-card class="card" v-for="meal in mealList" :key="meal.id" :meal="meal"></meal-card>
  </div>
</template>

<script>
import AuthService from '../services/AuthService.js'
import MealCard from '../components/MealCard'

export default {
    name: 'meals',
    components: {
        MealCard
    },
    data () {
        return {
            mealList: []
        }
    },
    created() {
        AuthService.getMeals()
        .then((response) => {
            console.log(response.data);
            this.mealList = response.data;
        })
    }
}
</script>

<style>

</style>