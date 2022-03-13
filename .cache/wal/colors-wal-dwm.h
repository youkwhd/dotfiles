static const char norm_fg[] = "#a6cddf";
static const char norm_bg[] = "#000001";
static const char norm_border[] = "#748f9c";

static const char sel_fg[] = "#a6cddf";
static const char sel_bg[] = "#186593";
static const char sel_border[] = "#a6cddf";

static const char urg_fg[] = "#a6cddf";
static const char urg_bg[] = "#95474C";
static const char urg_border[] = "#95474C";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
