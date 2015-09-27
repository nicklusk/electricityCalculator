---
title       : Capacitor Charge & Energy Calculator
subtitle    : 
author      : Nick Lusk
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Properties of Electricity

This application calculates three properties of electricity based on the input of three properties from the user. The input and output properties are:

Input
* Voltage (Volts)
* Capacitance (Farads)
* Load Resistance (Ohms)

Output
* Charge (Coulombs)
* Energy (Joules)
* Time Constant (seconds)

--- .class #id 

## Electrical Formulae

The mathematical formulae used by the application to calculate the various properties.

Charge: Q = CV

Energy: E = (1/2) C V2

Time Constant: TC= R*C

--- .class #id 

## Calculating Output

The three input sliders, Voltage, Capacitance and Load Resistance default to 20, 10 and 3 respectively. Those values are stored in variables V for volts, C for capacitance and O for ohms. The example code below shows how the output is calculated based on the default values.


```r
V <- 20
C <- 10
O <- 3
Charge <- C*V*10^-2
Energy <- V^2*C/2*10^-2
Time <- O*C
print(c(Charge,Energy,Time))
```

```
## [1]  2 20 30
```

--- .class #id 

## Output Visualization

So that the relationship of these properties can be visualized in addition to their values the application displays them in two formats. All six of the electrical properties are displayed in a table as well as a bar plot. Both of these visual elements are reactive and will change automatically whenever the user modifies one of the input sliders.







