import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import "./sidebar.css";

export const Sidebar = props => (
  <div>
    <h1>Sidebar React Component</h1>
    <p>{props.content}</p>
  </div>
)

Sidebar.defaultProps = {
  content: ""
}

Sidebar.propTypes = {
  content: PropTypes.string
}
