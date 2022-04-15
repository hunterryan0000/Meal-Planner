!<template>
<div>
    <div class="cardWrapper">
        <meal-card class="card" v-for="meal in mealList" :key="meal.id" :meal="meal"></meal-card>
    </div>
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

<style scoped>

/* .cardWrapper{
  display: flex;
  flex-wrap: wrap;
  gap: 40px 40px;
  justify-content:center;
}
.card{
  background-color: white;
  width: 20%;
  padding-bottom: 30px;
  text-align: center;
  box-shadow: 5px 5px 5px #422424;
} */

</style>