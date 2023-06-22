<script>
  import { getContext } from "svelte";
  let navbar_bg = getContext("navbar_bg");
  let button_bg = getContext("button_bg");
  let navbar_text = getContext("navbar_text");
</script>

<div
  id="page"
  style="--navbar_bg: {navbar_bg};--button_bg:{button_bg};--navbar_text:{navbar_text}"
>
  <div id="main">
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
    <p>阿巴阿巴</p>
  </div>
  <div id="sidebar">公告</div>
</div>

<style lang="less">
  #page {
    display: grid;
    grid-template-columns: 7fr 1fr;
    gap: 0 2%;
    margin: 0 10%;
  }
  #sidebar {
    border-left: solid var(--button_bg);
    height: 10em;
  }
</style>
