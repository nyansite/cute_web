<script>
  
 async function sub() {
    let response = await fetch("/admin/upload_video", {
      method: "POST",
      body: new FormData(formElem),
    });
    let result = await response.text();
    switch (response.status) {
      case 200:
        alert("200上传成功");
        break;
      case 500:
        alert("500服务器错误,也许是没开ipfs deamon?");
        break;
    }
  };
</script>

<form id="formElem">
  <label for="file">视频文件</label>
  <input type="file" name="file" id="file" required />
</form>
<input type="submit" value="确定" on:click={sub}/>
