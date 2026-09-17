# Velocity Motors — Expanded Jenkins CI/CD Demo

A larger professional automotive portfolio website for practicing:
- Git & GitHub
- Jenkins CI/CD
- AWS EC2
- Apache HTTPD
- Linux
- Webhook-based deployment

## Website features
- Large hero section
- 12 vehicle cards with car images
- Category filters: Luxury, Performance, SUV, Electric
- Vehicle details modal
- Test-drive form
- Services section
- About section
- Responsive mobile layout
- Automotive statistics section

## Important
This is a fictional portfolio/demo website. Vehicle names and prices are demo content.

The car images are loaded from external Unsplash image URLs, so an internet connection is required when opening the site. For a production project, replace these with properly licensed/self-hosted assets.

## Local test
Open `index.html` in a browser.

## Git workflow
```bash
git init
git add .
git commit -m "Create expanded Velocity Motors website"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/velocity-motors.git
git push -u origin main
```

## Planned CI/CD
Windows → Git → GitHub → Jenkins → Apache on AWS EC2 → Browser
