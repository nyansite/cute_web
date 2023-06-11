<script>
  import { onMount } from "svelte";

  let navbar_bg = "#333"; //默认主题颜色
  onMount(() => {
    // navbar_bg = "#7F583F"; //更改颜色
  });
</script>

<nav id="Navbar" style="--navbar_bg: {navbar_bg}">
  <a rel="external" href="/">摸鱼</a>
  <a href="/">摸鱼</a>
  <a href="/">摸鱼</a>
</nav>
<slot  />

<style lang="less">
  @import "../theme.less";
</style>
