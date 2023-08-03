import React, { Component, Fragment } from "react";
import { Container, Row, Col, Card } from "react-bootstrap";
import "../../assets/css/extra.css";

import kat1 from "../../assets/images/kat1.jpg";
import kat2 from "../../assets/images/kat2.jpg";
import kat3 from "../../assets/images/kat3.jpg";
import kat4 from "../../assets/images/kat4.jpg";
import kat5 from "../../assets/images/kat5.jpg";
import kat6 from "../../assets/images/kat6.jpg";

class Kategorije extends Component {
    render() {
        return (
            <Fragment>
                <Container className="text-center" fluid={true}>
                    <div className="section-title text-center mb-55">
                        <h2> Kategorije </h2>
                        <p>Neki tekst</p>
                    </div>

                    <Row>
                        <center>
                            <Col
                                className="center"
                                key={1}
                                xs={12}
                                sm={12}
                                md={10}
                                lg={10}
                                xl={10}
                            >
                                <Row>
                                    <Col
                                        className="p-0"
                                        key={1}
                                        xs={12}
                                        sm={12}
                                        md={2}
                                        lg={2}
                                        xl={2}
                                    >
                                        <Card className="h-100 w-100 text-center">
                                            <Card.Body>
                                                <img
                                                    className="center img-150px"
                                                    src={kat1}
                                                    alt="Description of the image"
                                                />
                                                <h5 className="category-name">
                                                    Veliki servis
                                                </h5>
                                            </Card.Body>
                                        </Card>
                                    </Col>

                                    <Col
                                        className="p-0"
                                        key={1}
                                        xs={12}
                                        sm={12}
                                        md={2}
                                        lg={2}
                                        xl={2}
                                    >
                                        <Card className="h-100 w-100 text-center">
                                            <Card.Body>
                                                <img
                                                    className="center img-150px"
                                                    src={kat2}
                                                />
                                                <h5 className="category-name">
                                                    Dijagnostika
                                                </h5>
                                            </Card.Body>
                                        </Card>
                                    </Col>

                                    <Col
                                        className="p-0"
                                        key={1}
                                        xs={12}
                                        sm={12}
                                        md={2}
                                        lg={2}
                                        xl={2}
                                    >
                                        <Card className="h-100 w-100 text-center">
                                            <Card.Body>
                                                <img
                                                    className="center img-150px"
                                                    src={kat3}
                                                />
                                                <h5 className="category-name">
                                                    Menjac
                                                </h5>
                                            </Card.Body>
                                        </Card>
                                    </Col>

                                    <Col
                                        className="p-0"
                                        key={1}
                                        xs={12}
                                        sm={12}
                                        md={2}
                                        lg={2}
                                        xl={2}
                                    >
                                        <Card className="h-100 w-100 text-center">
                                            <Card.Body>
                                                <img
                                                    className="center img-150px"
                                                    src={kat4}
                                                />
                                                <h5 className="category-name">
                                                    Trap
                                                </h5>
                                            </Card.Body>
                                        </Card>
                                    </Col>

                                    <Col
                                        className="p-0"
                                        key={1}
                                        xs={12}
                                        sm={12}
                                        md={2}
                                        lg={2}
                                        xl={2}
                                    >
                                        <Card className="h-100 w-100 text-center">
                                            <Card.Body>
                                                <img
                                                    className="center img-150px"
                                                    src={kat5}
                                                />
                                                <h5 className="category-name">
                                                    Motor
                                                </h5>
                                            </Card.Body>
                                        </Card>
                                    </Col>

                                    <Col
                                        className="p-0"
                                        key={1}
                                        xs={12}
                                        sm={12}
                                        md={2}
                                        lg={2}
                                        xl={2}
                                    >
                                        <Card className="h-100 w-100 text-center">
                                            <Card.Body>
                                                <img
                                                    className="center img-150px"
                                                    src={kat6}
                                                />
                                                <h5 className="category-name">
                                                    Akumulator
                                                </h5>
                                            </Card.Body>
                                        </Card>
                                    </Col>
                                </Row>
                            </Col>
                        </center>
                    </Row>
                </Container>
            </Fragment>
        );
    }
}

export default Kategorije;
