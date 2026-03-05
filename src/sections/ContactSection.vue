<template>
  <section id="contact-section" class="px-6 md:px-12 lg:px-32 py-24 relative text-center">
    <h2 class="uppercase text-4xl md:text-5xl mb-3 font-semibold">Kontakt</h2>
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 items-stretch">
      <div class="w-full h-[500px] mx-auto rounded-2xl overflow-hidden border border-stone-200 shadow-xl">
        <l-map class="w-full h-full" :zoom="14" :center="center">
          <l-tile-layer :url="url" :attribution="attribution"></l-tile-layer>
          <l-marker :lat-lng="center"></l-marker>
        </l-map>
      </div>

      <div class="flex flex-col w-full items-center justify-center text-stone-600 rounded-2xl border border-stone-200 p-6 bg-white/90 backdrop-blur-sm shadow-xl">
        <h2 class="text-2xl mb-4">Revik</h2>
        <p class="mb-4">Miroslav Forrai</p>
        <p class="mb-4">Pranie kobercov a cistenie gaucoviek v Kosiciach</p>
        <a class="mb-4 underline hover:text-teal-700" href="https://maps.google.com/?q=Pod+horou+23,+040+16+Kosice" target="_blank" rel="noopener noreferrer">
          Adresa: Pod horou 23, 040 16 Kosice
        </a>
        <a class="mb-2 text-lg font-semibold hover:text-teal-700" href="tel:+421903485311">Telefon: 0903 485 311</a>
      </div>

      <div class="w-full h-[500px] mx-auto rounded-2xl overflow-hidden border border-stone-200 shadow-xl">
        <img src="@/assets/dom1.png" alt="Sidlo firmy Revik" class="w-full h-full object-cover">
      </div>
    </div>
  </section>
</template>

<script>
import { LMap, LTileLayer, LMarker } from "vue3-leaflet";
import "leaflet/dist/leaflet.css";

export default {
  components: {
    LMap,
    LTileLayer,
    LMarker,
  },
  data() {
    return {
      center: [48.709010, 21.204130],
      url: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors',
    };
  },
}
</script>
