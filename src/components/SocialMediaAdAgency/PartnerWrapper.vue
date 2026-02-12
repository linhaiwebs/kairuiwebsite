<template>
  <div class="partner-wrapper">
    <div class="partner-message-container">
      <h3 class="partner-message">专一让我们更专业！</h3>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "PartnerWrapper",
});
</script>

<style lang="scss" scoped>
.partner-wrapper {
  padding: {
    left: 110px;
    right: 110px;
    top: 70px;
    bottom: 70px;
  }
}

.partner-message-container {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 0;
}

.partner-message {
  font-size: 32px;
  font-weight: 700;
  color: var(--headingColor);
  margin: 0;
  text-align: center;
  font-family: var(--headingFontFamily);
  letter-spacing: 2px;
}

/* Max width 767px */
@media only screen and (max-width: 767px) {
  .partner-wrapper {
    padding: 30px 20px;
  }

  .partner-message {
    font-size: 24px;
    letter-spacing: 1px;
  }
}

/* Min width 768px to Max width 991px */
@media only screen and (min-width: 768px) and (max-width: 991px) {
  .partner-wrapper {
    padding: 40px 20px;
  }

  .partner-message {
    font-size: 28px;
  }
}

/* Min width 992px to Max width 1199px */
@media only screen and (min-width: 992px) and (max-width: 1199px) {
  .partner-wrapper {
    padding: 50px 30px;
  }

  .partner-message {
    font-size: 30px;
  }
}

/* Min width 1200px to Max width 1399px */
@media only screen and (min-width: 1200px) and (max-width: 1399px) {
  .partner-wrapper {
    padding: 60px 50px;
  }
}
</style>