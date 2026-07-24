# Dr. Umesh Dhawan — Academic Website

A single-page academic profile for **Dr. Umesh Dhawan**, immunologist at The Francis Crick Institute
(inflammation resolution, cardiovascular disease, lupus, and fungal immunity).

Built as a self-contained static site — one `index.html` with inline CSS/JS and local image assets.
No build step and no dependencies.

## Structure

```
index.html            # the entire site (markup + styles + scripts)
hero.png, profile.png # hero graphical abstract + portrait
pub1.jpg … pub8.jpg   # publication figures
logo-*.png            # publisher logos (Cell Press, AHA, Elsevier, Frontiers, Wiley, MDPI)
Article1.*            # unpublished manuscript 1 (video, poster, PDF)
Article2.*            # unpublished manuscript 2 (figure, PDF)
Article3.png          # unpublished manuscript 3 (graphical abstract)
vercel.json           # static hosting config (clean URLs + asset caching headers)
```

## Deploy on Vercel

This is a static site — Vercel serves it directly, with **no build command and no framework**.

1. Push this folder to a GitHub repository (see below).
2. In Vercel: **Add New → Project → Import** the repository.
3. Framework Preset: **Other**. Build Command: *(leave empty)*. Output Directory: *(leave empty / root)*.
4. **Deploy.** `index.html` is served at `/`.

### Push to GitHub

```bash
git remote add origin https://github.com/<you>/<repo>.git
git push -u origin main
```

## Local preview

Just open `index.html` in a browser, or serve the folder:

```bash
python -m http.server 8000   # then visit http://localhost:8000
```

> Note: the page loads two Google Fonts (Noto Serif, Libre Franklin) from a CDN; offline it falls
> back to Georgia / system sans.
