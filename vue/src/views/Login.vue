<template>
  <div id="login" class="mx-auto col-md-7" >
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal text-center">Please Sign In</h1>
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid username and password!</div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering, please sign in.</div>
      <label for="username" >Username:</label>
      <input
        type="text"
        id="username"
        class="form-control"
        v-model="user.username"
        required
        autofocus
      />
      <br>
      <label for="password">Password:</label>
      <input
        type="password"
        id="password"
        class="form-control"
        v-model="user.password"
        required
      />
      <br>
      <div class="text-center">
        <router-link :to="{ name: 'register' }">Need an account?</router-link>  <br><br>
        <button type="submit" class="btn btn-primary btn-sm">Sign in</button>
      </div>
       <br>
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>

<style scoped>
  h1 {
    margin-top: 5%;
  }
  label {
    font-weight: bold;
}

div .mx-auto {
    border: 5px solid rgb(230, 213, 195);
    background-color: cornsilk;
    border-radius: 10px;
}
</style>
