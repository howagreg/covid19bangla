# covid19bangla
Bangla (Bengali) language flyer and poster for COVID-19 pandemic.

POSTER: covid-poster-a4-single-sided.pdf
print this on A4 paper, single-sided. 

FLYER: covid-flyer-a4-double-sided.pdf
print this on A4 paper, double-sided. Cut pages in half on the dashed line, and fold
each half page in half to make a 4-page flyer.  (The first page begins with
handwashing instructions.)


# Making changes

I am happy to make edits -- please email me at greg.howard@gmail.com . 

My process uses ImageMagick on cygwin, but you could do this in many different
ways. 

The Powerpoint file has four slides, each 1/4 of an A4 page.

After editing, save the Powerpoint file as PNG images.  

For a poster, these should be laid out
```
1 2
3 4
```

For a flyer, these should be laid out
```
page 1:  4 1    page 2:  2 3 
         2 3             4 1   
```

In this way, double-sided pages will make two flyers when cut in half horizontally.

To export PPT files in high resolution on Windows, see these instructions: 
https://docs.microsoft.com/en-us/office/troubleshoot/powerpoint/change-export-slide-resolution

Exporting to 200 dpi will result in a convenient image size.

I use ImageMagick to combine these images into PDFs using the simple bash script
convert-slides--unixcrlf.bash

--

I would greatly appreciate edits and suggestions.

You may reproduce and distribute these flyers without limitation. 
