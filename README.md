# GrabWallet — High Schools site

Live site: https://keithonekeynetwork.github.io/schoolwallet/
Repo: https://github.com/keithonekeynetwork/schoolwallet (GitHub Pages deploys `main`)

**This folder is the one place to edit the site.** Don't edit it from a cloud
Claude session or a second checkout; if you must, pull first.

- `index.html` — the public site (lead form posts to Zoho CRM)
- `admin.html` — old Supabase admin page, to be removed
- `media/` — photos, films, logos
- `publish.sh` — commits, pulls GitHub's latest, pushes. Run it to publish:

```
./publish.sh "what changed"
```
