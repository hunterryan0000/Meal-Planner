<template>
  <div id="app">
    <b-navbar toggleable="lg" type="light" id="nav">
        <router-link class="navbar-brand" v-bind:to="{ name: 'home' }">Home</router-link>
        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
        <b-collapse id="nav-collapse" is-nav>
          <!-- Right aligned nav items -->
          <b-navbar-nav class="ml-auto">
        
            <b-nav-item-dropdown text="Recipes" right v-if="$store.state.token != ''">
              <b-dropdown-item><router-link v-bind:to="{ name: 'recipes' }">View All Recipes</router-link></b-dropdown-item>
              <b-dropdown-item><router-link v-bind:to="{ name: 'create-recipe' } ">Add Recipe</router-link></b-dropdown-item>
            </b-nav-item-dropdown>

            <b-nav-item-dropdown text="Meals" right v-if="$store.state.token != ''">
              <b-dropdown-item><router-link :to="{ name: 'meals'}">View All Meals</router-link></b-dropdown-item>
              <b-dropdown-item><router-link :to="{ name: 'create-meal'}">Create Meal</router-link></b-dropdown-item>
            </b-nav-item-dropdown>

            <b-nav-item-dropdown text="Meal Plans" right v-if="$store.state.token != ''">
              <b-dropdown-item><router-link :to="{ name: 'meal-plans'}">View all Plans</router-link></b-dropdown-item>
              <b-dropdown-item><router-link :to="{ name: 'create-mealplan'}">Create Plan</router-link></b-dropdown-item>
            </b-nav-item-dropdown>

            <router-link class="nav-link" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>

          </b-navbar-nav>
        </b-collapse>
      </b-navbar>
    <router-view />
  </div>
</template>


<style>
body{
  background-image: url('https://cdn.discordapp.com/attachments/872641665314222100/963544684028895253/wood.jpg');
}

#nav {
  margin-bottom: 5%;
  background-color: cornsilk;
}

.parent {
    border: 5px solid rgb(230, 213, 195);
    background-color: cornsilk;
    border-radius: 10px;
}
</style>