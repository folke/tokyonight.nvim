/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
    /* 8 normal colors */
    "#1d202f",
    "#f7768e",
    "#9ece6a",
    "#e0af68",
    "#7aa2f7",
    "#bb9af7",
    "#7dcfff",
    "#a9b1d6",

    /* 8 bright colors */

    "#414868",
    "#f7768e",
    "#9ece6a",
    "#e0af68",
    "#7aa2f7",
    "#bb9af7",
    "#7dcfff",
    "#c0caf5",

    [255] = 0,

    /* more colors can be added after 255 to use with DefaultXX */
    "#c0caf5",
    "#364a82",
    "#c0caf5", /* default foreground colour */
    "#24283b", /* default background colour */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;
