<template>
  <header>
    <nav class="hidden md:flex fixed md:top-4 md:inset-x-auto md:left-1/2 md:-translate-x-1/2 md:w-[calc(100%-3rem)] lg:w-[calc(100%-6rem)] md:bg-white/85 md:backdrop-blur-md md:border md:rounded-2xl md:px-6 md:py-3 md:shadow-lg md:items-center md:justify-between z-50">
      <button class="h-full flex items-center text-left gap-2" @click="goToTop" aria-label="Prejsť na začiatok stránky">
        <img src="@/assets/logo1.png" alt="Revik logo" class="h-10 md:h-16 mr-2 navbar-logo" />
        <span class="flex flex-col leading-tight">
          <span class="tracking-widest font-semibold">Miroslav Forrai</span>
          <span class="tracking-widest font-light">Ko&#353;ice</span>
        </span>
      </button>

      <div class="flex items-center justify-end gap-3 md:gap-5">
        <a href="#contact-section" @click.prevent="scrollToSection($event, '#contact-section')" class="nav-link nav-cta">
          Kontakt
        </a>
        <a href="#about-section" @click.prevent="scrollToSection($event, '#about-section')" class="nav-link">
          O nás
        </a>
        <a href="#services-section" @click.prevent="scrollToSection($event, '#services-section')" class="nav-link">
          Služby
        </a>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  methods: {
    scrollToSection(event, sectionId) {
      event.preventDefault();
      const section = document.querySelector(sectionId);
      if (section) {
        section.scrollIntoView({ behavior: 'smooth' });
      }
    },
    goToTop() {
      history.pushState("", document.title, window.location.pathname + window.location.search);
      window.scrollTo({ top: 0, behavior: 'smooth' });
    },
  },
}
</script>

<style scoped>
.nav-link {
  @apply text-sm md:text-base font-medium hover:text-teal-700;
}

.nav-cta {
  @apply text-teal-700 px-4 py-2 rounded-full border border-teal-700 hover:bg-teal-700 hover:text-white;
}
</style>
