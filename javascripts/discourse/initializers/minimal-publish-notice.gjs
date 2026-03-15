import { apiInitializer } from "discourse/lib/api";
import { iconHTML } from "discourse/lib/icon-library";

export default apiInitializer("1.0", (api) => {
  api.onPageChange(() => {
    requestAnimationFrame(() => {
      const notice = document.querySelector(".published-page-notice");
      if (!notice) return;

      // Already replaced?
      if (notice.parentElement?.querySelector(".minimal-publish-link")) return;

      // Extract the public URL from the notice
      const link = notice.querySelector("a[href*='/pub/']");
      if (!link) return;

      const url = link.href;

      // Create minimal badge
      const badge = document.createElement("a");
      badge.className = "minimal-publish-link";
      badge.href = url;
      badge.target = "_blank";
      badge.rel = "noopener noreferrer";
      badge.title = url;
      badge.innerHTML = `${iconHTML("globe")} public`;

      // Insert right after the title area
      const titleWrapper = document.querySelector("#topic-title .title-wrapper");
      if (titleWrapper) {
        titleWrapper.appendChild(badge);
      } else {
        // Fallback: insert before the hidden notice
        notice.parentElement.insertBefore(badge, notice);
      }
    });
  });
});
