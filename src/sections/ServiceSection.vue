<template>
  <section id="services-section" class="px-6 md:px-12 lg:px-32 py-10 md:py-24 relative overflow-hidden border-t border-stone-200">
    <div class="services-fade services-fade-left" aria-hidden="true"></div>
    <div class="services-fade services-fade-right" aria-hidden="true"></div>

    <div class="flex gap-6 flex-col md:flex-row md:items-end md:justify-between mb-8">
      <div>
        <h2 class="uppercase text-4xl md:text-5xl font-semibold">SLUŽBY</h2>
      </div>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mt-6">
      <article class="service-card p-5">
        <img src="@/assets/1.jpg" alt="Pranie kobercov a čistenie gaučoviek" class="mb-4 service-obrazok">
        <h3 class="uppercase text-2xl font-semibold flex items-center gap-2">
          <span class="card-dot"></span> Pranie kobercov a čistenie gaučoviek
        </h3>
        <p class="text-stone-600 mt-3">
          Kompletný proces čistenia kobercov so zameraním na odstránenie hlbokej nečistoty a škvŕn.
        </p>
      </article>

      <article class="service-card p-5">
        <img src="@/assets/4.jpg" alt="Odstredenie kobercov" class="mb-4 service-obrazok">
        <h3 class="uppercase text-2xl font-semibold flex items-center gap-2">
          <span class="card-dot"></span> Odstredenie kobercov
        </h3>
        <p class="text-stone-600 mt-3">
          Odstredenie urýchľuje schnutie a pomáha zachovať kvalitu vlákien aj farieb.
        </p>
      </article>

      <article class="service-card p-5">
        <img src="@/assets/2.jpg" alt="Vysušenie kobercov" class="mb-4 service-obrazok">
        <h3 class="uppercase text-2xl font-semibold flex items-center gap-2">
          <span class="card-dot"></span> Vysušenie kobercov
        </h3>
        <p class="text-stone-600 mt-3">
          Rýchle vysušenie po čistení znižuje riziko zápachu a tvorby plesní.
        </p>
      </article>
    </div>
  </section>
</template>

<style>
.service-card {
  transition: transform 0.2s, box-shadow 0.2s, border-color 0.2s;
  border-radius: 1rem;
  border: 1px solid #e7e5e4;
  background: linear-gradient(155deg, rgba(255, 255, 255, 0.94), rgba(241, 245, 249, 0.88));
  box-shadow: 0 10px 30px rgba(2, 6, 23, 0.07);
}

.service-card:hover {
  transform: translateY(-6px);
  border-color: #0f766e;
  box-shadow: 0 18px 35px rgba(2, 6, 23, 0.12);
}

.card-dot {
  width: 0.55rem;
  height: 0.55rem;
  border-radius: 9999px;
  background: #0f766e;
  box-shadow: 0 0 0 5px rgba(15, 118, 110, 0.14);
}

.services-fade {
  position: absolute;
  width: 22rem;
  height: 22rem;
  border-radius: 9999px;
  filter: blur(48px);
  opacity: 0.34;
  z-index: -10;
  pointer-events: none;
}

.services-fade-left {
  top: -7rem;
  left: -8rem;
  background: radial-gradient(circle, rgba(56, 189, 248, 0.38), rgba(56, 189, 248, 0));
}

.services-fade-right {
  bottom: -10rem;
  right: -8rem;
  background: radial-gradient(circle, rgba(45, 212, 191, 0.34), rgba(45, 212, 191, 0));
}

.service-card img {
  width: 100%;
  object-fit: cover;
  height: 400px;
  border-radius: 10px;
}

</style>
