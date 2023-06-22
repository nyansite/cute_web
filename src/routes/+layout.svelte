<script>
  import { setContext } from "svelte";
  import { onMount } from "svelte";
  let navbar_bg;
  let button_bg;
  let navbar_text;

  let theme = localStorage.getItem("theme");
  localStorage.setItem("theme", theme);
  switch (theme) {
    case "咲夜白":
      navbar_bg = "#D3D3D3";
      button_bg = "#bfbfbf";
      navbar_text = "#000000"; //白底黑字
      break;
    case "baka蓝":
      navbar_bg = "CBF1F5";
      break;
    default:
      theme = "咲夜白";
      settheme();
  }
  setContext('navbar_bg', navbar_bg)
  setContext('button_bg', button_bg)
  setContext('navbar_text', navbar_text)

  var ico = document.getElementById("icon");
  var OriginIco = document.getElementById("icon").href;
  document.addEventListener("visibilitychange", function () {
    if (document.visibilityState === "visible") {
      ico.href = OriginIco;
    } else {
      ico.href = "/cat-space.gif";
    }
  });
  onMount(() => {
    //加载完毕后运行
    document.getElementById("Navbar").style.transition = "0.5s"; //默认0,加载完毕后改成0.5,没有割裂感~~~
  });
</script>

<nav
  id="Navbar"
  style="--navbar_bg: {navbar_bg};--button_bg:{button_bg};--navbar_text{navbar_text}"
>
  <a target="_blank" rel="external" href="/" id="home"
    ><img src="/house-solid.svg" alt="home" /></a
  >

  <a class="nav_button" target="_blank" rel="external" href="/">摸鱼</a>
  <a class="nav_button" target="_blank" rel="external" href="/">摸鱼</a>
  <a class="nav_button" target="_blank" rel="external" href="/">摸鱼</a>
</nav>
<div id="filler" />
<slot />

<style lang="less">
  @import "../theme.less";
</style>
