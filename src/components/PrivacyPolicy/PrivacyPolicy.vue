<template>
  <div class="container">
    <div class="main-content-text">
      <span class="update">最后更新：2026年2月</span>
      <h3>隐私政策</h3>
      <p>
        我们非常重视您的隐私和个人信息保护。本隐私政策说明了我们如何收集、使用、存储和保护您的个人信息。
        当您使用我们的广告营销服务、访问我们的网站或与我们互动时，即表示您同意本隐私政策中所述的做法。
      </p>
      <p>
        我们致力于遵守所有适用的数据保护法律法规，确保您的个人信息得到安全和负责任的处理。
        我们采用业界领先的安全措施来保护您的数据，并定期审查和更新我们的隐私保护实践。
        如果您对我们的隐私政策有任何疑问或顾虑，请随时与我们联系。
      </p>

      <div class="gap-20"></div>

      <h3>我们收集哪些类型的个人信息？</h3>
      <p>
        为了向您提供优质的广告营销服务，我们可能会收集以下类型的信息：联系信息（如姓名、电子邮箱、电话号码）、
        公司信息（如公司名称、职位、行业类型）、业务需求和营销目标、网站使用数据和分析信息、
        广告活动数据和效果指标。这些信息帮助我们更好地了解您的需求，为您定制最合适的广告解决方案。
      </p>

      <div class="gap-20"></div>

      <h3>我们如何收集您的个人数据？</h3>
      <p>
        我们通过多种合法途径收集您的个人信息，所有收集活动都遵循相关法律法规。
        我们重视数据收集的透明度，确保您清楚了解我们如何获取您的信息。
      </p>
      <p>
        我们的数据收集方式包括但不限于以下几种情况：
      </p>
      <ol>
        <li>
          当您主动填写我们网站上的联系表单、咨询表单或订阅我们的资讯时
        </li>
        <li>当您通过电话、电子邮件或在线聊天与我们的团队沟通时</li>
        <li>当您参加我们举办的活动、研讨会或网络研讨会时</li>
        <li>
          通过Cookies和类似技术自动收集您的网站访问和使用行为数据
        </li>
      </ol>

      <div class="gap-20"></div>

      <h3>我们处理您数据的法律依据是什么？</h3>
      <p>
        我们仅在具有合法法律依据的情况下处理您的个人数据。主要的法律依据包括：
        履行与您签订的服务合同、遵守法律义务、保护您或他人的重要利益、
        执行公共任务，以及我们或第三方的合法利益（如改进服务、防止欺诈）。
        在某些情况下，我们会在处理您的敏感数据之前征得您的明确同意。
        您有权随时撤回您的同意，但这不会影响撤回前基于同意进行的数据处理的合法性。
      </p>

      <div class="gap-20"></div>

      <h3>信息安全</h3>
      <p>
        保护您的个人信息安全是我们的首要任务。我们采用多层次的技术和组织措施来防止未经授权的访问、
        使用、披露、修改或销毁您的个人信息。这些措施包括但不限于：加密传输和存储、
        访问控制和身份验证、定期安全审计和漏洞评估。
      </p>
      <p>
        我们的员工和合作伙伴都受到严格的保密协议约束，只有经过授权并需要访问您的信息才能履行其职责的人员
        才能访问您的个人数据。我们会定期对员工进行数据保护和安全意识培训。
        尽管我们尽最大努力保护您的信息，但请注意，没有任何互联网传输或电子存储方法是100%安全的。
        我们建议您也采取适当措施保护您的个人信息，如使用强密码并定期更改。
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: "PrivacyPolicy",
};
</script>

<style lang="scss" scoped>
.main-content-text {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6 {
    margin-bottom: 15px;
  }
  h1 {
    font-size: 30px;
  }
  h2 {
    font-size: 26px;
  }
  h3 {
    font-size: 22px;
    font-weight: 600;
  }
  h4 {
    font-size: 22px;
  }
  h5 {
    font-size: 20px;
  }
  h6 {
    font-size: 18px;
  }
  .gap-20 {
    margin-bottom: 30px;
  }
  p {
    color: #687693;
  }
  ul {
    padding: 0;
    list-style-type: none;
    margin-bottom: 0;
    li {
      position: relative;
      margin-bottom: 10px;
      padding-left: 35px;
      &:last-child {
        margin-bottom: 0;
      }
      i {
        position: absolute;
        top: -6px;
        left: 0;
        color: ar(--mainColor);
        font-size: 25px;
      }
    }
  }
  ol {
    padding-left: 18px;
    color: var(--bodyColor);
    li {
      margin-bottom: 20px;
      color: var(--bodyColor);
      &::marker {
        color: ar(--mainColor);
      }
      &:last-child {
        margin-bottom: 0;
      }
    }
  }
  a {
    color: var(--mainColor);
    &:hover {
      text-decoration: underline;
    }
  }
  .content-gap-mb-20 {
    margin-bottom: 20px;
  }
  .content-gap-mb-30 {
    margin-bottom: 30px;
  }
  .update {
    display: block;
    margin-bottom: 30px;
  }
}

/* Max width 767px */
@media only screen and (max-width: 767px) {
  .main-content-text {
    h3 {
      font-size: 20px;
    }
  }
}
</style>