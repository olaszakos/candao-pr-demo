import { candao_pr_demo } from "../../declarations/candao_pr_demo";

document.getElementById("clickMeBtn").addEventListener("click", async () => {
  const name = document.getElementById("name").value.toString();
  // Interact with candao_pr_demo actor, calling the greet method
  const greeting = await candao_pr_demo.greet(name);

  document.getElementById("greeting").innerText = greeting;
});
