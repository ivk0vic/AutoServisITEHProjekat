import React, { Component, Fragment } from 'react';
import { Router, Route, Switch } from 'react-router';
import HomePage from '../pages/HomePage';


class AppRoute extends Component {
  render() {
    return <div>
        <Fragment>
            <Switch>
                <Route exact to="/" component={HomePage}/>
            </Switch>
        </Fragment>
    </div>;
  }
}

export default AppRoute;