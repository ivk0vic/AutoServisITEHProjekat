// import React, { Component } from "react";
// import { GoogleMap, LoadScript } from "@react-google-maps/api";
// import { Rectangle } from "@react-google-maps/api";

// const containerStyle = {
//     width: "450px",
//     height: "450px",
// };

// const center = {
//     lat: 44.772605,
//     lng: 20.475169,
// };

// const options = {
//     strokeColor: "#FF0000",
//     strokeOpacity: 0.8,
//     strokeWeight: 2,
//     fillColor: "#FF0000",
//     fillOpacity: 0.35,
//     clickable: false,
//     draggable: false,
//     editable: false,
//     visible: true,
//     radius: 30,
//     zIndex: 1,
// };

// const onLoad = (circle) => {
//     console.log("Circle onLoad circle: ", circle);
// };

// const onUnmount = (circle) => {
//     console.log("Circle onUnmount circle: ", circle);
// };

// class GoogleMaps extends Component {
//     render() {
//         return (
//             // <LoadScript googleMapsApiKey="AIzaSyBfEVqY5s_O8x5OiPRvoISk3kJ2NVKYVAs">
//             //     <GoogleMap
//             //         id="circle-example"
//             //         mapContainerStyle={containerStyle}
//             //         center={center}
//             //         zoom={18}
//             //     >
//             //         <Circle
//             //             // optional
//             //             onLoad={onLoad}
//             //             // optional
//             //             onUnmount={onUnmount}
//             //             // required
//             //             center={center}
//             //             // required
//             //             options={options}
//             //         />
//             //     </GoogleMap>
//             // </LoadScript>

//             <LoadScript googleMapsApiKey="AIzaSyBfEVqY5s_O8x5OiPRvoISk3kJ2NVKYVAs">
//                 <GoogleMap
//                     id="rectangle-example"
//                     mapContainerStyle={containerStyle}
//                     center={center}
//                     zoom={18}
//                 >
//                     <Rectangle
//                         // optional
//                         onLoad={onLoad}
//                         // optional
//                         onUnmount={onUnmount}
//                         // required
//                         center={center}
//                         // required
//                         options={options}
//                     />
//                 </GoogleMap>
//             </LoadScript>
//         );
//     }
// }

// export default GoogleMaps;

import React, { Component } from "react";
import { GoogleMap, LoadScript } from "@react-google-maps/api";
import { Rectangle } from "@react-google-maps/api";

const containerStyle = {
    width: "450px",
    height: "450px",
};

const center = {
    lat: 44.772605,
    lng: 20.475169,
};

const rectangleBounds = {
    north: center.lat + 0.001,
    south: center.lat - 0.001,
    east: center.lng + 0.001,
    west: center.lng - 0.001,
};

const rectangleOptions = {
    strokeColor: "#FF0000",
    strokeOpacity: 0.8,
    strokeWeight: 2,
    fillColor: "#3b44ff",
    fillOpacity: 0.35,
    clickable: false,
    draggable: false,
    editable: false,
    visible: true,
    zIndex: 1,
};

const onLoad = (rectangle) => {
    console.log("Rectangle onLoad rectangle: ", rectangle);
};

const onUnmount = (rectangle) => {
    console.log("Rectangle onUnmount rectangle: ", rectangle);
};

class GoogleMaps extends Component {
    render() {
        return (
            <LoadScript googleMapsApiKey="AIzaSyBfEVqY5s_O8x5OiPRvoISk3kJ2NVKYVAs">
                <GoogleMap
                    id="rectangle-example"
                    mapContainerStyle={containerStyle}
                    center={center}
                    zoom={17}
                >
                    <Rectangle
                        // optional
                        onLoad={onLoad}
                        // optional
                        onUnmount={onUnmount}
                        // required
                        bounds={rectangleBounds}
                        // required
                        options={rectangleOptions}
                    />
                </GoogleMap>
            </LoadScript>
        );
    }
}

export default GoogleMaps;
