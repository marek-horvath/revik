<template>
  <header>
    <nav class="fixed top-4 left-1/2 -translate-x-1/2 w-[calc(100%-1.5rem)] md:w-[calc(100%-3rem)] lg:w-[calc(100%-6rem)] bg-white/85 backdrop-blur-md border border-stone-200 rounded-2xl px-4 py-3 lg:px-8 flex justify-between z-50 shadow-lg">
      <button class="h-full flex items-center text-left" @click="goToTop" aria-label="Prejst na zaciatok stranky">
        <img src="@/assets/logo1.png" alt="Revik logo" class="w-50 h-20 mr-2 navbar-logo" />
        <span>
          <span class="block tracking-widest font-semibold">Miroslav Forrai</span>
          <span class="block tracking-widest font-light">Ko&#353;ice</span>
        </span>
      </button>

      <button
        class="md:hidden p-2 rounded-md border border-stone-300"
        @click="navToggle()"
        :aria-expanded="isMenuOpen ? 'true' : 'false'"
        aria-controls="site-menu"
        aria-label="Otvorit menu"
      >
        <i class="fa-solid fa-bars text-2xl" aria-hidden="true"></i>
      </button>

      <div
        id="site-menu"
        class="absolute left-0 right-0 translate-y-16 bg-white rounded-xl shadow hidden md:flex flex-col gap-4 items-center p-4 md:flex-row md:static md:shadow-none md:bg-transparent md:translate-y-0"
      >
        <a href="#services-section" @click.prevent="scrollToSection($event, '#services-section')" class="nav-link">
          Sluzby
        </a>
        <a href="#about-section" @click.prevent="scrollToSection($event, '#about-section')" class="nav-link">
          O nas
        </a>
        <a href="#contact-section" @click.prevent="scrollToSection($event, '#contact-section')" class="nav-link nav-cta">
          Kontakt
        </a>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  data() {
    return {
      isMenuOpen: false,
    };
  },
  methods: {
    navToggle() {
      this.isMenuOpen = !this.isMenuOpen;
      this.updateMenuVisibility();
    },
    scrollToSection(event, sectionId) {
      event.preventDefault();
      const section = document.querySelector(sectionId);

      if (section) {
        section.scrollIntoView({ behavior: 'smooth' });
      }

      if (this.isMenuOpen) {
        this.navToggle();
      }
    },
    goToTop() {
      history.pushState("", document.title, window.location.pathname + window.location.search);
      window.scrollTo({ top: 0, behavior: 'smooth' });
    },
    updateMenuVisibility() {
      const menu = document.getElementById('site-menu');
      if (!menu) return;

      if (this.isMenuOpen) {
        menu.classList.remove('hidden');
        menu.classList.add('flex');
        window.addEventListener('click', this.windowClick);
      } else {
        menu.classList.add('hidden');
        menu.classList.remove('flex');
        window.removeEventListener('click', this.windowClick);
      }
    },
    windowClick(event) {
      const menu = document.getElementById('site-menu');
      if (!menu) return;

      const button = this.$el.querySelector('[aria-controls="site-menu"]');
      if (menu && button && !menu.contains(event.target) && !button.contains(event.target)) {
        this.isMenuOpen = false;
        this.updateMenuVisibility();
      }
    },
  },
  beforeUnmount() {
    window.removeEventListener('click', this.windowClick);
  },
}
</script>

<style scoped>
.nav-link {
  @apply mx-3 font-medium hover:text-teal-700;
}

.nav-cta {
  @apply px-4 py-2 rounded-full border border-teal-700 text-teal-700 hover:bg-teal-700 hover:text-white;
}

@media (max-width: 768px) {
  .navbar-logo {
    display: none;
  }
}
</style>
