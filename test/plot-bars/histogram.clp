(set-width 480px)
(set-height 380px)

(plot/draw-bars
    limit-x (0 7)
    limit-y (0 10000)
    scale-y (log)
    data-x (csv "test/testdata/histogram.csv" var0)
    data-y (csv "test/testdata/histogram.csv" var1)
    width (1.8em)
    color #666)
