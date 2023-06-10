<script>
  import { onMount } from "svelte";

  onMount(async () => {
    const res = await fetch("/api/user_status", {
      method: "POST",
    });
    switch (res.status) {
      case 200:
    }
  });
  async function onsub() {
    let response = await fetch("/api/login", {
      method: "POST",
      body: new FormData(formElem),
    });
    // let result = await response.json();
    switch (response.status) {
      case 200:
        alert("200登录成功");
        break;
      case 611:
        alert("611用户名或邮箱不存在");
        break;
      case 612:
        alert("612密码错误");
        break;
      case 613:
        alert("613重复登录");
        break;
      default:
        alert("未知错误")
    }
  }
</script>

<form id="formElem">
  <label for="username">用户名或邮箱</label>
  <input type="text" name="username" id="username" required />

  <label for="passwd">密码</label>
  <input type="password" id="passwd" name="passwd" minlength="4" required />

  <input type="submit" value="登录" on:click={onsub} />
</form>
