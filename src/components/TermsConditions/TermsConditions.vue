<template>
  <div class="container">
    <div class="main-content-text">
      <span class="update">最后更新：2026年2月</span>
      <h3>服务条款与条件</h3>
      <p>
        欢迎使用我们的广告营销服务。本服务条款和条件（以下简称"条款"）构成您与我们之间的法律协议，
        规定了您使用我们的服务、访问我们的网站以及与我们开展业务合作的条件和规则。
      </p>
      <p>
        在使用我们的服务之前，请仔细阅读本条款。通过访问我们的网站、使用我们的服务或与我们签订服务合同，
        即表示您已阅读、理解并同意受本条款的约束。如果您代表某个组织或公司接受这些条款，
        则表示您有权代表该实体并使其受本条款约束。如果您不同意本条款的任何部分，请不要使用我们的服务。
        我们保留随时修改或更新这些条款的权利，修改后的条款将在网站上公布后立即生效。
      </p>

      <div class="gap-20"></div>

      <h3>知识产权与使用规范</h3>
      <p>
        我们的网站、服务、内容、商标、标识、图形、设计、软件和其他材料均受知识产权法保护，
        包括但不限于版权、商标权和专有权利。除非另有明确授权，否则这些资产的所有权利均归我们或我们的许可方所有。
        您不得复制、修改、分发、出售、出租、转让或以其他方式利用我们的知识产权，除非获得我们的事先书面许可。
      </p>
      <p>
        在使用我们的服务时，您同意仅将其用于合法目的。您不得从事任何可能损害、禁用、使网站负担过重或
        妨碍其他用户使用服务的活动。此外，您同意不使用我们的服务进行任何欺诈、非法或未经授权的活动，
        包括但不限于传播恶意软件、进行网络攻击或侵犯他人的知识产权。
      </p>

      <div class="gap-20"></div>

      <h3>责任限制</h3>
      <p>
        在法律允许的最大范围内，我们对因使用或无法使用我们的服务而导致的任何直接、间接、附带、特殊、
        惩罚性或后果性损害不承担责任，即使我们已被告知可能发生此类损害。
      </p>
      <p>
        虽然我们努力提供准确、可靠和高质量的服务，但我们不对服务的准确性、完整性、可靠性或适用性作出任何保证或承诺。
        我们的服务按"现状"和"可用"基础提供。我们的总责任限制如下：
      </p>
      <ol>
        <li>
          对于任何特定事件或一系列相关事件，我们的总责任不应超过您在该事件发生前12个月内向我们支付的费用总额
        </li>
        <li>我们不对第三方服务、平台或内容的任何问题或损失承担责任</li>
        <li>我们不对因不可抗力因素（如自然灾害、战争、政府行为等）造成的服务中断或损失负责</li>
        <li>
          您同意自行承担使用我们服务的风险，并对因您的使用行为而产生的任何后果负责
        </li>
      </ol>

      <div class="gap-20"></div>

      <h3>服务注册与账户</h3>
      <p>
        要使用我们的某些服务，您可能需要创建一个账户并提供准确、完整和最新的注册信息。
        您有责任维护您的账户信息的准确性，并及时更新任何变更。您应对通过您的账户进行的所有活动负责，
        无论这些活动是否由您授权。
      </p>
      <p>
        您同意立即通知我们任何未经授权使用您的账户或任何其他安全漏洞的情况。
        我们不对因您未能遵守本条款的账户安全要求而导致的任何损失或损害承担责任。
        我们保留随时因任何原因拒绝服务、终止账户、删除或编辑内容的权利，恕不另行通知。
      </p>

      <div class="gap-20"></div>

      <h3>密码与安全</h3>
      <p>
        在创建账户时，您需要选择一个密码。您有责任保持密码的机密性，并对使用您的密码进行的所有活动负责。
        我们建议您使用强密码，包含大小写字母、数字和特殊字符的组合，并定期更换密码。
        请勿与他人共享您的密码或允许他人访问您的账户。
      </p>
      <p>
        如果您怀疑您的账户安全受到威胁，或者您的密码被未经授权的人知晓，请立即更改您的密码并联系我们。
        我们采用行业标准的安全措施来保护您的账户和个人信息，包括加密技术和安全的数据存储实践。
        然而，请注意，没有任何互联网传输或电子存储方法是完全安全的。
        因此，虽然我们努力保护您的个人信息，但我们无法保证其绝对安全。
        您理解并同意，您以自己的风险向我们提供信息和使用服务。
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: "TermsConditions",
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