<template>
  <a href="#main-content" class="sr-only focus:not-sr-only focus:absolute focus:top-2 focus:left-2 focus:bg-white focus:px-3 focus:py-2 focus:rounded focus:z-[1001]">
    Preskočiť na obsah
  </a>
  <navbar-element></navbar-element>
  <home-view></home-view>
  <footer-element></footer-element>
</template>

<script>
import NavbarElement from '@/components/NavbarElement.vue';
import FooterElement from '@/components/FooterElement.vue';
import HomeView from '@/HomeView.vue';

export default {
  components: {
    HomeView,
    FooterElement,
    NavbarElement,
  },
}
</script>
