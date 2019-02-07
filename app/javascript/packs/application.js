import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { ping } from '../components/ping'
ping();

import { cookies } from '../components/cookies';
cookies();

import { initMapbox } from '../plugins/init_mapbox.js.erb';
initMapbox();

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
