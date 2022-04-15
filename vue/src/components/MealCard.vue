<template>
  <div v-on:click.prevent="pushMealDetails(meal)">
      <h3>{{meal.name}}</h3>
      <p>{{meal.description}}</p>
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
h3{
    padding-top: 5%;
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