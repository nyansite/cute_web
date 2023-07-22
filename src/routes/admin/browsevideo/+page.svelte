<script>
  import { onMount } from "svelte";
  var islogin = false;
  var pre = getdata();
  var page = 1;
  onMount(async function(){
    const res = await fetch("/api/user_status", {
      method: "GET",
    });
    let data = res.json();
    switch (res.status) {
      case 200:
        islogin = true;
        break;
    }
  });
  async function getdata() {
    let response = await fetch("/admin/browse_video/" + page, {
      method: "GET",
    });
    switch (response.status) {
      case 200:
        // setdata(await response.json());
        return response.json();
      case 500:
        alert("500服务器错误,也许是没开ipfs deamon?");
        break;
      case 613:
        alert("小老弟你的权限在哪里?");
    }
  }
</script>

<a href="/admin/uploadvideo">上传视频</a>
<hr />
{#await pre}
  <p>加载中</p>
{:then body}
  {#each body.Body as pg}
    <p>{pg.Id}</p>
  {/each}
{/await}
