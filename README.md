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

- Coordinates currently point to Košice area (`48.709010, 21.204130`).
- Update contact details before publishing if phone/address changes.

## Spustenie cez Docker

Predpoklady:

- Windows 10 alebo 11
- Docker Desktop so spusteným Docker Engine

Najjednoduchšie spustenie:

1. Dvakrát kliknite na `start.bat`.
2. Skript zostaví a spustí kontajner, počká na pripravenosť aplikácie a otvorí ju v predvolenom prehliadači.
3. Aplikácia je štandardne dostupná na `http://localhost:8080`.

Zastavenie:

```text
stop.bat
```

Skript používa `docker compose down` a nemaže Docker volumes.

Port možno zmeniť vytvorením lokálneho súboru `.env` podľa vzoru `.env.example`:

```env
APP_PORT=8080
```

Súbor `.env` sa neukladá do Git repozitára. Projekt nepotrebuje databázu ani tajné prihlasovacie údaje.

Zdrojové súbory sú do kontajnera pripojené pomocou bind mountu. Vue development server preto po úprave kódu stránku automaticky obnoví bez nového buildu. Ak sa zmení `package.json` alebo `package-lock.json`, spustite znova `start.bat`, ktorý vykoná build a aktualizuje závislosti.

Ručné Docker príkazy:

```bash
docker compose up -d --build
docker compose logs -f web
docker compose down
```

Pôvodné lokálne spustenie cez `npm install` a `npm run serve` zostáva zachované.
