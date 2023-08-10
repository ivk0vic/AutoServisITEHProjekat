import React, { Component, Fragment } from "react";
import { Container, Row, Col, Card, Button } from "react-bootstrap";

import aku1 from "../../assets/images/aku1.jpg";
import aku2 from "../../assets/images/aku2.jpg";
import aku3 from "../../assets/images/aku3.jpg";
import aku4 from "../../assets/images/aku4.jpg";

class Omiljeno extends Component {
    render() {
        return (
            <Fragment>
                <Container className="text-center" fluid={true}>
                    <div className="section-title text-center mb-55">
                        <h2> MY FAVOURITE ITEMS</h2>
                        <p>Some Of Our Exclusive Collection, You May Like</p>
                    </div>

                    <Row>
                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <img className="center w-75" src={aku1} />
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 1
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                    <Button className="btn btn-sm">
                                        {" "}
                                        <i className="fa fa-trash-alt"></i>{" "}
                                        Remove{" "}
                                    </Button>
                                </Card.Body>
                            </Card>
                        </Col>

                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <img className="center w-75" src={aku2} />
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 1
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                    <Button className="btn btn-sm">
                                        {" "}
                                        <i className="fa fa-trash-alt"></i>{" "}
                                        Remove{" "}
                                    </Button>
                                </Card.Body>
                            </Card>
                        </Col>

                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <img className="center w-75" src={aku3} />
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 1
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                    <Button className="btn btn-sm">
                                        {" "}
                                        <i className="fa fa-trash-alt"></i>{" "}
                                        Remove{" "}
                                    </Button>
                                </Card.Body>
                            </Card>
                        </Col>

                        <Col className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
                            <Card className="image-box card w-100">
                                <img className="center w-75" src={aku4} />
                                <Card.Body>
                                    <p className="product-name-on-card">
                                        Akumulator 1
                                    </p>
                                    <p className="product-price-on-card">
                                        Cena : 19999 din
                                    </p>
                                    <Button className="btn btn-sm">
                                        {" "}
                                        <i className="fa fa-trash-alt"></i>{" "}
                                        Remove{" "}
                                    </Button>
                                </Card.Body>
                            </Card>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        );
    }
}

export default Omiljeno;
