<template>
  <div class="container-fluid mw-1740">
    <div class="banner-wrap-top">
      <div class="banner-wrap">
        <div class="row align-items-center">
          <div class="col-lg-7 col-xxl-5">
            <div class="banner-content style-two">
              <h1
                data-aos="fade-up"
                data-aos-duration="1200"
                data-aos-delay="100"
              >
                {{ t('home.banner.title') }}<br/>{{ t('home.banner.subtitle') }}
              </h1>
              <p
                data-aos="fade-up"
                data-aos-duration="1200"
                data-aos-delay="200"
              >
                {{ t('home.banner.description') }}
              </p>
              <div class="banner-buttons-wrap" data-aos="fade-up" data-aos-duration="1200" data-aos-delay="300">
                <a
                  href="https://t.me/Digua7733"
                  target="_blank"
                  rel="noopener noreferrer"
                  class="default-btn btn-telegram"
                >
                  <img
                    src="../../assets/images/telegram.png"
                    alt="telegram"
                    class="telegram-icon"
                  />
                  TELEGRAM
                </a>
              </div>

              <div
                class="custom-row d-lg-flex justify-content-between"
                data-aos="fade-up"
                data-aos-duration="1200"
                data-aos-delay="400"
              >
                <div class="custom-grid-33">
                  <div class="award-single-item award-winning">
                    <div class="d-flex align-items-center">
                      <div class="flex-shrink-0">
                        <img
                          src="../../assets/images/icon-google-ads.png"
                          alt="google-ads"
                        />
                      </div>
                      <div class="flex-grow-1 ms-3">
                        <p class="award">Google认证合作伙伴</p>
                        <p class="clients mb-0">
                          <span>500+</span> {{ t('home.stats.clients') }}
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="custom-grid-33">
                  <div class="award-single-item review-on mb-0">
                    <div class="d-flex align-items-center mb-1">
                      <p class="review">{{ t('home.stats.averageRoi') }}</p>
                      <div>
                        <img
                          src="../../assets/images/icon-star.png"
                          alt="icon-star"
                        />
                        <img
                          src="../../assets/images/icon-star.png"
                          alt="icon-star"
                        />
                        <img
                          src="../../assets/images/icon-star.png"
                          alt="icon-star"
                        />
                        <img
                          src="../../assets/images/icon-star.png"
                          alt="icon-star"
                        />
                        <img
                          src="../../assets/images/icon-star.png"
                          alt="icon-star"
                        />
                      </div>
                    </div>
                    <div class="d-flex align-items-center">
                      <p style="font-size: 24px; font-weight: 700; margin: 0;">300%+</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div
            class="col-lg-5 col-xxl-7 mt-5 mt-lg-0"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="500"
          >
            <div class="banner-img-2 text-lg-end">
              <img src="../../assets/images/banner-2.png" alt="banner" />
            </div>
          </div>
        </div>
      </div>

      <PartnerWrapper />
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { useI18n } from "vue-i18n";
import PartnerWrapper from "./PartnerWrapper.vue";

export default defineComponent({
  name: "MainBanner",
  components: {
    PartnerWrapper,
  },
  setup() {
    const { t } = useI18n();
    return { t };
  },
});
</script>

