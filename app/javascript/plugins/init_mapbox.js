import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";

const initMapbox = () => {
  // Select map via id = 'map'
  const mapElement = document.getElementById("map");

  // Creates the map
  if (mapElement) {
    // Only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: "map",
      style: "mapbox://styles/filimonel/ckluqifmv0dvv17o022e90p9k",
    });

    // Creates the marker.
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).addTo(map);
    });
    fitMapToMarkers(map, markers);

    // Zooms in when it goes to location
    const fitMapToMarkers = (map, markers) => {
      const bounds = new mapboxgl.LngLatBounds();
      markers.forEach((marker) => bounds.extend([marker.lng, marker.lat]));
      map.fitBounds(bounds, { padding: 70, maxZoom: 13, duration: 0 });
    };
  }
};

export { initMapbox };

// Map code for view

/* <div id="map"
style="width: 500px; height: 315px; border-radius: 5px;"
data-markers="<%= @markers.to_json %>"
data-mapbox-api-key="<%= ENV['MAPBOX_API_KEY'] %>">
</div> */

/*
@markers = [{
    lat: @portal.latitude,
    lng: @portal.longitude,
}]
*/

/* 
@portals = Portal.all
@markers = @portals.geocoded.map do |portal|
    {
        lat: portal.latitude,
        lng: portal.longitude
    }
end 
*/
