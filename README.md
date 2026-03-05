# Revik Web

Vue 3 single-page website for the Revik carpet cleaning business.

## Tech stack

- Vue 3
- Vue CLI 5
- Tailwind CSS
- Leaflet (`vue3-leaflet`) for map section

## Project setup

```bash
npm install
```

### Run development server

```bash
npm run serve
```

### Build for production

```bash
npm run build
```

### Lint code

```bash
npm run lint
```

## Project structure

- `src/components` shared UI blocks (`NavbarElement`, `FooterElement`)
- `src/sections` page sections (main, services, about, contact)
- `src/assets` static images and branding assets
- `public/index.html` base HTML template

## Content customization

- Company name and nav labels: `src/components/NavbarElement.vue`
- Hero text and pricing: `src/sections/MainSection.vue`
- Service cards: `src/sections/ServiceSection.vue`
- About text: `src/sections/AboutSection.vue`
- Contact details and map coordinates: `src/sections/ContactSection.vue`
- Footer details: `src/components/FooterElement.vue`

## Notes

- Coordinates currently point to Kosice area (`48.709010, 21.204130`).
- Update contact details before publishing if phone/address changes.
