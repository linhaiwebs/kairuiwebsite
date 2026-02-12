<template>
  <nav :class="['navbar navbar-expand-lg', { sticky: isSticky }]" id="navbar">
    <div :class="['container', mwClass]">
      <router-link class="navbar-brand" to="/">
        <img
          src="../../assets/images/logo.png"
          class="main-logo"
          alt="white-logo"
        />
        <img
          src="../../assets/images/white-logo.svg"
          class="white-logo d-none"
          alt="white-logo"
        />
      </router-link>
      <a class="navbar-toggler" @click="stateStoreInstance.onChange">
        <span class="burger-menu">
          <span class="top-bar"></span>
          <span class="middle-bar"></span>
          <span class="bottom-bar"></span>
        </span>
      </a>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul :class="['navbar-nav', className]">
          <li class="nav-item">
            <router-link class="nav-link" to="/">
              {{ t('nav.home') }}
            </router-link>
          </li>

          <li class="nav-item">
            <router-link class="nav-link" to="/services">
              {{ t('nav.ourServices') }}
            </router-link>
          </li>

          <li class="nav-item">
            <router-link class="nav-link" to="/about-us">
              {{ t('nav.aboutUs') }}
            </router-link>
          </li>

          <li class="nav-item">
            <router-link class="nav-link" to="/success-stories">
              {{ t('nav.successStories') }}
            </router-link>
          </li>

          <li class="nav-item">
            <router-link class="nav-link" to="/blog">
              {{ t('nav.ourBlog') }}
            </router-link>
          </li>

          <li class="nav-item">
            <router-link class="nav-link" to="/contact-us">
              {{ t('nav.contact') }}
            </router-link>
          </li>
        </ul>
      </div>
      <div class="others-options">
        <ul class="d-flex align-items-center">
          <li>
            <LanguageSwitcher />
          </li>
          <li>
            <router-link to="/contact-us" class="default-btn">
              {{ t('nav.getProposal') }}
              <img
                src="../../assets/images/icon-right-white.png"
                alt="right-chevron"
              />
            </router-link>
          </li>
          <li>
            <a
              href="https://t.me/Digua7733"
              target="_blank"
              rel="noopener noreferrer"
              class="default-btn btn-telegram"
              title="Contact us on Telegram"
            >
              <img
                src="../../assets/images/telegram.png"
                alt="telegram"
                class="telegram-icon"
              />
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>

<script lang="ts">
import { defineComponent, ref, onMounted } from "vue";
import { useI18n } from "vue-i18n";
import stateStore from "../../utils/store";
import LanguageSwitcher from "./LanguageSwitcher.vue";

export default defineComponent({
  name: "MainNavbar",
  components: {
    LanguageSwitcher
  },
  props: ["mwClass", "className"],
  setup() {
    const { t } = useI18n();
    const isSticky = ref(false);
    const stateStoreInstance = stateStore;

    onMounted(() => {
      window.addEventListener("scroll", () => {
        let scrollPos = window.scrollY;
        isSticky.value = scrollPos >= 100;
      });
    });

    return {
      t,
      isSticky,
      stateStoreInstance,
    };
  },
});
</script>

