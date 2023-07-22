<script>
  import { onMount } from "svelte";
  var islogin = false;
  onMount(async () => {
    const res = await fetch("http://localhost:8000/api/user_status", {
      method: "GET",
      credentials:"include",
    });
    switch (res.status) {
      case 200:
        islogin = true;
        window.location.replace("/")
        break;
    }
  });
  async function onreg() {
    let response = await fetch("http://localhost:8000/api/register", {
      method: "POST",
      body: new FormData(formElem),
      credentials:"include",
    });
    // let result = await response.json();
    switch (response.status) {
      case 200:
        alert("200注册成功");
        break;
      case 601:
        alert("601用户名重复");
        break;
      case 602:
        alert("602邮箱重复");
        break;
    }
  }
</script>

{#if islogin}
  <p>你永远无法登录一个已经登录的网站,因为你已经登录</p>
  <p>正在跳转，如果不能跳转，<a href="/">点此</a></p>
{:else}
  <form id="formElem">
    <label for="username">用户名</label>
    <input type="text" name="username" id="username" required />

    <label for="email">邮箱</label>
    <input type="email" name="email" id="email" required />

    <label for="passwd">密码</label>
    <input type="password" id="passwd" name="passwd" minlength="4" required />
  </form>
  <input type="submit" value="注册" on:click={onreg} />
{/if}
