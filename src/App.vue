<template>
  <div id="app">
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
    axios.get('api/users').then((res) => {
      this.users = res.data;
    });
  },
};
</script>

<style></style>
