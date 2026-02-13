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
        <div v-html="platform.svg" class="logo-svg"></div>
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
          delay: 100,
          svg: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 272 92" fill="none"><path d="M115.75 47.18c0 12.77-9.99 22.18-22.25 22.18s-22.25-9.41-22.25-22.18C71.25 34.32 81.24 25 93.5 25s22.25 9.32 22.25 22.18zm-9.74 0c0-7.98-5.79-13.44-12.51-13.44S80.99 39.2 80.99 47.18c0 7.9 5.79 13.44 12.51 13.44s12.51-5.55 12.51-13.44z" fill="#EA4335"/><path d="M163.75 47.18c0 12.77-9.99 22.18-22.25 22.18s-22.25-9.41-22.25-22.18c0-12.85 9.99-22.18 22.25-22.18s22.25 9.32 22.25 22.18zm-9.74 0c0-7.98-5.79-13.44-12.51-13.44s-12.51 5.46-12.51 13.44c0 7.9 5.79 13.44 12.51 13.44s12.51-5.55 12.51-13.44z" fill="#FBBC05"/><path d="M209.75 26.34v39.82c0 16.38-9.66 23.07-21.08 23.07-10.75 0-17.22-7.19-19.66-13.07l8.48-3.53c1.51 3.61 5.21 7.87 11.17 7.87 7.31 0 11.84-4.51 11.84-13v-3.19h-.34c-2.18 2.69-6.38 5.04-11.68 5.04-11.09 0-21.25-9.66-21.25-22.09 0-12.52 10.16-22.26 21.25-22.26 5.29 0 9.49 2.35 11.68 4.96h.34v-3.61h9.25zm-8.56 20.92c0-7.81-5.21-13.52-11.84-13.52-6.72 0-12.35 5.71-12.35 13.52 0 7.73 5.63 13.36 12.35 13.36 6.63 0 11.84-5.63 11.84-13.36z" fill="#4285F4"/><path d="M225 3v65h-9.5V3h9.5z" fill="#34A853"/><path d="M262.02 54.48l7.56 5.04c-2.44 3.61-8.32 9.83-18.48 9.83-12.6 0-22.01-9.74-22.01-22.18 0-13.19 9.49-22.18 20.92-22.18 11.51 0 17.14 9.16 18.98 14.11l1.01 2.52-29.65 12.28c2.27 4.45 5.8 6.72 10.75 6.72 4.96 0 8.4-2.44 10.92-6.14zm-23.27-7.98l19.82-8.23c-1.09-2.77-4.37-4.7-8.23-4.7-4.95 0-11.84 4.37-11.59 12.93z" fill="#EA4335"/><path d="M35.29 41.41V32H67c.31 1.64.47 3.58.47 5.68 0 7.06-1.93 15.79-8.15 22.01-6.05 6.3-13.78 9.66-24.02 9.66C16.32 69.35.36 53.89.36 34.91.36 15.93 16.32.47 35.3.47c10.5 0 17.98 4.12 23.6 9.49l-6.64 6.64c-4.03-3.78-9.49-6.72-16.97-6.72-13.86 0-24.7 11.17-24.7 25.03 0 13.86 10.84 25.03 24.7 25.03 8.99 0 14.11-3.61 17.39-6.89 2.66-2.66 4.41-6.46 5.1-11.65l-22.49.01z" fill="#4285F4"/></svg>`,
        },
        {
          id: 2,
          name: "Facebook",
          delay: 200,
          svg: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024" fill="#1877F2"><path d="M1024 512C1024 229.23 794.77 0 512 0S0 229.23 0 512c0 255.55 187.23 467.37 432 505.78V660H302V512h130V399.2C432 270.88 508.44 200 625.39 200c56 0 114.61 10 114.61 10v126h-64.56c-63.6 0-83.44 39.47-83.44 79.96V512h142l-22.7 148H592v357.78c244.77-38.41 432-250.23 432-505.78z"/><path fill="#FFF" d="M711.3 660L734 512H592v-96.08c0-40.49 19.84-79.96 83.44-79.96H740V210s-58.59-10-114.61-10C508.44 200 432 270.88 432 399.2V512H302v148h130v357.78a517.84 517.84 0 00160 0V660h119.3z"/></svg>`,
        },
        {
          id: 3,
          name: "YouTube",
          delay: 300,
          svg: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 159 110" fill="none"><path d="M154 17.5c-1.82-6.73-7.07-12-13.8-13.8C128.2 0 79.5 0 79.5 0S30.8 0 18.8 3.7c-6.73 1.82-12 7.07-13.8 13.8C1.32 29.52 1.32 55 1.32 55s0 25.48 3.68 37.5c1.8 6.73 7.07 11.82 13.8 13.62 12 3.7 60.7 3.7 60.7 3.7s48.7 0 60.7-3.7c6.73-1.8 12-6.89 13.8-13.62 3.68-12.02 3.68-37.5 3.68-37.5s0-25.48-3.68-37.5z" fill="red"/><path d="M64.2 78.4L104.6 55 64.2 31.6z" fill="#FFF"/></svg>`,
        },
        {
          id: 4,
          name: "Bing",
          delay: 400,
          svg: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 23 23" fill="none"><path d="M1.03 0L7.5 1.83v15.48l6.36-3.68-3.78-1.44-1.32-6L22.5 10l-7.38 5.1v4.44l-13.26-7.6.18-11.93z" fill="#008373"/></svg>`,
        },
        {
          id: 5,
          name: "TikTok",
          delay: 500,
          svg: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 2859 3333" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" image-rendering="optimizeQuality" fill-rule="evenodd" clip-rule="evenodd"><path d="M2081 0c55 473 319 755 778 785v532c-266 26-499-61-770-225v995c0 1264-1378 1659-1932 753-356-583-138-1606 1004-1647v561c-87 14-180 36-265 65-254 86-398 247-358 531 77 544 1075 705 992-358V1h551z" fill="#25f4ee"/><path d="M2803 1577c-235-86-435-161-770-225v995c0 1264-1378 1659-1932 753-356-583-138-1606 1004-1647v561c-87 14-180 36-265 65-254 86-398 247-358 531 77 544 1075 705 992-358V1c0 0 0 0 0 0h551c0 0 0 0 0 0 55 473 319 755 778 785v532z" fill="#fe2c55"/><path d="M2059 1v551c-87 14-180 36-265 65-254 86-398 247-358 531 77 544 1075 705 992-358V1h551c0 0 0 0 0 0 55 473 319 755 778 785v532c-266 26-499-61-770-225v995c0 1264-1378 1659-1932 753-356-583-138-1606 1004-1647v561z" fill="#000"/></svg>`,
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
  transition: transform 0.3s ease, opacity 0.3s ease;
  opacity: 0.85;

  &:hover {
    transform: scale(1.1);
    opacity: 1;
  }
}

.logo-svg {
  height: 60px;
  width: auto;
  display: flex;
  align-items: center;

  ::v-deep svg {
    height: 100%;
    width: auto;
    max-width: 180px;
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

  .logo-svg {
    height: 40px;

    ::v-deep svg {
      max-width: 120px;
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

  .logo-svg {
    height: 50px;

    ::v-deep svg {
      max-width: 150px;
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

  .logo-svg {
    height: 55px;

    ::v-deep svg {
      max-width: 165px;
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