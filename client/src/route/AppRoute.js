import React, { Component, Fragment } from 'react'
import { Router, Route, Switch } from "react-router";
import HomePage from '../pages/HomePage';
import UserLoginPage from '../pages/UserLoginPage';
import ContactPage from '../pages/ContactPage';
import PurchasePage from '../pages/PurchasePage';
import PrivacyPage from '../pages/PrivacyPage';
import RefundPage from '../pages/RefundPage';
import DetaljnijiPrikazPage from '../pages/DetaljnijiPrikazPage';
import OmiljenoPage from '../pages/OmiljenoPage';
import NotificationPage from '../pages/NotificationPage';
import KorpaPage from '../pages/KorpaPage';
import AboutPage from '../pages/AboutPage';

class AppRoute extends Component {
     render() {
          return (
     <Fragment>
          <Switch>
               <Route exact path="/" component={HomePage} />
               <Route exact path="/login" component={UserLoginPage} />
               <Route exact path="/contact" component={ContactPage} />

               <Route exact path="/productdetails" component={DetaljnijiPrikazPage} />
               <Route exact path="/notification" component={NotificationPage} />
               <Route exact path="/favourite" component={OmiljenoPage} />
               <Route exact path="/cart" component={KorpaPage} />

               <Route exact path="/purchase" component={PurchasePage} />
               <Route exact path="/privacy" component={PrivacyPage} />
               <Route exact path="/refund" component={RefundPage} />
               <Route exact path="/about" component={AboutPage} />     

          </Switch>

     </Fragment>
          )
     }
}

export default AppRoute