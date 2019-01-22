import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [ 22.576943, 51.220261 ],
      zoom: 15,
    });
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = 'url("./assets/images/marker.png")';
    element.style.backgroundSize = 'cover';
    element.style.width = '35px';
    element.style.height = '35px';
    new mapboxgl.Marker(element)
    .setLngLat([ 22.576943, 51.220261 ])
    .addTo(map);
  }

};

export { initMapbox };
