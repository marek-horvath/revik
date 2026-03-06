<template>
  <section id="contact-section" class="px-6 md:px-12 lg:px-32 py-10 md:py-24 relative text-center">
    <h2 class="hidden md:block uppercase text-4xl md:text-5xl mb-3 font-semibold">Kontakt</h2>
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 items-stretch">
      <div class="w-full h-[500px] mx-auto rounded-2xl overflow-hidden border border-stone-200 shadow-xl lg:order-1">
        <img src="@/assets/dom1.png" alt="Sídlo firmy Revik" class="w-full h-full object-cover">
      </div>

      <div class="w-full h-[500px] mx-auto rounded-2xl overflow-hidden border border-stone-200 shadow-xl lg:order-3">
        <iframe
          class="w-full h-full"
          title="Mapa - Pod horou 23, Košice"
          loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"
          src="https://www.google.com/maps?q=Pod+horou+23,+040+16+Kosice&output=embed"
        ></iframe>
      </div>

      <div class="hidden lg:flex flex-col w-full items-center justify-center text-stone-600 rounded-2xl border border-stone-200 p-6 bg-white/90 backdrop-blur-sm shadow-xl lg:order-2">
        <h2 class="text-2xl mb-4">Revik</h2>
        <p class="mb-4">Miroslav Forrai</p>
        <p class="mb-4">Pranie kobercov a čistenie gaučoviek v Košiciach</p>
        <a class="mb-4 underline hover:text-teal-700" href="https://maps.google.com/?q=Pod+horou+23,+040+16+Kosice" target="_blank" rel="noopener noreferrer">
          Adresa: Pod horou 23, 040 16 Košice
        </a>
        <a class="mb-2 text-lg font-semibold hover:text-teal-700" href="tel:+421903485311">Telefón: 0903 485 311</a>
      </div>
    </div>
  </section>
</template>
