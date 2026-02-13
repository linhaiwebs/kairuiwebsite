import { createWebHistory, createRouter, RouteRecordRaw } from "vue-router";
import SocialMediaAdAgencyPage from "../pages/SocialMediaAdAgencyPage.vue";
import PrivacyPolicyPage from "../pages/PrivacyPolicyPage.vue";
import TermsConditionsPage from "../pages/TermsConditionsPage.vue";

const routes: Array<RouteRecordRaw> = [
  {
    path: "/",
    name: "SocialMediaAdAgencyPage",
    component: SocialMediaAdAgencyPage,
  },
  {
    path: "/privacy-policy",
    name: "PrivacyPolicyPage",
    component: PrivacyPolicyPage,
  },
  {
    path: "/terms-conditions",
    name: "TermsConditionsPage",
    component: TermsConditionsPage,
  },
  {
    path: "/:pathMatch(.*)*",
    redirect: "/"
  },
];

const router = createRouter({
  history: createWebHistory(),
  linkExactActiveClass: "active",
  routes,
  scrollBehavior() {
    return { top: 0, behavior: "smooth" };
  },
});

export default router;
