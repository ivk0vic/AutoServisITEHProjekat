import React, { Component, Fragment } from "react";
import { Col, Container, Row } from "react-bootstrap";
import { Link } from "react-router-dom";
import Apple from "../../assets/images/apple.png";
import Google from "../../assets/images/google.png";

export class FooterDesktop extends Component {
    render() {
        return (
            <Fragment>
                <div className="footerback m-0 mt-5 pt-3 shadow-sm">
                    <Container>
                        <Row className="px-0 my-5">
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">ADRESA</h5>
                                <p>Informacije Email:</p>
                                <h5 className="footer-menu-title">
                                    DRUSTVENE MREZE
                                </h5>
                                <a href="">
                                    <i className="fab m-1 h4 fa-facebook"></i>
                                </a>
                                <a href="">
                                    <i className="fab m-1 h4 fa-instagram"></i>
                                </a>
                                <a href="">
                                    <i className="fab m-1 h4 fa-twitter"></i>
                                </a>
                            </Col>

                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">KOMPANIJE</h5>
                                <Link to="/" className="footer-link">
                                    {" "}
                                    O nama
                                </Link>
                                <br></br>
                                <Link to="/" className="footer-link">
                                    {" "}
                                    Vise o kompaniji
                                </Link>
                                <br></br>
                                <Link to="/contact" className="footer-link">
                                    {" "}
                                    Kontakt
                                </Link>
                                <br></br>
                            </Col>

                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">
                                    VISE INFORMACIJA
                                </h5>
                                <Link to="/purchase" className="footer-link">
                                    Kako porucivati
                                </Link>
                                <br></br>
                                <Link to="/privacy" className="footer-link">
                                    {" "}
                                    Politika Privatnosti
                                </Link>
                                <br></br>
                                <Link to="/refund" className="footer-link">
                                    {" "}
                                    Politika refundiranja novca{" "}
                                </Link>
                                <br></br>
                            </Col>

                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">
                                    Preuzmi mobilnu aplikaciju:
                                </h5>
                                <a>
                                    <img src={Google} />
                                </a>
                                <br></br>
                                <a>
                                    <img className="mt-2" src={Apple} />
                                </a>
                                <br></br>
                            </Col>
                        </Row>
                    </Container>

                    <Container
                        fluid={true}
                        className="text-center m-0 pt-3 pb-1 bg-dark"
                    >
                        <Container>
                            <Row>
                                <h6 className="text-white">
                                    © Sva prava zadrzana. Beograd, 2023
                                </h6>
                            </Row>
                        </Container>
                    </Container>
                </div>
            </Fragment>
        );
    }
}

export default FooterDesktop;
