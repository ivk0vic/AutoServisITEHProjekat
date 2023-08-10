import React, { Component, Fragment } from "react";
import { Container, Row, Col, Card } from "react-bootstrap";
//import Slajd from "./Slajd";
import HomeSlajd from "./HomeSlajd";
import Meni from "./Meni";

class Vrh extends Component {
    render() {
        return (
            <Fragment>
                <Container className="p-0 m-0 overflow-hidden" fluid={true}>
                    <Row>
                        <Col lg={3} md={3} sm={12}>
                            <Meni />
                        </Col>

                        <Col lg={9} md={9} sm={12}>
                            <HomeSlajd />
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        );
    }
}

export default Vrh;
