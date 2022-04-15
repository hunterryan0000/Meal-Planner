!<template>
  <div v-on:click.prevent="pushMealDetails(meal)">
      <p>{{meal}}</p>
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

</style>