import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import "./sidebar.css";

export const Sidebar = props => (
  <div className="p2">
    <h2>Sidebar React Component</h2>
    <p>{props.content}</p>
  </div>
)

Sidebar.defaultProps = {
  content: ""
}

Sidebar.propTypes = {
  content: PropTypes.string
}
