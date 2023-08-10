import React, { Component, Fragment } from "react";
import { Container, Row, Col, Card } from "react-bootstrap";
import "../../assets/css/extra.css";

import aku1 from "../../assets/images/aku1.jpg";
import aku2 from "../../assets/images/aku2.jpg";
import aku3 from "../../assets/images/aku3.jpg";
import aku4 from "../../assets/images/aku4.jpg";
import aku5 from "../../assets/images/aku5.jpg";
import aku6 from "../../assets/images/aku6.jpg";
import aku7 from "../../assets/images/aku7.jpg";
import aku8 from "../../assets/images/aku8.jpg";

class Kolekcija extends Component {
    render() {
        return (
            <Fragment>
                <Container className="text-center" fluid={true}>
                    <div className="section-title text-center mb-55">
                        <h2> Specijalna kolekcija </h2>
                        <p> Dugotrajni i troškovno isplativi akumulatori </p>
                    </div>

                    <Row>
                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <center>
                                    <img className="center w-75" src={aku1} />
                                </center>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 1
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                </Card.Body>
                            </Card>
                        </Col>

                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <center>
                                    <img className="center w-75" src={aku2} />
                                </center>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 2
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                </Card.Body>
                            </Card>
                        </Col>

                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <center>
                                    <img className="center w-75" src={aku3} />
                                </center>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 3
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                </Card.Body>
                            </Card>
                        </Col>

                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <center>
                                    <img className="center w-75" src={aku4} />
                                </center>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 4
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                </Card.Body>
                            </Card>
                        </Col>

                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <center>
                                    <img className="center w-75" src={aku5} />
                                </center>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 5
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                </Card.Body>
                            </Card>
                        </Col>

                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <center>
                                    <img className="center w-75" src={aku6} />
                                </center>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 6
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                </Card.Body>
                            </Card>
                        </Col>

                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <center>
                                    <img className="center w-75" src={aku7} />
                                </center>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 7
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                </Card.Body>
                            </Card>
                        </Col>

                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <center>
                                    <img className="center w-75" src={aku8} />
                                </center>
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 8
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                </Card.Body>
                            </Card>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        );
    }
}

export default Kolekcija;
