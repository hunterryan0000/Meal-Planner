<template>
  <div id="app">
    <div id="nav">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <router-link class="navbar-brand" v-bind:to="{ name: 'home' }">Home</router-link>
          <router-link class="navbar-brand" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
        </div>
      </nav>
    </div>
    <router-view />
  </div>
</template>

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
</style>