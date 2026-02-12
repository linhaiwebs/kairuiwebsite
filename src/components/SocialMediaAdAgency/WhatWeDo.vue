<template>
  <div class="ptb-100">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div
            class="what-we-do-contents"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="100"
          >
            <span class="top-title">{{ t('home.whatWeDo.title').toUpperCase() }}</span>
            <h2>{{ t('home.whatWeDo.subtitle') }}</h2>
          </div>

          <ul
            class="nav nav-tabs what-we-do-tabs d-block"
            id="myTab"
            role="tablist"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="200"
          >
            <li
              class="nav-item"
              role="presentation"
              v-for="(item, index) in items"
              :key="item.id"
            >
              <button
                class="nav-link d-flex justify-content-between align-items-center"
                :class="{ active: activeIndex === index }"
                @click="setActive(index)"
              >
                <span>{{ item.title }}</span>
                <span class="icon">
                  <img
                    src="../../assets/images/icon-right-red.png"
                    alt="icon-right-red"
                  />
                </span>
              </button>
            </li>
          </ul>

          <router-link
            to="/contact-us"
            class="default-btn btn-two"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="300"
          >
            {{ t('nav.getProposal').toUpperCase() }}
            <img
              src="../../assets/images/icon-right-white.png"
              alt="icon-right-white"
            />
          </router-link>
        </div>
        <div class="col-lg-6">
          <div
            class="what-we-do-content-right"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="200"
          >
            <p>
              {{ t('home.banner.description') }}
            </p>
            <router-link to="/about-us" class="read-more">
              {{ t('common.learnMore').toUpperCase() }}
              <img
                src="../../assets/images/icon-right-red.png"
                alt="icon-right-red"
              />
            </router-link>
          </div>

          <div
            class="tab-content"
            id="myTabContent"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="300"
          >
            <div
              v-for="(item, index) in items"
              :key="item.id"
              :class="['tab-pane', { active: activeIndex === index }]"
              v-show="activeIndex === index"
            >
              <div class="what-we-do-single-items position-relative z-1">
                <img
                  src="../../assets/images/shape-1.png"
                  class="shape shape-2 position-absolute top-0 end-0"
                  alt="shape"
                />
                <div class="icon">
                  <img :src="item.image" alt="icon-diagram2" />
                </div>
                <h3>{{ item.title }}</h3>
                <p>
                  {{ item.description }}
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent, ref, computed } from "vue";
import { useI18n } from "vue-i18n";

export default defineComponent({
  name: "WhatWeDo",
  setup() {
    const { t } = useI18n();
    const activeIndex = ref(0);

    const items = computed(() => [
      {
        id: 1,
        title: t('home.whatWeDo.searchAds.title'),
        image: require("../../assets/images/icon-diagram2.png"),
        description: t('home.whatWeDo.searchAds.description'),
      },
      {
        id: 2,
        title: t('home.whatWeDo.displayAds.title'),
        image: require("../../assets/images/icon-diagram2.png"),
        description: t('home.whatWeDo.displayAds.description'),
      },
      {
        id: 3,
        title: t('home.whatWeDo.shoppingAds.title'),
        image: require("../../assets/images/icon-diagram2.png"),
        description: t('home.whatWeDo.shoppingAds.description'),
      },
      {
        id: 4,
        title: t('home.whatWeDo.youtubeAds.title'),
        image: require("../../assets/images/icon-diagram2.png"),
        description: t('home.whatWeDo.youtubeAds.description'),
      },
      {
        id: 5,
        title: t('home.whatWeDo.remarketing.title'),
        image: require("../../assets/images/icon-diagram2.png"),
        description: t('home.whatWeDo.remarketing.description'),
      },
      {
        id: 6,
        title: t('home.whatWeDo.analytics.title'),
        image: require("../../assets/images/icon-diagram2.png"),
        description: t('home.whatWeDo.analytics.description'),
      },
    ]);

    const setActive = (index: number) => {
      activeIndex.value = index;
    };

    return {
      t,
      activeIndex,
      items,
      setActive,
    };
  },
});
</script>

<style lang="scss" scoped>
.what-we-do-contents {
  max-width: 424px;
  h2 {
    font-size: 36px;
    font-weight: 600;
    margin-bottom: 70px;
  }
}
.what-we-do-content-right {
  margin-bottom: 75px;
  p {
    margin-bottom: 25px;
    span {
      font-weight: 700;
    }
  }
}
.what-we-do-tabs {
  margin-bottom: 37px;
  max-width: 536px;
  .nav-item {
    .nav-link {
      padding: 10px 0;
      border: none;
      border-top: 1px solid #cacaca;
      border-bottom: 1px solid #cacaca;
      width: 100%;
      border-radius: 0;
      font-size: 22px;
      font-weight: 600;
      font-family: var(--headingFontFamily);
      color: var(--bodyColor);

      .icon {
        width: 46px;
        height: 46px;
        line-height: 43px;
        background-color: #faf4f4;
        border-radius: 50px;
        transition: var(--transition);

        img {
          position: relative;
          left: 1px;
        }
      }
      &.active {
        color: var(--headingColor);
        .icon {
          background-color: var(--headingColor);
        }
      }
    }
  }
}
.what-we-do-single-items {
  border-radius: 20px;
  background-color: #faf4f4;
  padding: {
    top: 72px;
    left: 88px;
    right: 88px;
    bottom: 168px;
  }
  .icon {
    width: 100px;
    height: 100px;
    line-height: 100px;
    text-align: center;
    border-radius: 100px;
    background-color: var(--whiteColor);
    margin-bottom: 25px;
  }
  h3 {
    font-size: 36px;
    font-weight: 600;
    margin-bottom: 20px;
  }
}

/* Max width 767px */
@media only screen and (max-width: 767px) {
  .what-we-do-contents {
    h2 {
      font-size: 25px;
      margin-bottom: 30px;
    }
  }
  .what-we-do-tabs {
    .nav-item {
      .nav-link {
        font-size: 18px;
      }
    }
  }
  .what-we-do-content-right {
    margin-top: 30px;
    margin-bottom: 30px;
  }
  .what-we-do-single-items {
    padding: 20px;
    .icon {
      margin-bottom: 20px;
    }
    h3 {
      font-size: 25px;
      margin-bottom: 15px;
    }
  }
}

/* Min width 768px to Max width 991px */
@media only screen and (min-width: 768px) and (max-width: 991px) {
  .what-we-do-contents {
    max-width: 100%;
    h2 {
      font-size: 30px;
      margin-bottom: 30px;
    }
  }
  .what-we-do-tabs {
    max-width: 100%;
    .nav-item {
      .nav-link {
        font-size: 18px;
      }
    }
  }
  .what-we-do-content-right {
    margin-top: 30px;
    margin-bottom: 30px;
  }
  .what-we-do-single-items {
    padding: 20px;
    .icon {
      margin-bottom: 20px;
    }
    h3 {
      font-size: 25px;
      margin-bottom: 15px;
    }
  }
}

/* Min width 992px to Max width 1199px */
@media only screen and (min-width: 992px) and (max-width: 1199px) {
  .what-we-do-single-items {
    padding: 90px 30px;
  }
}
</style>
