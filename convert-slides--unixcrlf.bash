#!/bin/bash

if [ -z "$1" ] && [ -f Slide1.PNG ]
then

    echo ""

    #
    #  generate poster, one side
    #
    echo "generating poster pages"
    magick Slide1.PNG -gravity East -background grey -splice 8x0 Slide2.PNG +append  tmp12.png
    magick Slide3.PNG -gravity East -background grey -splice 8x0 Slide4.PNG +append  tmp34.png
    magick tmp12.png -gravity South -background grey -splice 0x8 tmp34.png -append  tmp1234.png
    #  to pdf
    echo "generating poster pdf"
    magick tmp1234.png covid-poster-a4-single-sided.pdf


    #
    #  generate flyer, two sides
    #
    echo "generating flyer half pages"
    magick Slide4.PNG -gravity East -background grey -splice 8x0 Slide1.PNG +append  tmp41.png
    magick Slide2.PNG -gravity East -background grey -splice 8x0 Slide3.PNG +append  tmp23.png

    echo "generating flyer pages"
    #  add dashed lines to bottom of these two images
    magick tmp41.png -stroke black -strokewidth 4 -draw "stroke-dasharray 32 32 path 'M 0,1168 L 1656,1168'" tmp41dash.png
    magick tmp23.png -stroke black -strokewidth 4 -draw "stroke-dasharray 32 32 path 'M 0,1168 L 1656,1168'" tmp23dash.png

    echo "generating flyer pdf"
    #  page 1 
    magick tmp41dash.png tmp23.png -append  tmp_p1.png
    #  page 1 
    magick tmp23dash.png tmp41.png -append  tmp_p2.png
    #  to pdf
    magick tmp_p1.png tmp_p2.png covid-flyer-a4-double-sided.pdf

    echo "removing temp files"
    rm -f tmp12.png tmp34.png tmp1234.png tmp41.png tmp23.png tmp41dash.png tmp23dash.png tmp_p1.png tmp_p2.png
    
    echo "done." 

else

    echo ""
    echo "Slides should be named 'Slide1.PNG' etc."
    echo ""

fi




