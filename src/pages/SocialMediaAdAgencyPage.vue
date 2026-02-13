<template>
  <MainNavbar class="bg-white" mwClass="mw-1740" className="ms-auto" />
  <MainBanner />
  <WhatWeDo />
  <CapabilitiesContent />
  <UnlockSocialMediaPotential />
  <IncreaseYourBrands />
  <OurBlog class="pt-100" />
  <HarnessPowerOfSocialMedia />
  <MainFooter class="bg-style" />
</template>

<script lang="ts">
import { defineComponent } from "vue";
import MainNavbar from "../components/Layouts/MainNavbar.vue";
import MainBanner from "../components/SocialMediaAdAgency/MainBanner.vue";
import WhatWeDo from "../components/SocialMediaAdAgency/WhatWeDo.vue";
import CapabilitiesContent from "../components/SocialMediaAdAgency/CapabilitiesContent.vue";
import UnlockSocialMediaPotential from "../components/SocialMediaAdAgency/UnlockSocialMediaPotential.vue";
import IncreaseYourBrands from "../components/Common/IncreaseYourBrands.vue";
import OurBlog from "../components/Common/OurBlog.vue";
import HarnessPowerOfSocialMedia from "../components/Common/HarnessPowerOfSocialMedia.vue";
import MainFooter from "../components/Layouts/MainFooter.vue";

export default defineComponent({
  name: "SocialMediaAdAgencyPage",
  components: {
    MainNavbar,
    MainBanner,
    WhatWeDo,
    CapabilitiesContent,
    UnlockSocialMediaPotential,
    IncreaseYourBrands,
    OurBlog,
    HarnessPowerOfSocialMedia,
    MainFooter,
  },
});
</script>