<style lang="scss" scoped>
.navbar {
  z-index: 999;
  padding: {
    top: 41px;
    bottom: 41px;
  }
  &.ptb-21 {
    padding-top: 21px;
    padding-bottom: 21px;
  }
  .navbar-brand {
    margin-right: 30px;
    &.me-95 {
      margin-right: 95px;
    }
  }
  .navbar-nav {
    .nav-item {
      margin: {
        left: 21px;
        right: 21px;
      }
      &:last-child {
        margin-right: 0;
      }
      &:first-child {
        margin-left: 0;
      }
      .nav-link {
        color: var(--headingColor);
        transition: var(--transition);
        position: relative;
        padding: 13px 0;
        z-index: 1;
        font: {
          family: var(--headingFontFamily);
          size: 14px;
          weight: 500;
        }
        &.dropdown-toggle {
          padding-right: 0;

          &::after {
            display: none;
          }
        }
        &.active {
          color: var(--mainColor);
          &.dropdown-toggle {
            &::after {
              color: var(--mainColor) !important;
            }
          }
        }
        &:hover {
          color: var(--mainColor);
        }
      }
      .dropdown-menu {
        left: 0;
        border: 0;
        top: 50px;
        opacity: 0;
        width: 265px;
        padding: 15px 0;
        border-radius: 0 0 5px 5px;
        visibility: hidden;
        display: block !important;
        background-color: var(--whiteColor);
        transition: all 0.2s ease-in-out;
        box-shadow: 0 0.275rem 1.25rem rgba(11, 15, 25, 0.05),
          0 0.25rem 0.5625rem rgba(11, 15, 25, 0.03);
        li {
          position: relative;

          .dropdown-item {
            display: block;
            padding: 8px 20px;
            position: relative;
            color: var(--headingColor);
            background-color: transparent !important;
            font: {
              family: var(--headingFontFamily);
              size: 13px;
              weight: 500;
            }
            &.dropdown-toggle {
              padding-right: 18px;

              &::after {
                position: absolute;
                vertical-align: 0;
                content: "\ea4e";
                margin-left: 0;
                right: 15px;
                border: 0;
                top: 14px;
                font: {
                  size: 15px;
                  weight: 700;
                  family: remixicon !important;
                }
              }
            }
            &.active {
              color: var(--mainColor);
            }
            &:hover {
              color: var(--mainColor);
            }
          }
          .dropdown-menu {
            visibility: hidden;
            left: -100%;
            right: auto;
            opacity: 0;
            top: 0;
          }
          &:hover {
            .sub-dropdown {
              color: var(--mainColor);
              &.dropdown-toggle {
                &::after {
                  color: var(--mainColor);
                }
              }
            }
            .dropdown-menu {
              visibility: visible;
              opacity: 1;
            }
          }
        }
      }
      &:hover {
        .nav-link {
          color: var(--mainColor);
          &.dropdown-toggle {
            &::after {
              color: var(--mainColor) !important;
            }
          }
        }
        .dropdown-menu {
          opacity: 1;
          visibility: visible;
        }
      }
    }
  }
  &.sticky {
    top: 0;
    left: 0;
    width: 100%;

    position: sticky;
    box-shadow: 0 2px 28px 0 rgba(0, 0, 0, 0.09);
    animation: 500ms ease-in-out 0s normal none 1 running fadeInDown;
    background-color: var(--whiteColor) !important;
    padding: {
      top: 15px;
      bottom: 15px;
    }
  }
  .navbar-toggler {
    color: var(--headingColor);
    font-size: inherit;
    box-shadow: unset;
    border: none;
    padding: 0;
    .burger-menu {
      cursor: pointer;
      span {
        height: 3px;
        width: 30px;
        margin: 5px 0;
        display: block;
        background: var(--mainColor);
      }
    }
  }
  .others-options {
    margin-left: 30px;

    ul {
      padding-left: 0;
      margin-bottom: 0;
      list-style: none;
      li {
        display: inline-block;
        margin-right: 34px;

        .default-btn {
          padding: 17px 34.7px;

          &.btn-two {
            padding: 17px 38.2px;
          }

          &.btn-telegram {
            background: #0088cc;
            padding: 17px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            min-width: auto;

            .telegram-icon {
              width: 20px;
              height: 20px;
              filter: brightness(0) invert(1);
            }

            &:hover {
              background: #006699;
            }
          }
        }
        .src-form {
          .form-control {
            width: 343px;
            height: 52px;
            border-radius: 50px;
            border-color: #f2f2f8;
            background-color: #f2f2f8;
            padding-left: 34px;
            padding-right: 34px;
            &:focus {
              border-color: var(--mainColor);
            }
          }
          .src-btn {
            right: 34px !important;
          }
        }
        &:last-child {
          margin-right: 0;
        }
      }
    }
    &.ms-83 {
      margin-left: 83px;
    }
  }
  &.border-bottom {
    border-bottom: 1px solid #e3e3e3 !important;
  }
}
@keyframes fadeInDown {
  0% {
    opacity: 0;
    transform: translate3d(0, -100%, 0);
  }
  to {
    opacity: 1;
    transform: translateZ(0);
  }
}

