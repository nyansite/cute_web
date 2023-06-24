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
    <div id="user">
      <img alt="头像" src="/cat-space.gif" />
      <p>用户名</p>
      <div id="count">
        <div>
          <p>114514</p>
          关注
        </div>
        <div>
          <p>114514</p>
          粉丝
        </div>
        <div>
          <p>114514</p>
          投稿
        </div>
      </div>
    </div>
    <div class="hr" />
    <div id="bulletin">
      <div>公告</div>
      <p>我是公告</p>
      <p>我是公告</p>
      <p>我是公告</p>
      <p>我是公告</p>
      <p>我是公告</p>
      <p>我是公告</p>
      <p>我是公告</p>
      <p>我是公告</p>
    </div>
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
    height: min-content;
    #user {
      margin-top: 1em;
      img {
        display: block;
        border-radius: 50%;
        width: 40%;
        margin: 0 auto;
      }
      p {
        text-align: center;
        font-weight: bolder;
      }
      #count {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        div {
          text-align: center;
          p {
            font-weight: bolder;
            margin: 0;
          }
        }
      }
    }
    #bulletin {
      div {
        text-align: center;
        font-weight: bolder;
      }
    }
  }
  //别问我为什么不用html <hr>
  .hr {
    display: flex;
    color: var(--button_bg);
    width: 80%;
    margin: 1em auto;
    &::after,
    &::before {
      content: "";
      width: 100%;
      border: 1px solid $color;
    }
  }
</style>
