import React from "react"
import ReactDOM from "react-dom"
import { Hello, style } from "pages/view"

let container = document.getElementById("page-container");

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    <Hello name="React" />,
    container.appendChild(document.createElement("div"))
  )
});


console.log("Loaded pages pack");
