<template>
  <section class="min-h-[85vh] px-6 md:px-12 lg:px-32 pt-6 md:pt-36 pb-8 md:pb-16 mb-2 md:mb-8 relative">
    <div class="hero-shell">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-10 items-center">
        <div>
          <h1 class="uppercase text-6xl lg:text-7xl mb-4 font-semibold nadpis">REVIK.SK</h1>
          <p class="xl:w-5/6 text-stone-600 text-lg leading-relaxed">
            Revik ponúka profesionálne pranie kobercov a čistenie gaučoviek v Košiciach a okolí.
            Používame overené postupy a kladieme dôraz na kvalitu.
          </p>

          <p class="text-3xl xl:text-4xl mt-8 font-semibold text-stone-700 hero-price">
            Cena od 5 do 7 eur za m2
          </p>

          <div class="md:hidden mt-6 text-center">
            <h2 class="uppercase text-3xl mb-4 font-semibold text-stone-700">Kontakt</h2>
            <div class="contact-card">
              <h2 class="text-2xl mb-4 font-medium">Revik</h2>
              <p class="mb-4 text-2xl font-medium">Miroslav Forrai</p>
              <p class="mb-5 text-xl">
                Pranie kobercov a čistenie gaučoviek v Košiciach
              </p>
              <a class="mb-5 underline hover:text-teal-700 block text-xl" href="https://maps.google.com/?q=Pod+horou+23,+040+16+Kosice" target="_blank" rel="noopener noreferrer">
                Adresa: Pod horou 23, 040 16 Košice
              </a>
              <a class="text-2xl font-semibold hover:text-teal-700" href="tel:+421903485311">Telefón: 0903 485 311</a>
            </div>
          </div>
        </div>

        <div class="hidden md:block image-wrap">
          <img src="@/assets/image.jpg" alt="Pranie kobercov a čistenie gaučoviek Revik" class="hero-image" />
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.hero-price {
  min-height: 3rem;
}

.hero-shell {
  @apply relative rounded-[2rem] p-6 md:p-10;
  background: linear-gradient(145deg, rgba(255, 255, 255, 0.88), rgba(241, 245, 249, 0.6));
  border: 1px solid rgba(203, 213, 225, 0.65);
  box-shadow: 0 20px 60px rgba(15, 23, 42, 0.12);
}

.contact-card {
  @apply rounded-[1.4rem] border border-stone-200 bg-white/90 backdrop-blur-sm p-6 md:p-8 text-center shadow-lg;
}

.image-wrap {
  @apply rounded-[1.75rem] overflow-hidden;
  box-shadow: 0 14px 40px rgba(15, 23, 42, 0.18);
}

.hero-image {
  width: 100%;
  height: 30rem;
  object-fit: cover;
  transform: scale(1.02);
}

@media (max-width: 768px) {
  .nadpis {
    font-size: 2.6rem !important;
  }

  .hero-shell {
    background: transparent;
    border: 0;
    box-shadow: none;
    border-radius: 0;
    padding: 0;
  }
}
</style>
