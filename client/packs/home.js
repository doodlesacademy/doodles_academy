import React from "react"
import ReactDOM from "react-dom"
import { Sidebar } from "pages/home"

let container = document.getElementById("sidebar");
let sidebar = JSON.parse(container.getAttribute("data"));

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    <Sidebar content={sidebar.content} />,
    container.appendChild(document.createElement("div"))
  )
});

console.log("Sidebar loaded.");
