# Alex Jeong — Portfolio

Personal portfolio website of Alex Jeong (정 알렉스 · Алекс Джеонг), Partnerships & Influencer Marketing Lead.

A single static page: plain HTML, CSS and JavaScript, no build step or dependencies.

## Structure

```
index.html   The website (styles and scripts inline)
assets/      Logos, photos and cover images
build.sh     Optional: builds portfolio.html, a single-file copy with images embedded
```

## Run locally

Open `index.html` in a browser, or serve the folder:

```
ruby -run -e httpd . -p 8765
```

then visit http://localhost:8765.

## Publish with GitHub Pages

Repository **Settings → Pages → Build and deployment**: set *Source* to "Deploy from a branch",
branch `main`, folder `/ (root)`. The site appears at `https://<your-username>.github.io/my-website/`.
