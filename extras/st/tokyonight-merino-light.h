/* TokyoNight Merino Light: replace the color definitions in st's config.h. */
static const char *colorname[] = {
  "#24292f",
  "#cf222e",
  "#116329",
  "#9d5c00",
  "#0969da",
  "#8250df",
  "#1b7c83",
  "#6e7781",
  "#57606a",
  "#a40e26",
  "#1a7f37",
  "#c47a00",
  "#218bff",
  "#a475f9",
  "#3192aa",
  "#8c959f",
  [255] = 0,
  "#0969da",     /* 256: cursor */
  "#b6d8ff", /* 257: reverse cursor */
  "#1f2328",         /* 258: default foreground */
  "#ffffff",         /* 259: default background */
};

unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;
