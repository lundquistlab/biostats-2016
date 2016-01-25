#Homework 1: Due 2/1/16 or 2/3/16

The goals of this assignment are to:

1. Download your own copy of [R](https://www.r-project.org) (and optional a GUI like [RStudio](http://www.rstudio.com) and text editor like [Notepad++](https://notepad-plus-plus.org/))
2. Load data into R
3. Summarize that data using the built-in R functions.

A example prototype (Homework_1.r) is provided to give you some examples of build-in function in R to use to summarize your data

**Your assignment** is to download R (and RStudio and/or Notepad++ if you want) as well as the data file iris.csv. Using Homework_1.r as a template, write a .r script to run the suite of summary and graphic display functions in R (see [Biostatistics 030](http://biotoolbox.binghamton.edu/Biostatistics/2014%20Biostatistics%20Zar/Biostatistics%20Worksheets%20pdf/030-2010%20Biostatistics.pdf) for examples)

In your .r script, include adequate annotation (using "#") so that another student could run your R script as well as any outputs. 

Example:
```r
    #Inputting data using the concatenate, c() function
    x <- c(3,2,1,4)
    x
    # [1] 3 2 1 4
    #Determining length of x using the length() function
    n <- length(x)
    n
    # [1] 4
    #Calculating mean manually using sum() function
    sum(x)/n
    # [1] 2.5
    #Using the build-in mean() function to calculate the average of x
    mean(x)
    # [1] 2.5
```
Any graphical outputs should be pasted in word and saved as either a .pdf or a docx. You should include the name of the file in your .r script 

Example:
```r    
    #Inputting data for x
    x <- c(3,2,1,4)
    x
    # [1] 3 2 1 4
    #Inputting data for y
    y <- c(4,5,3,2)
    y
    # [1] 4 5 3 2
    #Using the plot() function to create a line  plot of x and y
    plot(x,y)
    #Output saved as xy_plot.pdf
```

Email your .r script and .pdf or .docx of each graphic outputs to [Matt](mlundqu1@binghamton.edu) by 11:59 Monday 2/1 (**Tuesday section**) or Wednesday 2/3 (**Thursday section**).
