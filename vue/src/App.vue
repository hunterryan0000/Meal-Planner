<template>
  <div id="app">
    <div id="nav">
<<<<<<< HEAD
      <div class="container" v-on:click.prevent="myFunction(this)">
        <div class="bar1"></div>
        <div class="bar2"></div>
        <div class="bar3"></div>
      </div>
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
=======
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <router-link class="navbar-brand" v-bind:to="{ name: 'home' }">Home</router-link>
          <router-link class="navbar-brand" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
        </div>
      </nav>
>>>>>>> afd6791ee3ebed8414cb7a90d314add3507b3d1f
    </div>
    <router-view />
  </div>
</template>

<<<<<<< HEAD

<script>

export default {
  methods: {
    myFunction(x) {
// Fix function to be hamburge... if/else ?
      x.classList.add("change");
    }
  }
}
</script>


<style>
#nav {
  background-color: beige;
  display: flex;
  
}
.container {
  display: inline-block;
  cursor: pointer;
  background-color: black;
  
}

.bar1, .bar2, .bar3 {
 width: 35px;
  height: 5px;
  background-color: white;
 margin: 6px 0;
 transition: 0.4s;
}
/* Rotate first bar */
.change .bar1 {
 -webkit-transform: rotate(-45deg) translate(-9px, 6px) ;
 transform: rotate(-45deg) translate(-9px, 6px) ;
}
/* Fade out the second bar */
.change .bar2 {
 opacity: 0;
}
/* Rotate last bar */
.change .bar3 {
  -webkit-transform: rotate(45deg) translate(-8px, -8px) ;
  transform: rotate(45deg) translate(-8px, -8px) ;
}

=======
<style scoped>
#app {
    background-image: url('https://cdn.discordapp.com/attachments/872641665314222100/963544684028895253/wood.jpg');
  height: 100vh;
  width: 100vw;
}

#nav {
  margin-bottom: 5%;
}

</style>

<style>
body{
  background-image: url('https://cdn.discordapp.com/attachments/872641665314222100/963544684028895253/wood.jpg');
}
>>>>>>> afd6791ee3ebed8414cb7a90d314add3507b3d1f
</style>