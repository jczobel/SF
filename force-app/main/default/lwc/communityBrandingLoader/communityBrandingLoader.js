import { LightningElement } from "lwc";
import { loadStyle } from "lightning/platformResourceLoader";
import brandingStyles from "@salesforce/resourceUrl/fpCommunityBranding";

export default class CommunityBrandingLoader extends LightningElement {
  stylesLoaded = false;

  renderedCallback() {
    if (this.stylesLoaded) {
      return;
    }

    this.stylesLoaded = true;
    loadStyle(this, brandingStyles).catch((error) => {
      // eslint-disable-next-line no-console
      console.error("Failed to load community branding styles.", error);
    });
  }
}
