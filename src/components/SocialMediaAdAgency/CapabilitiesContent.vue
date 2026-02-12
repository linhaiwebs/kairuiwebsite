<template>
  <div class="pt-100 pb-100">
    <div class="container">
      <div
        class="d-sm-flex align-items-center justify-content-between mb-50 position-relative z-1"
      >
        <div
          class="section-title left-title mb-0"
          data-aos="fade-up"
          data-aos-duration="1200"
          data-aos-delay="200"
        >
          <span class="top-title">独家优势</span>
          <h2>
            4大矩阵助力
          </h2>
        </div>
        <a
          href="https://t.me/Digua7733"
          target="_blank"
          rel="noopener noreferrer"
          class="default-btn btn-telegram mt-3 mt-sm-0"
          data-aos="fade-up"
          data-aos-duration="1200"
          data-aos-delay="200"
        >
          <img
            src="../../assets/images/telegram.png"
            alt="telegram"
            class="telegram-icon"
          />
          即刻联系
        </a>
      </div>

      <div
        class="row justify-content-center"
        data-aos="fade-up"
        data-aos-duration="1200"
        data-aos-delay="300"
      >
        <div
          class="col-xl-3 col-sm-6"
          v-for="capabilitie in capabilities"
          :key="capabilitie.id"
        >
          <div
            class="capabilities-single-item transition-y"
            @mouseover="setActiveCapability(capabilitie.id)"
            :class="{ active: activeCapability === capabilitie.id }"
          >
            <div class="icon">
              <img :src="capabilitie.imageIcon" alt="icon" />
            </div>
            <h3>{{ capabilitie.title }}</h3>
            <p>
              {{ capabilitie.description }}
            </p>
          </div>
        </div>
      </div>

      <div class="border-style pt-75"></div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent, ref } from "vue";

export default defineComponent({
  name: "CapabilitiesContent",
  data() {
    return {
      capabilities: [
        {
          id: 1,
          imageIcon: require("../../assets/images/icon-google-ads.png"),
          title: "落地页分发系统",
          description:
            "完整的落地页生成系统,不仅包含市面上已知海量的模板库,还提供定制服务,一键即可生成高转化的落地页。并提供模块,可通过混淆,插入,搭载的方式实现各种功能。",
        },
        {
          id: 2,
          imageIcon: require("../../assets/images/icon-microsoft-ads.png"),
          title: "终端API系统",
          description:
            "无论是任何股票数据,金融数据,还是其他任意灰产品类的大数据接口,并提供定制以适配你的任意灰产品类的数据对接,完善的验证机制。获取高额广告质量得分。",
        },
        {
          id: 3,
          imageIcon: require("../../assets/images/icon-campaign.png"),
          title: "优于市面圣盾的斗篷机制",
          description:
            "不仅仅可以通过后台完整的查看所有用户的访问情况，传统的依赖ua浏览器机制的规避方式显然已经不太适用于现在充满虚假的市场,我们提供金融级运营商判定逻辑,百分百真实用户。",
        },
        {
          id: 4,
          imageIcon: require("../../assets/images/icon-shopping.png"),
          title: "广告托管服务",
          description:
            "当你将服务托管给我们的时候，不仅仅可以获取实时24✖7的可视化监控数据。我们的雷达预警机制可以保证任何时间我们都能随时监控广告的实时表现。",
        },
      ],
      activeCapability: ref(1),
    };
  },
  methods: {
    setActiveCapability(id: number) {
      this.activeCapability = id;
    },
  },
});
</script>

<style lang="scss" scoped>
.btn-telegram {
  background: #0088cc;
  display: inline-flex;
  align-items: center;
  gap: 10px;
  border: none;

  .telegram-icon {
    width: 20px;
    height: 20px;
    filter: brightness(0) invert(1);
  }

  &:hover {
    background: #006699;
  }
}

.capabilities-single-item {
  background-color: var(--whiteColor);
  border-radius: 20px;
  padding: 48px 38px;
  margin-bottom: 25px;
  transition: var(--transition);
  .icon {
    width: 70px;
    height: 70px;
    line-height: 70px;
    background-color: #f2f2f8;
    text-align: center;
    border-radius: 50px;
    margin-bottom: 15px;
  }
  h3 {
    font-size: 22px;
    margin-bottom: 15px;
  }
  p {
    margin-bottom: 15px;
  }
  &.active {
    background-color: #faf4f4;
  }
}
.shape {
  &.shape-1 {
    left: 500px !important;
    top: 62% !important;
  }
}

/* Max width 767px */
@media only screen and (max-width: 767px) {
  .capabilities-single-item {
    background-color: #faf4f4;
    padding: 20px;
    h3 {
      font-size: 20px;
    }
    p {
      margin-bottom: 0;
    }
  }
}
/* Min width 768px to Max width 991px */
@media only screen and (min-width: 768px) and (max-width: 991px) {
  .capabilities-single-item {
    background-color: #faf4f4;
    p {
      margin-bottom: 0;
    }
  }
}
/* Min width 992px to Max width 1199px */
@media only screen and (min-width: 992px) and (max-width: 1199px) {
  .capabilities-single-item {
    background-color: #faf4f4;
    p {
      margin-bottom: 0;
    }
  }
}
/* Min width 1200px to Max width 1399px */
@media only screen and (min-width: 1200px) and (max-width: 1399px) {
  .capabilities-single-item {
    padding: 25px;
    h3 {
      font-size: 20px;
    }
    p {
      margin-bottom: 0;
    }
  }
}
</style>