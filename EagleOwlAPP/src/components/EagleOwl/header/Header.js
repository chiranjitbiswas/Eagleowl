import React, { Component } from 'react';
import Navbar from 'react-bootstrap/Navbar'
import Nav from 'react-bootstrap/Nav'

import 'bootstrap/dist/css/bootstrap.min.css';
import './header.css';


class Header extends Component {

  menuOpen(e) {
    e.preventDefault()

    var element = document.getElementById("sidebar");
    element.classList.remove("slideOutLeft");
    element.classList.add("slideInLeft");


    document.getElementById("sidebar").style.display = "block";
  }

  render() {
    return (
    < >
        <Navbar expand="lg" bg="white" fixed="top" className="header" >
          <Nav className="mr-auto">
            <i className="fa fa-bars menu-toggler" onClick={this.menuOpen.bind(this)} />
          </Nav>
          <a href={"/"} className="menu">Home</a>
        </Navbar>
        </>
    )
  }
}

export default Header