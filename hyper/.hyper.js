module.exports = {
  config: {
    updateChannel: "stable",

    fontSize: 12,
    fontFamily: "Cascadia Code",
    fontWeight: "normal",
    fontWeightBold: "bold",
    lineHeight: 1.05,
    letterSpacing: 0,

    padding: "5px 5px",

    copyOnSelect: true,

    shell: "/usr/local/bin/zsh",

    hypest: {
      borders: true,
      vibrancy: false,
      darkmode: false,
    }
  },
  plugins: [
    "hyper-hypest",
    "hyper-tab-icons",
    "hyper-highlight-active-pane",
    "hyper-statusline",
    "hyper-search"
  ]
}