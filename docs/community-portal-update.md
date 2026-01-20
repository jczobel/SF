# Experience Cloud community portal update plan

## What’s included in this repo now

This repo did not include Experience Builder bundles or theme overrides for the community portal. To make the portal match `fpinsights.fptransitions.com`, I added a lightweight branding loader component and a static CSS resource you can tailor to the desired look and feel.

## New code added

### 1) Global branding loader component

Place the `communityBrandingLoader` component on your Experience Builder Theme Layout or on specific pages. It loads a global CSS resource into the portal.

**Files**

- `force-app/main/default/lwc/communityBrandingLoader/communityBrandingLoader.js`
- `force-app/main/default/lwc/communityBrandingLoader/communityBrandingLoader.html`
- `force-app/main/default/lwc/communityBrandingLoader/communityBrandingLoader.js-meta.xml`

### 2) CSS static resource

Update the tokens and classes in `fpCommunityBranding.css` to mirror the palette/typography from the target site.

**Files**

- `force-app/main/default/staticresources/fpCommunityBranding.css`
- `force-app/main/default/staticresources/fpCommunityBranding.resource-meta.xml`

## How to deploy and update the portal

1. **Deploy the new assets** to your org (via `sfdx force:source:deploy -p force-app/main/default`).
2. **Open Experience Builder** for your community.
3. **Add the `communityBrandingLoader` component** to the Theme Layout (best) or to every page so the CSS resource loads globally.
4. **Adjust Branding Set** values (logo, colors, fonts) in Experience Builder to match the target site.
5. **Update page content** using the `.fp-hero`, `.fp-card-grid`, and `.fp-card` utility classes from the static resource for sections that should visually match the target.
6. **Publish** the site once the styling matches your expectations.

## Optional: bring Experience Builder metadata into source control

If you want the entire portal definition in this repo, retrieve the Experience Cloud bundle:

```bash
sfdx force:source:retrieve -m "ExperienceBundle:Your_Site_Name"
```

This will add Experience Builder pages, theme layout, and branding metadata under `force-app/main/default/experiences/` and `force-app/main/default/brandingSets/` for future updates.
