<template>
  <div class="footer-area">
    <div class="container">
      <div class="footer-wrap">
        <div class="row justify-content-center">
          <div
            class="col-lg-3 col-sm-6"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="200"
          >
            <div class="footer-widget-single-item">
              <h3>{{ t('footer.solutions') }}</h3>

              <ul class="import-link ps-0 mb-0 list-unstyled">
                <li>
                  <router-link to="/service-details">{{ t('footer.googleSearchAds') }}</router-link>
                </li>
                <li>
                  <router-link to="/service-details">
                    {{ t('footer.googleDisplayAds') }}
                  </router-link>
                </li>
                <li>
                  <router-link to="/service-details">
                    {{ t('footer.googleShoppingAds') }}
                  </router-link>
                </li>
                <li>
                  <router-link to="/service-details">
                    {{ t('footer.youtubeAds') }}
                  </router-link>
                </li>
                <li>
                  <router-link to="/service-details">{{ t('footer.remarketingCampaigns') }}</router-link>
                </li>
              </ul>
            </div>
          </div>
          <div
            class="col-lg-3 col-sm-6"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="300"
          >
            <div class="footer-widget-single-item">
              <h3>{{ t('footer.resources') }}</h3>

              <ul class="import-link ps-0 mb-0 list-unstyled">
                <li>
                  <router-link to="/blog">{{ t('footer.blog') }}</router-link>
                </li>
                <li>
                  <router-link to="/success-stories"
                    >{{ t('footer.caseStudies') }}</router-link
                  >
                </li>
                <li>
                  <router-link to="/blog">{{ t('footer.industryInsights') }}</router-link>
                </li>
                <li>
                  <router-link to="/contact-us">{{ t('nav.contact') }}</router-link>
                </li>
                <li>
                  <router-link to="/about-us">{{ t('nav.aboutUs') }}</router-link>
                </li>
              </ul>
            </div>
          </div>
          <div
            class="col-lg-3 col-sm-6"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="400"
          >
            <div class="footer-widget-single-item">
              <h3>{{ t('footer.opportunities') }}</h3>

              <ul class="import-link ps-0 mb-0 list-unstyled">
                <li>
                  <router-link to="/careers">{{ t('footer.joinOurTeam') }}</router-link>
                </li>
                <li>
                  <router-link to="/about-us">{{ t('footer.partnerships') }}</router-link>
                </li>
                <li>
                  <router-link to="/success-stories">{{ t('nav.successStories') }}</router-link>
                </li>
                <li>
                  <router-link to="/contact-us">{{ t('nav.getProposal') }}</router-link>
                </li>
                <li>
                  <router-link to="/services">{{ t('nav.ourServices') }}</router-link>
                </li>
              </ul>
            </div>
          </div>
          <div
            class="col-lg-3 col-sm-6"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="500"
          >
            <div class="footer-widget-single-item">
              <h3>{{ t('footer.newsletterTitle') }}</h3>

              <form class="signup-form">
                <div class="form-group">
                  <input
                    type="text"
                    class="form-control"
                    :placeholder="t('footer.newsletterPlaceholder')"
                  />
                  <button type="submit" class="default-btn">
                    {{ t('footer.subscribe') }}
                    <img
                      src="../../assets/images/icon-right-white.png"
                      alt="icon-right-white"
                    />
                  </button>
                </div>
              </form>

              <ul class="ps-0 mb-0 list-unstyled d-flex social-link">
                <li>
                  <a href="https://www.facebook.com/" target="_blank">
                    <img
                      src="../../assets/images/icon-facebook.png"
                      alt="icon-facebook"
                    />
                  </a>
                </li>
                <li>
                  <a href="https://www.linkedin.com/" target="_blank">
                    <img
                      src="../../assets/images/icon-linkedin.png"
                      alt="icon-linkedin"
                    />
                  </a>
                </li>
                <li>
                  <a href="https://www.twitter.com/" target="_blank">
                    <img
                      src="../../assets/images/icon-twitter.png"
                      alt="icon-twitter"
                    />
                  </a>
                </li>
                <li>
                  <a href="https://www.instagram.com/" target="_blank">
                    <img
                      src="../../assets/images/icon-instagram.png"
                      alt="icon-instagram"
                    />
                  </a>
                </li>
                <li>
                  <a href="https://www.youtube.com/" target="_blank">
                    <img
                      src="../../assets/images/icon-youtube.png"
                      alt="icon-youtube"
                    />
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div
        class="copy-right d-md-flex justify-content-between align-items-center text-center"
      >
        <p class="mb-0">
          {{ t('footer.copyright') }}
        </p>
        <p class="mb-0">
          <router-link to="/privacy-policy">{{ t('nav.privacyPolicy') }}</router-link> |
          <router-link to="/terms-conditions">{{ t('nav.termsConditions') }}</router-link>
        </p>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { useI18n } from "vue-i18n";

