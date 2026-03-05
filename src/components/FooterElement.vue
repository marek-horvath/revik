<template>
  <a
    href="https://marek-horvath.github.io/portfolio/"
    target="_blank"
    rel="noopener noreferrer"
    class="footer-wrap w-full flex justify-center items-center flex-col gap-2 p-4 md:p-5 cursor-pointer"
    aria-label="Done by Marek Horvath"
  >
    <div class="text-stone-100 flex items-center justify-center text-center gap-3">
      <img src="@/assets/MH.png" alt="Marek Horvath" class="w-8 h-8 md:w-10 md:h-10">
      <div>
        <p class="tracking-widest font-semibold text-stone-100 text-sm md:text-base">Done by Marek Horvath</p>
      </div>
    </div>

    <div class="text-stone-100 flex justify-center items-center">
      <i class="fa-solid fa-arrow-up-right-from-square text-sm md:text-base text-stone-100/90" aria-hidden="true"></i>
    </div>
  </a>
</template>

<style scoped>
.footer-wrap {
  background:
    linear-gradient(120deg, rgba(15, 23, 42, 0.95), rgba(30, 41, 59, 0.92) 38%, rgba(15, 118, 110, 0.9)),
    radial-gradient(circle at 15% 10%, rgba(125, 211, 252, 0.35), transparent 34%);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.12), 0 -8px 30px rgba(2, 6, 23, 0.2);
}

.footer-wrap:hover {
  filter: brightness(1.05);
}
</style>
