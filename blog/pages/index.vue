<template>
  <div class="container">
    <div v-for='post in posts' :key='post.id'>
      <h2 v-html='post.title.rendered'></h2>
      <div v-html='post.content.rendered'></div>
    </div>
  </div>
</template>

<script>
export default {
  async asyncData(context) {
    const res = await fetch(`${process.env.API_URL}/wp-json/wp/v2/posts`)
    const posts = await res.json()

    return { posts }
  },
}
</script>
