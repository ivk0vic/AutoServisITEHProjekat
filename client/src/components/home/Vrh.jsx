import React, { Component, Fragment } from "react";
import { Container, Row, Col, Card } from "react-bootstrap";
//import Slajd from "./Slajd";
import HomeSlajd from "./HomeSlajd";
import Meni from "./Meni";
import AppURL from "../../api/AppURL";
import axios from "axios";

class Vrh extends Component {
    constructor() {
        super();
        this.state = {
            MenuData: [],
        };
    }

    componentDidMount() {
        axios
            .get(AppURL.AllCategoryDetails)
            .then((response) => {
                this.setState({ MenuData: response.data });
            })
            .catch((error) => {});
    }

    render() {
        return (
            <Fragment>
                <Container className="p-0 m-0 overflow-hidden" fluid={true}>
                    <Row>
                        <Col lg={9} md={9} sm={12}>
                            <HomeSlajd />
                        </Col>
                        <Col lg={3} md={3} sm={12}>
                            <Meni data={this.state.MenuData} />
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        );
    }
}

export default Vrh;
