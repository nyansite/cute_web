<script>
  import { onMount } from "svelte";
  import jsCookie from "js-cookie";
  export let 导航栏背景 = "#333"; //我草
  onMount(() => {
    // navbar_bg = "#7F583F"; 
    let theme = jsCookie.get("theme");
    if (theme == null) {
      theme = "black";
    }
    jsCookie.set("theme", theme, { expires: 60, path: "/" }); //单位天,chrome上限400,所以还要续
    switch (theme) {
      case "black":
        导航栏背景 = "#333";
        break;
    }
    console.log(theme);
  });
</script>

<nav id="Navbar" style="--navbar_bg: {导航栏背景}">
  <a rel="external" href="/">摸鱼</a>
  <a href="/">摸鱼</a>
  <a href="/">摸鱼</a>
</nav>
<slot />

<style lang="less">
  @import "../theme.less";
</style>
