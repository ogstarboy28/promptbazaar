# PromptBazaar

**PromptBazaar** is a free‑to‑use, searchable library of ready‑made AI prompts for ChatGPT, Claude, Gemini, Midjourney, Stable Diffusion and more.

## How it works
1. **Data source** – A public Google Sheet (or CSV) that holds every prompt with metadata (use‑case, tags, recommended model, token estimate, rating, affiliate link).
2. **Static site** – Hosted on Vercel / Netlify (free) – the site pulls the CSV, builds a searchable list with Fuse.js, and lets users copy the prompt with one click.
3. **Free vs Pro** – The first 30 prompts are visible to everyone. After the email capture (Mailchimp) the user sees a **Pro Pack** button (Gumroad) that unlocks 300+ premium prompts.
4. **Community submissions** – A Google Form (linked in the footer) lets anyone suggest a prompt. Submissions are reviewed and added to the sheet; contributors earn points and a revenue share.
5. **Monetisation** – Pro Pack sales, affiliate links on prompt cards, and sponsored prompts.

## Quick start (for you)
1. **Create the Google Sheet**
   - Make a new Google Sheet with the columns:
     `Prompt, UseCase, Model, Tokens, Tags, Rating, AffiliateURL, License`
   - Fill the first 30 rows with the sample prompts provided in `prompts.csv` (import → File → Import → Upload CSV).
   - Publish the sheet as **CSV** (File → Publish to the web → select CSV). Copy the public URL.
2. **Edit `config.js`** (in the repo) and replace `YOUR_CSV_URL` with the public CSV link.
3. **Deploy**
   - Push the folder to a GitHub repo (you can create a repo `promptbazaar`).
   - Connect the repo to Vercel (or Netlify) – they auto‑detect the static site and give you a live URL.
4. **Add Mailchimp embed**
   - Sign up for a free Mailchimp account, create an audience, copy the embedded form code and replace the placeholder in `index.html`.
5. **Create the Google Form** for community submissions and add its link at the bottom of the site.

## Folder structure
```
promptbazaar/
├─ index.html      # main page, search UI
├─ style.css       # minimal styling (Tailwind CDN used)
├─ config.js       # contains the CSV URL
├─ prompts.csv     # sample data (30 prompts)
├─ README.md       # this file
└─ .gitignore      # optional
```

Once deployed you’ll have a live PromptBazaar ready for traffic. Feel free to customise colours, add analytics (Google Analytics script) and tweak the UI.
