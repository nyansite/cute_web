<script>
  import { onMount } from "svelte";
  var islogin = false;
  onMount(async () => {
    const res = await fetch("/api/user_status", {
      method: "GET",
    });
    switch (res.status) {
      case 200:
        islogin = true;
        break;
    }
  });
  async function onreg() {
    let response = await fetch("/api/register", {
      method: "POST",
      body: new FormData(formElem),
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
  <p>你不是已经登录了吗</p>
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
