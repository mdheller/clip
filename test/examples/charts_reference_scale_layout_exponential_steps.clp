(set-height 60px)
(layout/add-margins margin 1em)

(plot/draw-axis
    scale (logarithmic 10)
    tick-placement (exponential-steps 10 10)
    label-format (base 10)
    limit (0 10000))