<style lang="scss" scoped>
.banner-content {
  max-width: 1000px;
  margin: auto;

  h1 {
    font-size: 70px;
    line-height: 80px;
    margin-bottom: 20px;
  }
  p {
    font-size: 20px;
    font-weight: 500;
    margin-bottom: 31px;
  }
  .default-btn {
    margin-bottom: 30px;
    padding: 17px 42.3px;
  }
  &.style-two {
    max-width: 654px;
    margin-left: 0;

    p {
      font-size: 18px;
      margin-bottom: 40px;
      font-weight: 400;
    }
    .banner-buttons-wrap {
      display: flex;
      gap: 20px;
      margin-bottom: 100px;
      flex-wrap: wrap;

      .default-btn {
        margin-bottom: 0;
        padding: 16px 47.5px;
      }

      .btn-telegram {
        background: #0088cc;
        display: inline-flex;
        align-items: center;
        gap: 10px;

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
  }
}
.banner-wrap {
  background-color: #faf4f4;
  border-radius: 20px;
  padding: {
    top: 107px;
    left: 110px;
    right: 58px;
    bottom: 47px;
  }
}
.banner-wrap-top {
  background-color: #f2f2f8;
  border-radius: 20px;
}
.award-single-item {
  margin-bottom: 25px;
  position: relative;
  z-index: 1;

  .award-item {
    margin-left: -15px;
    transition: var(--transition);
    z-index: 1;
    img {
      border: 3px solid var(--whiteColor);
      width: 46px;
      height: 46px;
      cursor: pointer;
    }
    &:first-child {
      margin-left: 0;
    }
    &:hover {
      transform: translateX(5px);
    }
  }
  .award-experts {
    margin-left: 20px;
    a {
      text-decoration: none;
      font-weight: 500;
      color: var(--headingColor);
      span {
        margin-right: 8px;
      }
    }
  }
  &.award-winning {
    p {
      font-weight: 500;
      color: var(--headingColor);
    }
    .award {
      margin-bottom: 0;
    }
    .clients {
      span {
        font-weight: 700;
        font-size: 20px;
      }
    }
    &.bg {
      border-radius: 4px;
      background: rgba(0, 0, 0, 0.15);
      padding: 13px;

      img {
        filter: invert(1);
      }
      p {
        color: var(--whiteColor);
        font-size: 16px;
      }
      .clients {
        span {
          color: var(--whiteColor);
        }
      }
    }
  }
  &.review-on {
    p {
      font-weight: 500;
      color: var(--headingColor);
      margin-bottom: 0 !important;
      &.review {
        position: relative;
        top: 2px;
      }
    }
    img {
      margin-right: 5px;
    }
    .review {
      margin-right: 27px;
    }
  }
}

/* Max width 767px */
@media only screen and (max-width: 767px) {
  .banner-content {
    h1 {
      font-size: 30px;
      line-height: normal;
      margin-bottom: 15px;
    }
    p {
      font-size: 16px;
      margin-bottom: 15px;
    }
    .default-btn {
      margin-bottom: 15px;
      padding: 16px 20px;
    }
    &.style-two {
      p {
        margin-bottom: 30px;
        font-size: 16px;
      }
      .banner-buttons-wrap {
        margin-bottom: 30px;
        gap: 10px;

        .default-btn {
          margin-bottom: 0;
          padding: 16px 20px;
        }
      }
      .review-on {
        .review {
          margin-bottom: 0;
        }
        p {
          margin-bottom: 0;
        }
      }
    }
  }
  .banner-wrap {
    padding: 20px;
  }
}

/* Min width 768px to Max width 991px */
@media only screen and (min-width: 768px) and (max-width: 991px) {
  .banner-content {
    h1 {
      font-size: 40px;
      line-height: normal;
      margin-bottom: 15px;
    }
    p {
      font-size: 17px;
      margin-bottom: 15px;
    }
    &.style-two {
      p {
        margin-bottom: 30px;
        font-size: 16px;
      }
      .banner-buttons-wrap {
        margin-bottom: 30px;

        .default-btn {
          margin-bottom: 0;
        }
      }
      .review-on {
        .review {
          margin-bottom: 0;
        }
        p {
          margin-bottom: 0;
        }
      }
    }
  }
  .banner-wrap {
    padding: 20px;
  }
}

/* Min width 992px to Max width 1199px */
@media only screen and (min-width: 992px) and (max-width: 1199px) {
  .banner-content {
    h1 {
      font-size: 62px;
    }
    &.style-two {
      p {
        margin-bottom: 30px;
      }
      .banner-buttons-wrap {
        margin-bottom: 50px;

        .default-btn {
          margin-bottom: 0;
        }
      }
      .review-on {
        .review {
          margin-bottom: 0;
        }
        p {
          margin-bottom: 0;
        }
      }
    }
  }
  .banner-wrap {
    padding: 30px;
  }
}
/* Min width 1200px to Max width 1399px */
@media only screen and (min-width: 1200px) and (max-width: 1399px) {
  .banner-content {
    &.style-two {
      p {
        margin-bottom: 30px;
      }
      .banner-buttons-wrap {
        margin-bottom: 80px;

        .default-btn {
          margin-bottom: 0;
        }
      }
      .review-on {
        .review {
          margin-bottom: 0;
        }
        p {
          margin-bottom: 0;
        }
      }
    }
  }
  .banner-wrap {
    padding: 50px;
  }
}
/* Min width 1400px to Max width 1799px */
@media only screen and (min-width: 1400px) and (max-width: 1700px) {
  .banner-wrap {
    padding: 50px;
  }
  .banner-content {
    h1 {
      font-size: 65px;
    }
  }
}
</style>