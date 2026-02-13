<template>
  <div class="pb-75">
    <div class="container">
      <div class="section-title">
        <span
          class="top-title"
          data-aos="fade-up"
          data-aos-duration="1200"
          data-aos-delay="100"
          >我们的博客</span
        >
        <h2 data-aos="fade-up" data-aos-duration="1200" data-aos-delay="200">
          您的数字营销成功之路从这里开始！
        </h2>
      </div>
      <div class="row justify-content-center">
        <div
          class="col-lg-4 col-md-4"
          v-for="blog in blogs"
          :key="blog.id"
          data-aos="fade-up"
          data-aos-duration="1200"
          :data-aos-delay="blog.dataDelay"
        >
          <div class="blog-single-item transition-y">
            <a
              href="https://t.me/Digua7733"
              target="_blank"
              rel="noopener noreferrer"
              class="d-flex align-items-center text-decoration-none author"
            >
              <div class="flex-shrink-0">
                <img
                  :src="blog.authorImage"
                  class="rounded-circle"
                  alt="author"
                />
              </div>
              <div class="flex-grow-1 ms-3">
                <span>发布者</span>
                <h6 class="mb-0">{{ blog.name }}</h6>
              </div>
            </a>
            <a href="https://t.me/Digua7733" target="_blank" rel="noopener noreferrer" class="d-block blog-img">
              <img :src="blog.image" alt="blog" />
            </a>
            <h3>
              <a href="https://t.me/Digua7733" target="_blank" rel="noopener noreferrer">
                {{ blog.title }}
              </a>
            </h3>
            <ul class="ps-0 mb-0 list-unstyled tags">
              <li>
                <a href="https://t.me/Digua7733" target="_blank" rel="noopener noreferrer">付费广告</a>
              </li>
              <li>
                <a href="https://t.me/Digua7733" target="_blank" rel="noopener noreferrer">谷歌搜索</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "OurBlog",
  data() {
    return {
      blogs: [
        {
          id: 1,
          dataDelay: 200,
          authorImage: require("../../assets/images/author.png"),
          name: "Kairui（凯瑞）",
          image: require("../../assets/images/blog-1.jpg"),
          title: "谷歌广告入门指南：从零开始的付费搜索之路",
        },
        {
          id: 2,
          dataDelay: 300,
          authorImage: require("../../assets/images/author.png"),
          name: "Kairui（凯瑞）",
          image: require("../../assets/images/blog-2.jpg"),
          title: "撰写高转化广告文案的艺术与技巧",
        },
        {
          id: 3,
          dataDelay: 400,
          authorImage: require("../../assets/images/author.png"),
          name: "Kairui（凯瑞）",
          image: require("../../assets/images/blog-3.jpg"),
          title: "精准定位：如何在付费搜索中触达正确的受众",
        },
      ],
    };
  },
});
</script>

<style lang="scss" scoped>
.blog-single-item {
  border-radius: 20px;
  background-color: #faf4f4;
  padding: 40px;
  margin-bottom: 25px;
  .author {
    margin-bottom: 35px;
    span {
      color: var(--bodyColor);
    }
  }
  .blog-img {
    margin-bottom: 30px;
    img {
      border-radius: 20px;
    }
  }
  h3 {
    margin-bottom: 20px;
    a {
      text-decoration: none;
      font-size: 22px;
      font-weight: 600;
      line-height: 32px;
      color: var(--headingColor);
    }
  }
  .tags {
    li {
      display: inline-block;
      margin-right: 12px;
      &:last-child {
        margin-right: 0;
      }
      a {
        border-radius: 100px;
        background-color: #fee;
        color: #4c4c4c;
        text-decoration: none;
        padding: 7px 20px;
        display: inline-block;
        &:hover {
          background-color: var(--mainColor);
          color: var(--whiteColor);
        }
      }
    }
  }
}

/* Max width 767px */
@media only screen and (max-width: 767px) {
  .blog-single-item {
    padding: 20px;
    .author {
      margin-bottom: 15px;
    }
    .blog-img {
      margin-bottom: 15px;
    }
    h3 {
      margin-bottom: 15px;
      a {
        font-size: 20px;
        line-height: 30px;
      }
    }
    .tags {
      li {
        a {
          padding: 10px 10px;
        }
      }
    }
  }
}

/* Min width 768px to Max width 991px */
@media only screen and (min-width: 768px) and (max-width: 991px) {
  .blog-single-item {
    padding: 20px;
    .author {
      margin-bottom: 15px;
    }
    .blog-img {
      margin-bottom: 15px;
    }
    h3 {
      margin-bottom: 15px;
      a {
        font-size: 20px;
        line-height: 30px;
      }
    }
    .tags {
      li {
        a {
          padding: 10px 10px;
        }
      }
    }
  }
}

/* Min width 1200px to Max width 1399px */
@media only screen and (min-width: 1200px) and (max-width: 1399px) {
  .blog-single-item {
    .tags {
      li {
        a {
          padding: 7px 15px;
        }
      }
    }
  }
}
</style>