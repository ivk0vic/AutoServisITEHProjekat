import React, { Component, Fragment } from "react";
import Izdvojeno from "../components/home/Izdvojeno";
import Kategorije from "../components/home/Kategorije";
import Kolekcija from "../components/home/Kolekcija";

export class HomePage extends Component {
    render() {
        return (
            <div>
                <Fragment>
                    <Izdvojeno />
                    <Kategorije />
                    <Kolekcija />
                </Fragment>
            </div>
        );
    }
}

export default HomePage;
