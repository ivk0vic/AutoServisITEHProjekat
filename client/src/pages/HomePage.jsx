import React, { Component, Fragment } from "react";
import Izdvojeno from "../components/home/Izdvojeno";
import Kategorije from "../components/home/Kategorije";

export class HomePage extends Component {
    render() {
        return (
            <div>
                <Fragment>
                    <Izdvojeno />
                    <Kategorije />
                </Fragment>
            </div>
        );
    }
}

export default HomePage;
