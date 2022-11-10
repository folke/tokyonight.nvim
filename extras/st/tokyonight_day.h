/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
    /* 8 normal colors */
    "#e9e9ed",
    "#f52a65",
    "#587539",
    "#8c6c3e",
    "#2e7de9",
    "#9854f1",
    "#007197",
    "#6172b0",

    /* 8 bright colors */
    "#a1a6c5",
    "#f52a65",
    "#587539",
    "#8c6c3e",
    "#2e7de9",
    "#9854f1",
    "#007197",
    "#3760bf",

    [255] = 0,

    /* more colors can be added after 255 to use with DefaultXX */
    "#3760bf",     
    "#99a7df",
    "#3760bf", /* default foreground colour */
    "#e1e2e7", /* default background colour */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;
