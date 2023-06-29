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
  <div id="head">
    <img src="/cat-space.gif" alt="" />
    <div id="channel">
      <a href="/">番剧</a>
      <a href="/">电影</a>
      <a href="/">游戏</a>
      <a href="/">音乐</a>
      <a href="/">音MAD</a>
      <a href="/">MMD</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
      <a href="/">占位符</a>
    </div>
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
          动态
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
    <div id="ad">广告位招租</div>
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
  #head {
    margin-top: 1em;
    margin-left: 1em;
    height: 4em;
    display: flex;
    img {
      margin: 0 1.5em;
    }
    #channel {
      display: grid;
      grid-template-columns: repeat(12, 1fr);
      column-gap: 1em;
      width: 100%;

      a {
        margin: 0;
        text-align: center;
        border: solid black; //TODO 换配色
        border-radius: 0.4em;
        width: 100%;
        height: min-content;
        white-space: nowrap;
      }
    }
  }

  #sidebar {
    border-left: solid var(--button_bg);
    height: min-content;
    text-align: center;
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
      margin: 0.5em;
    }

    #ad {
      writing-mode: vertical-rl;
      display: inline-block;
      letter-spacing: 2em;
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
