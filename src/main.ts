import { defineCustomElement } from 'vue';

import MapChartsDonut from '~/components/map-charts-donut.ce.vue';
import MapCharts from '~/components/map-charts.ce.vue';

customElements.define('map-charts', defineCustomElement(MapCharts));
customElements.define('map-charts-donut', defineCustomElement(MapChartsDonut));
