<script>
  import jsCookie from "js-cookie";
  let navbar_bg;
  let button_bg;
  let navbar_text;

  let theme = jsCookie.get("theme");
  if (theme == null) {
    theme = "咲夜白";
  }
  jsCookie.set("theme", theme, { expires: 114, path: "/" }); //单位天,chrome上限400,所以还要续,firefox超过限制不保存
  switch (theme) {
    case "咲夜白":
      navbar_bg = "#D3D3D3";
      button_bg = "#bfbfbf";
      navbar_text = "#000000"; //白底黑字
      break;
    case "baka蓝":
      navbar_bg = "CBF1F5";
      break;
  }
  console.log(theme);
</script>

<nav
  id="Navbar"
  style="--navbar_bg: {navbar_bg};--button_bg:{button_bg};--navbar_text{navbar_text}"
>
<div id="logo"><img src="/house-solid.svg" alt="logo" /></div>
  
  <a rel="external" href="/">摸鱼</a>
  <a href="/">摸鱼</a>
  <a href="/">摸鱼</a>
</nav>
<br />
<slot />

<style lang="less">
  @import "../theme.less";
</style>
