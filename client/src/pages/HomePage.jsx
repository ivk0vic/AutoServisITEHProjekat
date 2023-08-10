import React, { Component, Fragment } from "react";
import Izdvojeno from "../components/home/Izdvojeno";
import Kategorije from "../components/home/Kategorije";
import Kolekcija from "../components/home/Kolekcija";
import Novo from "../components/home/Novo";
import Vrh from "../components/home/Vrh";
import VrhMobile from "../components/home/VrhMobile";
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDesktop from "../components/common/FooterDesktop";
import FooterMobile from "../components/common/FooterMobile";

export class HomePage extends Component {
    //go to the top of the page
    componentDidMount() {
        window.scroll(0, 0);
    }

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

                    <Novo />
                    <Izdvojeno />
                    <Kategorije />
                    <Kolekcija />

                    <div className="Desktop">
                        <FooterDesktop />
                    </div>

                    <div className="Mobile">
                        <FooterMobile />
                    </div>
                </Fragment>
            </div>
        );
    }
}

export default HomePage;
