<template>
  <div class="language-switcher">
    <select
      v-model="currentLocale"
      @change="changeLocale"
      class="form-select language-select"
    >
      <option value="zh-CN">中文</option>
      <option value="en-US">English</option>
    </select>
  </div>
</template>

<script lang="ts">
import { defineComponent, ref, watch } from 'vue'
import { useI18n } from 'vue-i18n'

export default defineComponent({
  name: 'LanguageSwitcher',
  setup() {
    const { locale } = useI18n()
    const currentLocale = ref(locale.value)

    const changeLocale = () => {
      locale.value = currentLocale.value
      localStorage.setItem('locale', currentLocale.value)
      document.documentElement.setAttribute('lang', currentLocale.value)
    }

    watch(locale, (newLocale) => {
      currentLocale.value = newLocale
    })

    return {
      currentLocale,
      changeLocale
    }
  }
})
</script>

<style lang="scss" scoped>
.language-switcher {
  display: inline-block;

  .language-select {
    border: 1px solid #e3e3e3;
    border-radius: 5px;
    padding: 8px 12px;
    font-size: 14px;
    font-family: var(--headingFontFamily);
    font-weight: 500;
    color: var(--headingColor);
    background-color: var(--whiteColor);
    cursor: pointer;
    transition: var(--transition);
    min-width: 100px;

    &:hover {
      border-color: var(--mainColor);
    }

    &:focus {
      outline: none;
      border-color: var(--mainColor);
      box-shadow: 0 0 0 0.2rem rgba(231, 43, 21, 0.15);
    }
  }
}

@media only screen and (max-width: 767px) {
  .language-switcher {
    .language-select {
      padding: 5px 8px;
      font-size: 12px;
      min-width: 80px;
    }
  }
}
</style>
