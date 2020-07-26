import React, { Component } from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import EagleOwlHome from './components/EagleOwl/home/Home';
import Order from './components/EagleOwl/order/Order';
import NotFound from './components/notfound/NotFound';

class App extends Component {
  render() {

    return (
      <BrowserRouter>
        <Switch>
          <Route exact path="/" component={EagleOwlHome} />
          <Route path="/order" component={Order} />
          <Route component={NotFound} />
        </Switch>
      </BrowserRouter>
    )
  }
}

export default App