export default defineComponent({
  name: "MainFooter",
  setup() {
    const { t } = useI18n();
    return { t };
  },
});
</script>

<style lang="scss" scoped>
.footer-area {
  &.bg-style {
    position: relative;
    &::before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 40%;
      background-color: #ef4335;
      z-index: -1;
    }
  }
}
.footer-wrap {
  padding: 100px 112px;
  padding-bottom: 75px;
  background-color: #f2f2f8;
  border-radius: 20px;
}
.footer-widget-single-item {
  margin-bottom: 25px;
  h3 {
    font-size: 22px;
    font-weight: 600;
    margin-bottom: 16px;
    color: var(--headingColor);
    margin-bottom: 20px;
  }
  .import-link {
    li {
      margin-bottom: 12px;
      &:last-child {
        margin-bottom: 0;
      }
      a {
        color: #4c4c4c;
        text-decoration: none;
        font-family: var(--headingFontFamily);
        &:hover {
          color: var(--mainColor);
        }
      }
    }
  }
  .signup-form {
    .form-control {
      background-color: var(--whiteColor);
      border-color: var(--whiteColor);
      border-radius: 50px;
      height: 52px;
    }
    .default-btn {
      width: 100%;
      border: 0;
      margin-top: 15px;
    }
  }
  .social-link {
    margin-top: 25px;
    li {
      margin-right: 10px;
      transition: var(--transition);
      &:hover {
        transform: translateY(-3px);
      }
      &:last-child {
        margin-right: 0;
      }
    }
  }
}
.copy-right {
  padding-top: 40px;
  padding-bottom: 40px;
  p {
    font-family: var(--headingFontFamily);
    span {
      color: var(--headingColor);
    }
    a {
      color: var(--headingColor);
      text-decoration: none;
      &:hover {
        color: var(--mainColor);
      }
    }
  }
}

/* Max width 767px */
@media only screen and (max-width: 767px) {
  .footer-wrap {
    padding: 30px;
  }
  .footer-widget-single-item {
    h3 {
      font-size: 20px;
      margin-bottom: 10px;
    }
    .import-link {
      li {
        margin-bottom: 10px;
      }
    }
  }
  .copy-right {
    padding-top: 20px;
    padding-bottom: 20px;
  }
}

/* Min width 768px to Max width 991px */
@media only screen and (min-width: 768px) and (max-width: 991px) {
  .footer-wrap {
    padding: 30px;
  }
  .footer-widget-single-item {
    h3 {
      font-size: 20px;
      margin-bottom: 10px;
    }
    .import-link {
      li {
        margin-bottom: 10px;
      }
    }
  }
  .copy-right {
    padding-top: 20px;
    padding-bottom: 20px;
  }
}

/* Min width 992px to Max width 1199px */
@media only screen and (min-width: 992px) and (max-width: 1199px) {
  .footer-wrap {
    padding: 50px;
  }
}
</style>