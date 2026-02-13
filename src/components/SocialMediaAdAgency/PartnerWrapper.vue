<template>
  <div class="partner-wrapper">
    <div class="partner-logos-container">
      <div
        class="partner-logo-item"
        v-for="platform in platforms"
        :key="platform.id"
        data-aos="fade-up"
        data-aos-duration="1200"
        :data-aos-delay="platform.delay"
      >
        <img :src="platform.logo" :alt="platform.name" />
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "PartnerWrapper",
  data() {
    return {
      platforms: [
        {
          id: 1,
          name: "Google",
          logo: require("../../assets/images/icon-google-ads.png"),
          delay: 100,
        },
        {
          id: 2,
          name: "Facebook",
          logo: require("../../assets/images/icon-facebook.png"),
          delay: 200,
        },
        {
          id: 3,
          name: "YouTube",
          logo: require("../../assets/images/icon-youtube.png"),
          delay: 300,
        },
        {
          id: 4,
          name: "Bing",
          logo: require("../../assets/images/icon-microsoft-ads.png"),
          delay: 400,
        },
        {
          id: 5,
          name: "Instagram",
          logo: require("../../assets/images/icon-instagram.png"),
          delay: 500,
        },
      ],
    };
  },
});
</script>

<style lang="scss" scoped>
.partner-wrapper {
  padding: 70px 110px;
}

.partner-logos-container {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 60px;
  flex-wrap: wrap;
}

.partner-logo-item {
  flex: 0 0 auto;
  display: flex;
  align-items: center;
  justify-content: center;

  img {
    height: 60px;
    width: auto;
    object-fit: contain;
    transition: transform 0.3s ease, opacity 0.3s ease;
    opacity: 0.8;

    &:hover {
      transform: scale(1.1);
      opacity: 1;
    }
  }
}

/* Max width 767px */
@media only screen and (max-width: 767px) {
  .partner-wrapper {
    padding: 30px 20px;
  }

  .partner-logos-container {
    gap: 30px;
  }

  .partner-logo-item {
    img {
      height: 40px;
    }
  }
}

/* Min width 768px to Max width 991px */
@media only screen and (min-width: 768px) and (max-width: 991px) {
  .partner-wrapper {
    padding: 40px 20px;
  }

  .partner-logos-container {
    gap: 40px;
  }

  .partner-logo-item {
    img {
      height: 50px;
    }
  }
}

/* Min width 992px to Max width 1199px */
@media only screen and (min-width: 992px) and (max-width: 1199px) {
  .partner-wrapper {
    padding: 50px 30px;
  }

  .partner-logos-container {
    gap: 50px;
  }

  .partner-logo-item {
    img {
      height: 55px;
    }
  }
}

/* Min width 1200px to Max width 1399px */
@media only screen and (min-width: 1200px) and (max-width: 1399px) {
  .partner-wrapper {
    padding: 60px 50px;
  }

  .partner-logos-container {
    gap: 55px;
  }
}
</style>