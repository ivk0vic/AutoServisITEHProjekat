import React, { Component, Fragment } from "react";
import Izdvojeno from "../components/home/Izdvojeno";
import Kategorije from "../components/home/Kategorije";
import Kolekcija from "../components/home/Kolekcija";
import Novo from "../components/home/Novo";
import Vrh from "../components/home/Vrh";

export class HomePage extends Component {
    render() {
        return (
            <div>
                <Fragment>
                    <Vrh />
                    <Novo />
                    <Izdvojeno />
                    <Kategorije />
                    <Kolekcija />
                </Fragment>
            </div>
        );
    }
}

export default HomePage;
