import React, { Component, Fragment } from "react";

import c1 from "../../assets/images/c1.png";

class Meni extends Component {
    constructor() {
        super();
        this.MegaMenu = this.MegaMenu.bind(this);
    }

    componentDidMount() {
        this.MegaMenu();
    }

    MegaMenu() {
        var acc = document.getElementsByClassName("accordion");
        var accNum = acc.length;
        var i;
        for (i = 0; i < accNum; i++) {
            acc[i].addEventListener("click", function () {
                this.classList.toggle("active");
                var panel = this.nextElementSibling;
                if (panel.style.maxHeight) {
                    panel.style.maxHeight = null;
                } else {
                    panel.style.maxHeight = panel.scrollHeight + "px";
                }
            });
        }
    }

    render() {
        return (
            <div className="accordionMenuDiv">
                <div className="accordionMenuDivInside">
                    <button className="accordion">
                        <img
                            className="accordionMenuIcon"
                            src={c1}
                            width="25px"
                        />
                        &nbsp; Kategorija 1
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 1
                                </a>
                            </li>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 2
                                </a>
                            </li>
                        </ul>
                    </div>

                    <button className="accordion">
                        <img
                            className="accordionMenuIcon"
                            src={c1}
                            width="25px"
                        />
                        &nbsp; Kategorija 2
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 1
                                </a>
                            </li>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 2
                                </a>
                            </li>
                        </ul>
                    </div>

                    <button className="accordion">
                        <img
                            className="accordionMenuIcon"
                            src={c1}
                            width="25px"
                        />
                        &nbsp; Kategorija 3
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 1
                                </a>
                            </li>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 2
                                </a>
                            </li>
                        </ul>
                    </div>

                    <button className="accordion">
                        <img
                            className="accordionMenuIcon"
                            src={c1}
                            width="25px"
                        />
                        &nbsp; Kategorija 4
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 1
                                </a>
                            </li>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 2
                                </a>
                            </li>
                        </ul>
                    </div>

                    <button className="accordion">
                        <img
                            className="accordionMenuIcon"
                            src={c1}
                            width="25px"
                        />
                        &nbsp; Kategorija 5
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 1
                                </a>
                            </li>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 2
                                </a>
                            </li>
                        </ul>
                    </div>

                    <button className="accordion">
                        <img
                            className="accordionMenuIcon"
                            src={c1}
                            width="25px"
                        />
                        &nbsp; Kategorija 6
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 1
                                </a>
                            </li>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 2
                                </a>
                            </li>
                        </ul>
                    </div>

                    <button className="accordion">
                        <img
                            className="accordionMenuIcon"
                            src={c1}
                            width="25px"
                        />
                        &nbsp; Kategorija 7
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 1
                                </a>
                            </li>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 2
                                </a>
                            </li>
                        </ul>
                    </div>

                    <button className="accordion">
                        <img
                            className="accordionMenuIcon"
                            src={c1}
                            width="25px"
                        />
                        &nbsp; Kategorija 8
                    </button>
                    <div className="panel">
                        <ul>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 1
                                </a>
                            </li>
                            <li>
                                <a href="#" className="accordionItem">
                                    {" "}
                                    Podkategorija 2
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        );
    }
}

export default Meni;
