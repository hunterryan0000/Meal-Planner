<template>
<div>
  <router-link v-bind:to="{name: 'create-recipe'}"> Create Recipe </router-link>
   <!-- goes to create-recipe -->

  <p> its working </p>
</div>
</template>

<script>
//import AuthService from '../services/AuthService.js'

export default  {
  name: 'recipes',
  data () {

  },
  // methods: {
  //   created() {
  //     AuthService.getRecipes
  //     .then()
  //   }
  // }

}
</script>

<style>

</style>