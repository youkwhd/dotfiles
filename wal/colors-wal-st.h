const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000001", /* black   */
  [1] = "#95474C", /* red     */
  [2] = "#186593", /* green   */
  [3] = "#557290", /* yellow  */
  [4] = "#2B8CAB", /* blue    */
  [5] = "#5C95A9", /* magenta */
  [6] = "#4FAFD1", /* cyan    */
  [7] = "#a6cddf", /* white   */

  /* 8 bright colors */
  [8]  = "#748f9c",  /* black   */
  [9]  = "#95474C",  /* red     */
  [10] = "#186593", /* green   */
  [11] = "#557290", /* yellow  */
  [12] = "#2B8CAB", /* blue    */
  [13] = "#5C95A9", /* magenta */
  [14] = "#4FAFD1", /* cyan    */
  [15] = "#a6cddf", /* white   */

  /* special colors */
  [256] = "#000001", /* background */
  [257] = "#a6cddf", /* foreground */
  [258] = "#a6cddf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
