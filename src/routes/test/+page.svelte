<script>
    import { onMount } from "svelte";
    const endpoint = "http://localhost:8000/api/user_status";
    let posts = [];
  
    onMount(async function () {
      let response = await fetch(endpoint);
      console.log(response.status)
      let data = await response.json();
      console.log(data);
    });
  
    export let name;
  </script>
  
  <main>
    <h1>Hello {name}!</h1>
    <p>Visit the <a href="https://svelte.dev/tutorial">Svelte tutorial</a> to learn how to build Svelte apps.</p>
  </main>
  
  <style>
    /* ommitted for brevity */
  </style>
  
