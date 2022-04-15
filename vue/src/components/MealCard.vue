!<template>
  <div v-on:click.prevent="pushMealDetails(meal)">
      <span>{{meal.mealName}}</span>
      <p>{{meal.mealDescription}}</p>
  </div>
</template>

<script>
export default {
    name: 'meal-card',
    props: {
        meal: Object
    },
    methods: {
        pushMealDetails(meal){
            this.$router.push('/meals/'+meal.id)
        }
    }
}
</script>

<style>
span{
    font-weight: bolder;
    font-size: 150%;
    line-height: 30px;
}

p{
    padding-top: 30px;
    padding-left: 15px;
    padding-right: 15px;
    font-size: 100%;
}

</style>