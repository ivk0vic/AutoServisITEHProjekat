import React, { Component, Fragment } from "react";
import { Container, Row, Col, Card } from "react-bootstrap";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

import a1 from "../../assets/images/a1.png";
import a2 from "../../assets/images/a2.png";

import p1 from "../../assets/images/p1.jpg";
import p2 from "../../assets/images/p2.jpg";
import p3 from "../../assets/images/p3.jpg";
import p4 from "../../assets/images/p4.jpg";
import p5 from "../../assets/images/p5.jpg";
import p6 from "../../assets/images/p6.jpg";
import p7 from "../../assets/images/p7.jpg";
import p8 from "../../assets/images/p8.jpg";

class Novo extends Component {
    constructor(props) {
        super(props);
        this.next = this.next.bind(this);
        this.previous = this.previous.bind(this);
    }
    next() {
        this.slider.slickNext();
    }
    previous() {
        this.slider.slickPrev();
    }

    render() {
        var settings = {
            dots: false,
            infinite: true,
            speed: 500,
            autoplay: true,
            autoplaySpeed: 3000,
            slidesToShow: 4,
            slidesToScroll: 1,
            initialSlide: 0,
            arrows: false,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 4,
                        slidesToScroll: 1,
                        infinite: true,
                        dots: true,
                    },
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1,
                        initialSlide: 2,
                    },
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1,
                    },
                },
            ],
        };

        return (
            <Fragment>
                <Container className="text-center" fluid={true}>
                    <div className="section-title text-center">
                        <h2>
                            NOVO U PONUDI <br></br>
                            <a className="w-25" onClick={this.previous}>
                                <img src={a1} width="100px"></img>
                            </a>
                            &nbsp;
                            <a className="w-25" onClick={this.next}>
                                <img src={a2} width="100px"></img>
                            </a>
                        </h2>
                        <p>
                            Iz najnovije kolekcije izdvajamo ugradnju parking
                            senzora:
                        </p>
                    </div>

                    <Row>
                        <Slider ref={(c) => (this.slider = c)} {...settings}>
                            <div>
                                <Card className="image-box card">
                                    <img className="center" src={p1} />
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Parking senzor 1
                                        </p>
                                        <p className="product-price-on-card">
                                            Cena: 6999 din
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card">
                                    <img className="center" src={p2}></img>
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Parking senzor 1
                                        </p>
                                        <p className="product-price-on-card">
                                            Cena: 6999 din
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card">
                                    <img className="center" src={p3} />
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Parking senzor 1
                                        </p>
                                        <p className="product-price-on-card">
                                            Cena: 6999 din
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card">
                                    <img className="center" src={p4} />
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Parking senzor 1
                                        </p>
                                        <p className="product-price-on-card">
                                            Cena: 6999 din
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card">
                                    <img className="center" src={p5} />
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Parking senzor 1
                                        </p>
                                        <p className="product-price-on-card">
                                            Cena: 6999 din
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card">
                                    <img className="center" src={p6} />
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Parking senzor 1
                                        </p>
                                        <p className="product-price-on-card">
                                            Cena: 6999 din
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card">
                                    <img className="center" src={p7} />
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Parking senzor 1
                                        </p>
                                        <p className="product-price-on-card">
                                            Cena: 6999 din
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                            <div>
                                <Card className="image-box card">
                                    <img className="center" src={p8} />
                                    <Card.Body>
                                        <p className="product-name-on-card">
                                            Parking senzor 1
                                        </p>
                                        <p className="product-price-on-card">
                                            Cena: 6999 din
                                        </p>
                                    </Card.Body>
                                </Card>
                            </div>
                        </Slider>
                    </Row>
                </Container>
            </Fragment>
        );
    }
}

export default Novo;
