<template>
  <main id="main-content" class="pt-28 md:pt-32">
    <main-section></main-section>
    <service-section></service-section>
    <about-section></about-section>
    <contact-section></contact-section>
  </main>
</template>

<script>
import MainSection from '@/sections/MainSection.vue';
import AboutSection from '@/sections/AboutSection.vue';
import ServiceSection from '@/sections/ServiceSection.vue';
import ContactSection from '@/sections/ContactSection.vue';

export default {
	components: {
		MainSection,
		AboutSection,
		ServiceSection,
		ContactSection,
	}
}
</script>

<style scoped>


</style>
