/* TokyoNight Merino Dark: replace the color definitions in st's config.h. */
static const char *colorname[] = {
  "#484f58",
  "#ff7b72",
  "#3fb950",
  "#d29922",
  "#58a6ff",
  "#bc8cff",
  "#39c5cf",
  "#b1bac4",
  "#6e7681",
  "#ffa198",
  "#56d364",
  "#e3b341",
  "#79c0ff",
  "#d2a8ff",
  "#56d4dd",
  "#ffffff",
  [255] = 0,
  "#2f81f7",     /* 256: cursor */
  "#eff8ff", /* 257: reverse cursor */
  "#e6edf3",         /* 258: default foreground */
  "#0d1117",         /* 259: default background */
};

unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;
