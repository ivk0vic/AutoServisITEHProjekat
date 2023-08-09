import React, { Component, Fragment } from 'react';
import {Container, Row, Col, Card} from 'react-bootstrap'

class Izdvojeno extends Component {
  render() {
          return (
              <Fragment>
                   <Container className="text-center" fluid={true}>
          <div className="section-title text-center mb-55"><h2>Izdvojeno</h2>
          <p>Neki tekst</p>
          </div>


     <Row>
     <Col className="p-1" key={1} xl={2} lg={2} md={2} sm={4} xs={6}>
     <Card className="image-box card">
          <img className="center" src="https://www.autoservis-line.com/images/pages/autoline-servis-bmw.jpg" />   
          <Card.Body> 
          <p className="product-name-on-card">Auto servis za BMW vozila</p>
          <p className="product-price-on-card">Cena: 150€</p>

          </Card.Body>
          </Card>
     </Col>



     <Col className="p-1" key={1} xl={2} lg={2} md={2} sm={4} xs={6}>
     <Card className="image-box card">
          <img className="center" src="https://www.autoservis-line.com/images/pages/autoline-servis-citroen.jpg" />   
          <Card.Body> 
          <p className="product-name-on-card">Auto servis za Citroen vozila</p>
          <p className="product-price-on-card">Cena: 150€</p>

          </Card.Body>
          </Card>
     </Col>

     <Col className="p-1" key={1} xl={2} lg={2} md={2} sm={4} xs={6}>
     <Card className="image-box card">
          <img className="center" src="https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg" />   
          <Card.Body> 
          <p className="product-name-on-card">Auto servis za Fiat vozila</p>
          <p className="product-price-on-card">Cena: 150€</p>

          </Card.Body>
          </Card>
     </Col>


     <Col className="p-1" key={1} xl={2} lg={2} md={2} sm={4} xs={6}>
     <Card className="image-box card">
          <img className="center" src="https://www.autoservis-line.com/images/pages/autoline-servis-mercedes.jpg" />   
          <Card.Body> 
          <p className="product-name-on-card">Auto servis za Mercedes vozila</p>
          <p className="product-price-on-card">Cena: 150€</p>

          </Card.Body>
          </Card>
     </Col>


     <Col className="p-1" key={1} xl={2} lg={2} md={2} sm={4} xs={6}>
     <Card className="image-box card">
          <img className="center" src="https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg" />   
          <Card.Body> 
          <p className="product-name-on-card">Auto servis za Opel vozila</p>
          <p className="product-price-on-card">Cena: 150€</p>

          </Card.Body>
          </Card>
     </Col>


     <Col className="p-1" key={1} xl={2} lg={2} md={2} sm={4} xs={6}>
     <Card className="image-box card">
          <img className="center" src="https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg" />   
          <Card.Body> 
          <p className="product-name-on-card">Auto servis za Peugeot vozila</p>
          <p className="product-price-on-card">Cena: 150€</p>

          </Card.Body>
          </Card>
     </Col>


</Row>


                   </Container>

              </Fragment>
          )
     }
}

export default Izdvojeno;