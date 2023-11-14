/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
    /* 8 normal colors */
    "#1b1d2b",
    "#ff757f",
    "#c3e88d",
    "#ffc777",
    "#82aaff",
    "#c099ff",
    "#86e1fc",
    "#828bb8",

    /* 8 bright colors */
    "#444a73",
    "#ff757f",
    "#c3e88d",
    "#ffc777",
    "#82aaff",
    "#c099ff",
    "#86e1fc",
    "#c8d3f5",

    [255] = 0,

    /* more colors can be added after 255 to use with DefaultXX */
    "#c8d3f5",     
    "#3654a7",
    "#c8d3f5", /* default foreground colour */
    "#222436", /* default background colour */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;