/* Max width 767px */
@media only screen and (max-width: 767px) {
  .navbar {
    padding-top: 10px;
    padding-bottom: 10px;
    &.sticky {
      top: -1px;
    }
    .navbar-brand {
      max-width: 125px;
    }
    .container {
      position: relative;
    }
    .container-fluid {
      position: relative;
    }
    .others-options {
      position: absolute;
      top: 8.5px;
      right: 62px;
      ul {
        li {
          margin-right: 8px;
          .default-btn {
            padding: 5px 12px;
            font-size: 11px;
            &.btn-two {
              padding: 5px 12px;
              font-size: 11px;
              margin-right: 10px;
            }
            &.btn-telegram {
              padding: 5px 10px;
              .telegram-icon {
                width: 16px;
                height: 16px;
              }
            }
          }
        }
      }
    }
  }
}

/* Min width 768px to Max width 991px */
@media only screen and (min-width: 768px) and (max-width: 991px) {
  .navbar {
    padding-top: 15px;
    padding-bottom: 15px;
    &.sticky {
      top: -1px;
    }
    .container {
      position: relative;
    }
    .container-fluid {
      position: relative;
    }
    .others-options {
      position: absolute;
      top: 8.5px;
      right: 62px;
      ul {
        li {
          margin-right: 8px;
          .default-btn {
            padding: 5px 12px;
            font-size: 11px;
            &.btn-two {
              padding: 5px 12px;
              font-size: 11px;
              margin-right: 10px;
            }
            &.btn-telegram {
              padding: 5px 10px;
              .telegram-icon {
                width: 16px;
                height: 16px;
              }
            }
          }
        }
      }
    }
  }
}

/* Min width 992px to Max width 1199px */
@media only screen and (min-width: 992px) and (max-width: 1199px) {
  .navbar {
    padding-top: 20px;
    padding-bottom: 20px;

    .navbar-brand {
      &.me-95 {
        margin-right: 30px;
      }
    }
    .navbar-nav {
      .nav-item {
        margin-left: 12px;
        margin-right: 12px;
      }
    }
    .others-options {
      ul {
        li {
          margin-right: 20px;
          .default-btn {
            padding: 11px 20.4px;
            font-size: 13px;
            &.btn-two {
              padding: 11px 20.4px;
            }
            &.btn-telegram {
              padding: 11px;
              .telegram-icon {
                width: 18px;
                height: 18px;
              }
            }
          }
          .src-form {
            .form-control {
              padding-left: 12px;
              padding-right: 12px;
              width: 150px;
              height: 40px;
            }
            .src-btn {
              right: 12px !important;
            }
          }
        }
      }
    }
  }
}

/* Min width 1200px to Max width 1399px */
@media only screen and (min-width: 1200px) and (max-width: 1399px) {
  .navbar {
    .navbar-brand {
      &.me-95 {
        margin-right: 30px;
      }
    }
    .container-fluid {
      max-width: 1320px;
      padding: {
        left: 12px;
        right: 12px;
      }
    }
    .navbar-nav {
      .nav-item {
        margin-left: 18px;
        margin-right: 18px;
        .nav-link {
          &.dropdown-toggle::after {
            top: 12px;
          }
        }
        .dropdown-menu {
          left: auto;
          right: 0;
        }
      }
    }
    .others-options {
      ul {
        li {
          margin-right: 20px;
          .src-form {
            .form-control {
              padding-left: 12px;
              padding-right: 12px;
              width: 150px;
            }
            .src-btn {
              right: 12px !important;
            }
          }
        }
      }
    }
  }
}

/* Min width 1400px to Max width 1700px */
@media only screen and (min-width: 1400px) and (max-width: 1700px) {
  .navbar {
    .others-options {
      ul {
        li {
          .src-form {
            .form-control {
              width: 210px;
            }
          }
        }
      }
    }
  }
}
</style>
