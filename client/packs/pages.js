// Run this example by adding <%= javascript_pack_tag "hello_elm" %> to the head of your layout
// file, like app/views/layouts/application.html.erb. It will render "Hello Elm!" within the page.

import React from 'react'
import ReactDOM from 'react-dom'
import {Hello, style} from 'pages'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello name="React" />,
    document.body.appendChild(document.createElement('div')),
  )
})

console.log('Loaded pages pack')
