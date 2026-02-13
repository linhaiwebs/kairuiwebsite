<template>
  <div
    :class="[
      'responsive-navbar offcanvas offcanvas-end',
      { show: stateStoreInstance.open },
    ]"
    tabindex="-1"
    id="navbarOffcanvas"
  >
    <div class="offcanvas-header">
      <router-link to="/" @click="handleClick" class="logo d-inline-block">
        <img src="../../assets/images/logo.png" alt="logo" />
      </router-link>
      <button
        type="button"
        class="close-btn"
        @click="stateStoreInstance.onChange"
        data-bs-dismiss="offcanvas"
        aria-label="Close"
      >
        <i class="ri-close-fill"></i>
      </button>
    </div>
    <div class="offcanvas-body">
      <ul class="mobile-nav-menu">
        <li>
          <a href="#home" class="mobile-nav-link" @click="scrollToSection('home')">
            {{ t('nav.home') }}
          </a>
        </li>
        <li>
          <a href="#services" class="mobile-nav-link" @click="scrollToSection('services')">
            {{ t('nav.ourServices') }}
          </a>
        </li>
        <li>
          <a href="#about" class="mobile-nav-link" @click="scrollToSection('about')">
            {{ t('nav.aboutUs') }}
          </a>
        </li>
        <li>
          <a href="#capabilities" class="mobile-nav-link" @click="scrollToSection('capabilities')">
            能力展示
          </a>
        </li>
        <li>
          <a href="#blog" class="mobile-nav-link" @click="scrollToSection('blog')">
            {{ t('nav.ourBlog') }}
          </a>
        </li>
        <li>
          <a href="#contact" class="mobile-nav-link" @click="scrollToSection('contact')">
            {{ t('nav.contact') }}
          </a>
        </li>
      </ul>
      <div class="mobile-cta-section">
        <a
          href="https://t.me/Digua7733"
          target="_blank"
          rel="noopener noreferrer"
          class="mobile-telegram-btn"
        >
          <img
            src="../../assets/images/telegram.png"
            alt="telegram"
            class="telegram-icon"
          />
          <span>联系我们 Telegram</span>
        </a>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { useI18n } from "vue-i18n";
import stateStore from "../../utils/store";

export default defineComponent({
  name: "MobileNavbar",
  setup() {
    const { t } = useI18n();
    const stateStoreInstance = stateStore;
    const handleClick = () => {
      stateStoreInstance.open = false;
    };

    const scrollToSection = (sectionId: string) => {
      stateStoreInstance.open = false;

      setTimeout(() => {
        const element = document.getElementById(sectionId);
        if (element) {
          const offset = 80;
          const elementPosition = element.getBoundingClientRect().top;
          const offsetPosition = elementPosition + window.pageYOffset - offset;

          window.scrollTo({
            top: offsetPosition,
            behavior: "smooth"
          });
        }
      }, 300);
    };

    return {
      t,
      stateStoreInstance,
      handleClick,
      scrollToSection,
    };
  },
});
</script>

<style lang="scss" scoped>
.mobile-nav-menu {
  list-style: none;
  padding: 0;
  margin: 0;

  li {
    border-bottom: 1px solid #e3e3e3;

    &:last-child {
      border-bottom: none;
    }
  }

  .mobile-nav-link {
    display: block;
    padding: 15px 20px;
    color: var(--headingColor);
    font-family: var(--headingFontFamily);
    font-weight: 500;
    font-size: 16px;
    text-decoration: none;
    transition: var(--transition);

    &:hover,
    &.active {
      color: var(--mainColor);
      background-color: #f2f2f8;
    }
  }
}

.mobile-cta-section {
  padding: 20px;
  margin-top: 20px;

  .mobile-telegram-btn {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 12px;
    padding: 15px 25px;
    background: #0088cc;
    color: white;
    border-radius: 5px;
    text-decoration: none;
    font-family: var(--headingFontFamily);
    font-weight: 600;
    font-size: 16px;
    transition: var(--transition);

    .telegram-icon {
      width: 24px;
      height: 24px;
      filter: brightness(0) invert(1);
    }

    &:hover {
      background: #006699;
    }
  }
}
</style>
