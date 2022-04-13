<template>
  <div id="register" class="mx-auto col-md-7" >
    <form class="form-register" @submit.prevent="register">
      <h1 class="h3 mb-3 font-weight-normal text-center">Create Account</h1>
      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <label for="username">Username: </label>
      <input
        type="text"
        id="username"
        class="form-control"
        v-model="user.username"
        required
        autofocus
      />
      <br>
      <label for="password">Password: </label>
      <input
        type="password"
        id="password"
        class="form-control"
        v-model="user.password"
        required
      />
      <br>
      <label for="password">Confirm Password: </label>
      <input
        type="password"
        id="confirmPassword"
        class="form-control"
        v-model="user.confirmPassword"
        required
      />
      <br>
      <div class="text-center">
        <router-link :to="{ name: 'login' }">Have an account?</router-link>   <br><br>
        <button class="btn btn-sm btn-primary" type="submit">
          Register
        </button>
      </div>
       <br>
    </form>
  </div>
</template>

<script>
import authService from '../services/AuthService';

export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Password & Confirm Password do not match.';
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: '/login',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'Bad Request: Validation Errors';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },
  },
};
</script>

<style scoped>
  h1 {
    margin-top: 5%;
  }
</style>
