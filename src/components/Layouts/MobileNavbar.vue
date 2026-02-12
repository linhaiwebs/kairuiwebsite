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
          <router-link to="/" class="mobile-nav-link" @click="handleClick">
            {{ t('nav.home') }}
          </router-link>
        </li>
        <li>
          <router-link to="/services" class="mobile-nav-link" @click="handleClick">
            {{ t('nav.ourServices') }}
          </router-link>
        </li>
        <li>
          <router-link to="/about-us" class="mobile-nav-link" @click="handleClick">
            {{ t('nav.aboutUs') }}
          </router-link>
        </li>
        <li>
          <router-link to="/success-stories" class="mobile-nav-link" @click="handleClick">
            {{ t('nav.successStories') }}
          </router-link>
        </li>
        <li>
          <router-link to="/blog" class="mobile-nav-link" @click="handleClick">
            {{ t('nav.ourBlog') }}
          </router-link>
        </li>
        <li>
          <router-link to="/contact-us" class="mobile-nav-link" @click="handleClick">
            {{ t('nav.contact') }}
          </router-link>
        </li>
      </ul>
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

    return {
      t,
      stateStoreInstance,
      handleClick,
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
</style>
