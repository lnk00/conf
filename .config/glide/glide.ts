// Config docs:
//
//   https://glide-browser.app/config
//
// API reference:
//
//   https://glide-browser.app/api
//
// Default config files can be found here:
//
//   https://github.com/glide-browser/glide/tree/main/src/glide/browser/base/content/plugins
//
// Most default keymappings are defined here:
//
//   https://github.com/glide-browser/glide/blob/main/src/glide/browser/base/content/plugins/keymaps.mts
//
// Try typing `glide.` and see what you can do!

glide.keymaps.set("normal", "gt", "tab_new");
glide.keymaps.set("normal", "gc", "tab_close");
glide.keymaps.set("normal", "<leader>b", "commandline_show tab ");
glide.keymaps.del("normal", "<leader><leader>");

glide.styles.add(css`
  #nav-bar {
    margin-top: -40px;
  }

  .glide-internal-hint-marker {
    font-size: 16px !important;
    font-weight: bold !important;
    background: #ffffff !important;
    border: 1px solid black !important;
  }

  .glide-matching-character {
    color: red !important;
  }
`);

glide.o.native_tabs = "hide";
glide.o.newtab_url = "https://www.perplexity.ai/";
