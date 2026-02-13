<template>
  <div class="pb-100">
    <div class="container">
      <div class="transform-wrap bg-color-faf4f4">
        <div class="row align-items-center">
          <div
            class="col-lg-6"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="200"
          >
            <div class="transform-left-content position-relative z-1">
              <h2>释放数字营销潜力，成就卓越业绩！</h2>
              <img
                src="../../assets/images/shape-1.png"
                class="shape shape-4 position-absolute"
                alt="shape-1"
              />
            </div>
          </div>
          <div
            class="col-lg-6"
            data-aos="fade-up"
            data-aos-duration="1200"
            data-aos-delay="200"
          >
            <div class="transform-right-content">
              <p>
                Kairui（凯瑞）团队持续监控和优化广告投放，让您的业务始终保持竞争优势。有紧急需求？请联系我们
              </p>
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
                立即咨询
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "UnlockSocialMediaPotential",
};
</script>

<style lang="scss" scoped>
.transform-wrap {
  padding: 90px 111px;
  border-radius: 20px;
}
.transform-left-content {
  max-width: 465px;
  h2 {
    margin-bottom: 0;
    font-size: 36px;
  }
  &.style-two {
    h2 {
      color: var(--whiteColor);
    }
    .shape {
      &.shape-4 {
        right: -280px !important;
      }
    }
  }
}
.transform-right-content {
  max-width: 412px;
  text-align: right;
  margin-left: auto;
  p {
    margin-bottom: 20px;
  }
  .call {
    display: block;
    margin-bottom: 25px;
    font-size: 22px;
    font-weight: 600;
    color: var(--headingColor);
    &:hover {
      color: var(--mainColor);
    }
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
  &.style-two {
    p {
      color: #ececec;
    }
    .call {
      color: var(--whiteColor);
    }
  }
}

/* Max width 767px */
@media only screen and (max-width: 767px) {
  .transform-wrap {
    padding: 20px;
  }
  .transform-left-content {
    margin-bottom: 20px;
    h2 {
      font-size: 25px;
    }
  }
  .transform-right-content {
    text-align: left;
    max-width: 100%;
  }
}

/* Min width 768px to Max width 991px */
@media only screen and (min-width: 768px) and (max-width: 991px) {
  .transform-wrap {
    padding: 30px;
  }
  .transform-left-content {
    margin-bottom: 20px;
    h2 {
      font-size: 30px;
    }
  }
  .transform-right-content {
    text-align: left;
    max-width: 100%;
  }
}

/* Min width 992px to Max width 1199px */
@media only screen and (min-width: 992px) and (max-width: 1199px) {
  .transform-wrap {
    padding: 50px;
  }
}
</style>