import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

export const Hello = props => (
  <div>Hello {props.name}!</div>
)

Hello.defaultProps = {
  name: 'David'
}

Hello.propTypes = {
  name: PropTypes.string
}
