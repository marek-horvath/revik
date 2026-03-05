<template>
  <section class="min-h-[85vh] px-6 md:px-12 lg:px-32 pt-28 md:pt-36 pb-16 mb-8 relative">
    <div class="hero-shell">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-10 items-center">
        <div>
          <h1 class="uppercase text-6xl lg:text-7xl mb-4 font-semibold nadpis">REVIK.SK</h1>
          <p class="xl:w-5/6 text-stone-600 text-lg leading-relaxed">
            Revik ponuka profesionalne pranie kobercov a cistenie gaucoviek v Kosiciach a okoli.
            Pouzivame overene postupy a kladieme doraz na kvalitu.
          </p>

          <p class="text-3xl xl:text-4xl mt-8 font-semibold text-stone-700 hero-price">
            Cena od 5 do 7 eur za m2
          </p>
        </div>
        <div class="image-wrap">
          <img src="@/assets/image.jpg" alt="Pranie kobercov a cistenie gaucoviek Revik" class="hero-image" />
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

.image-wrap {
  @apply hidden md:block rounded-[1.75rem] overflow-hidden;
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
    font-size: 3rem !important;
  }

  .hero-shell {
    border-radius: 1.5rem;
    padding: 1.5rem;
  }
}
</style>
