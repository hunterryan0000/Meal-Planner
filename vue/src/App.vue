<template>
  <div id="app">
    <div id="nav">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
          <router-link class="navbar-brand" v-bind:to="{ name: 'home' }">Home</router-link>
          <div class="" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <router-link class="nav-link" v-bind:to="{ name: 'recipes' }" v-if="$store.state.token != ''">Recipes</router-link>
              </li>
              <li class="nav-item">
                <router-link class="nav-link" v-bind:to="{ name: 'create-recipe' } " v-if="$store.state.token != ''">Add Recipe</router-link>
              </li>
              <li class="nav-item">
                <router-link class="nav-link" :to="{ name: 'meals'}" v-if="$store.state.token != ''">Meals</router-link>
              </li>
              <li class="nav-item">
                <router-link class="nav-link" :to="{ name: 'create-meal'}" v-if="$store.state.token != ''">Create Meal</router-link>
              </li>
              <li class="nav-item">
                <router-link class="nav-link" :to="{ name: 'mealplans'}" v-if="$store.state.token != ''">Plans</router-link>
              </li>
              <li class="nav-item">
                <router-link class="nav-link" :to="{ name: 'create-mealplan'}" v-if="$store.state.token != ''">Create Plan</router-link>
              </li>
              <li class="nav-item">
                <router-link class="nav-link" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
              </li>
            </ul>

          </div>
        </div>
      </nav>
    </div>
    <router-view />
  </div>
</template>

<style scoped>
/* #app {
  background-image: url('https://cdn.discordapp.com/attachments/872641665314222100/963544684028895253/wood.jpg');
  height: 100vh;
  width: 100vw;
} */

/* #nav {
  margin-bottom: 5%;
} */

</style>

<style>
body{
  background-image: url('https://cdn.discordapp.com/attachments/872641665314222100/963544684028895253/wood.jpg');
}

#nav {
  margin-bottom: 5%;
  background-color: cornsilk;
}

</style>