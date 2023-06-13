<script>
  import { onMount } from "svelte";
  import jsCookie from "js-cookie";
  export let 导航栏背景 = "#333"; //我草
  export let 按钮背景 = "#333"; //我草

  // navbar_bg = "#7F583F";
  let theme = jsCookie.get("theme");
  if (theme == null) {
    theme = "咲夜白";
  }
  jsCookie.set("theme", theme, { expires: 114, path: "/" }); //单位天,chrome上限400,所以还要续,firefox超过限制不保存
  switch (theme) {
    case "咲夜白":
      导航栏背景 = "#D3D3D3";
      按钮背景 = "#bfbfbf";

      break;
    case "baka蓝":
      导航栏背景 = "CBF1F5";
      break;
  }
  console.log(theme);
</script>

<nav id="Navbar" style="--navbar_bg: {导航栏背景};--button_bg:{按钮背景}">
  <a rel="external" href="/">摸鱼</a>
  <a href="/">摸鱼</a>
  <a href="/">摸鱼</a>
</nav>
<br />
<slot />

<style lang="less">
  @import "../theme.less";
</style>
