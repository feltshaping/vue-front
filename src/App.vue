<template>
  <div id="app">
  <h1>finally</h1>
    <ul>
      <li v-for="user in users" :key="user.id">{{ user.name }}</li>
    </ul>
    <router-view />
  </div>
</template>
<script>
import axios from 'axios';

export default {
  name: 'app',
  data() {
    return { users: [] };
  },
  mounted() {
    axios.get('http://43.138.63.235:3000/api/users').then((res) => {
      this.users = res.data;
    });
  },
};
</script>

<style></style>
