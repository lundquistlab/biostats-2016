#Homework 1: Due 2/1/16 or 2/3/16

The goals of this assignment are for you to:

1. Download your own copy of [R](https://www.r-project.org) and [RStudio](http://www.rstudio.com) (optionally a text editor like [Notepad++](https://notepad-plus-plus.org/))
2. Load data into R
3. Summarize that data using the built-in R functions.

A example prototype (Homework_1.r) is provided to give you some examples of build-in functions in R you can use to summarize your data

**Your assignment** is to download R (and RStudio and/or Notepad++ if you want) as well as the data file **iris.txt**. Using Homework_1.r as a template, write a .r script to run the suite of summary and graphic display functions in R from [Biostatistics 020](http://biotoolbox.binghamton.edu/Biostatistics/2014%20Biostatistics%20Zar/Biostatistics%20Worksheets%20pdf/020-2010%20Biostatistics.pdf) and [Biostatistics 030](http://biotoolbox.binghamton.edu/Biostatistics/2014%20Biostatistics%20Zar/Biostatistics%20Worksheets%20pdf/030-2010%20Biostatistics.pdf)

The information that you need about R and the functions in Homework_1.r are available in the Bio Toolbox:

[Getting Started with R](http://biotoolbox.binghamton.edu/Preliminaries/Getting%20Started%20with%20R.pdf)

[Using RStudio](http://biotoolbox.binghamton.edu/Preliminaries/RSTUDIO%20SUMMARY.pdf) (may be a little out of date)

Zar chapters 1-4

And the great and powerful

[Google](http://www.google.com)

**It is imperative to read Getting Started with R for this assignment**

In your .r script, include adequate annotation (using "#") so that another student could run your R script. Also include all outputs from the R console in your script. 

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
    #Calculating the mean of x manually by adding up the values of x using the sum() function
    sum(x)/n
    # [1] 2.5
    #Using the build-in mean() function to calculate the average of x
    mean(x)
    # [1] 2.5
```
Any graphical outputs should be pasted in word and saved as either a .pdf or a .docx. You should include the name of the file in your .r script 

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
Scores will be based on:

1. Readability
2. Completeness
3. Adequate Detail
4. Repeatability

**Total points: 5**

Email your .r script and .pdf or .docx of each graphical output to [Matt](mailto:mlundqu1@binghamton.edu?subject=Homework 1 Submission) by 11:59 Monday 2/1 (**Tuesday section**) or Wednesday 2/3 (**Thursday section**).
