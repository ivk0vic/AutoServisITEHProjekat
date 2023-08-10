import React, { Component, Fragment } from "react";
import Izdvojeno from "../components/home/Izdvojeno";
import Kategorije from "../components/home/Kategorije";
import Kolekcija from "../components/home/Kolekcija";
import Novo from "../components/home/Novo";
import Vrh from "../components/home/Vrh";
import VrhMobile from "../components/home/VrhMobile";
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";

export class HomePage extends Component {
    render() {
        return (
            <div>
                <Fragment>
                    <div className="Desktop">
                        <NavMenuDesktop />
                        <Vrh />
                    </div>

                    <div className="Mobile">
                        <NavMenuMobile />
                        <VrhMobile />
                    </div>

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
