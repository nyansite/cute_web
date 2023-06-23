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
  <div id="sidebar">
    <div>公告</div>
    <div class="hr" />
  </div>
</div>

<style lang="less">
  #page {
    display: grid;
    grid-template-columns: 7fr 1fr;
    gap: 0 2%;
    margin: 0 10%;
    border: 0 solid;
    border-radius: 1em;
    opacity: 0.8;
    background-color: var(--navbar_bg);
  }

  #sidebar {
    border-left: solid var(--button_bg);
    height: 10em;
    text-align: center;
  }
  .hr{//别问我为什么不用html <hr>
    display: flex;
    color: pink;
    width: 80%;
    margin: 0 auto;
    &::after, &::before{
      content: '';
      width: 100%;
      border: 1px solid $color;
    }
  }
</style>
