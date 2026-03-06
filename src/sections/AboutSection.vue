<template>
  <section id="about-section" class="px-6 md:px-12 lg:px-32 py-10 md:py-20 relative">
    <div class="about-fade about-fade-left" aria-hidden="true"></div>
    <div class="about-fade about-fade-right" aria-hidden="true"></div>

    <div class="rounded-3xl border border-stone-200 bg-white/90 backdrop-blur-sm shadow-xl p-6 md:p-10 onas-shell">
      <div class="flex gap-6 flex-col md:flex-row md:items-end md:justify-between mb-6">
        <div>
          <h2 class="uppercase text-4xl md:text-5xl font-semibold">O NÁS</h2>
        </div>
      </div>

      <div class="flex items-center gap-8 onas-section">
        <div class="w-2/3 pl-0 md:pl-2">
          <p class="text-stone-600 mb-2 onas-text leading-relaxed text-lg">
            Sme špecialisti na pranie kobercov a čistenie gaučoviek s dlhoročnými skúsenosťami.
            Naše služby sú dostupné pre domácnosti aj komerčné priestory.
            Pranie kobercov a čistenie gaučoviek robíme s láskou a profesionálnym prístupom.
            Sme z Košíc a vždy sa snažíme poskytnúť najlepšie služby našim zákazníkom.
            Každú zákazku riešime individuálne, s dôrazom na čistotu, rýchlosť a bezpečné čistiace prostriedky.
            Pre viac informácií nás neváhajte kontaktovať.
          </p>
        </div>

        <div class="w-1/3">
          <img class="w-full h-auto rounded-2xl about-image" src="@/assets/3.jpg" alt="Revik pranie kobercov a čistenie gaučoviek" />
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.onas-shell {
  background: linear-gradient(155deg, rgba(255, 255, 255, 0.95), rgba(241, 245, 249, 0.88));
}

.about-image {
  box-shadow: 0 12px 30px rgba(2, 6, 23, 0.16);
}

.about-fade {
  position: absolute;
  width: 22rem;
  height: 22rem;
  border-radius: 9999px;
  filter: blur(48px);
  opacity: 0.3;
  z-index: -10;
  pointer-events: none;
}

.about-fade-left {
  top: -8rem;
  left: -7rem;
  background: radial-gradient(circle, rgba(125, 211, 252, 0.34), rgba(125, 211, 252, 0));
}

.about-fade-right {
  bottom: -10rem;
  right: -8rem;
  background: radial-gradient(circle, rgba(52, 211, 153, 0.32), rgba(52, 211, 153, 0));
}

@media (max-width: 768px) {
  .onas-section {
    display: flex;
    flex-direction: column;
  }

  .onas-section div {
    width: 100%;
    padding: 0;
  }

  p {
    text-align: left;
  }

  h2 {
    text-align: left;
  }
}
</style>
