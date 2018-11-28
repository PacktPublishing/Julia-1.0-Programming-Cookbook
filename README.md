# Julia 1.0 Programming Cookbook

<a href="https://www.packtpub.com/application-development/julia-10-programming-cookbook?utm_source=github&utm_medium=repository&utm_campaign=9781788998369 "><img src="https://d1ldz4te4covpm.cloudfront.net/sites/default/files/imagecache/ppv4_main_book_cover/B10009_MockupCover.png" alt="Julia 1.0 Programming Cookbook" height="256px" align="right"></a>

This is the code repository for [Julia 1.0 Programming Cookbook](https://www.packtpub.com/application-development/julia-10-programming-cookbook?utm_source=github&utm_medium=repository&utm_campaign=9781788998369 ), published by Packt.

**Over 100 numerical and distributed computing recipes for your daily data science workflow**

## What is this book about?
Julia programming language with its dynamic nature and high-performance provides comparatively minimum time for development of computational models with easy to maintain computational code. Julia 1.0 Programming Cookbook will be your solution based guide as it will take you through different programming aspects with Julia.

This book covers the following exciting features:
Boost the code performance using Julia’s unique features 
Organize data in fundamental types of collections: arrays, dictionaries 
Organize data science process within Julia and solve related problems 
Scale Julia computations with cloud computing 
Write data to IO streams with Julia and to handle web transfer 
How to define own immutable and mutable types 
Speed-up the development process using metaprogramming 

If you feel this book is for you, get your [copy](https://www.amazon.com/dp/1788998367) today!

<a href="https://www.packtpub.com/?utm_source=github&utm_medium=banner&utm_campaign=GitHubBanner"><img src="https://raw.githubusercontent.com/PacktPublishing/GitHub/master/GitHub.png" 
alt="https://www.packtpub.com/" border="5" /></a>

## Instructions and Navigations
All of the code is organized into folders. For example, Chapter02.

The code will look like the following:
```
if isless(curval, minval)
    minval = curval 
    bestidx = idx
    bestcount = 1
```

**Following is what you need for this book:**
This book is for developers who would like to enhance their Julia programming skills and would like to get some quick solutions to their common programming problems. Basic Julia programming knowledge is assumed.

With the following software and hardware list you can run all code files present in the book (Chapter 1-).
### Software and Hardware List
In this book we use Julia 1.0.1, however, the presented recipes should work without any problem with any future Julia 1.0.x version.

The following Julia packages have been used throughout the book. We provide a version number of each package that has been tested with the recipes in the book. Some of the packages on this list are being currently quickly developed and if you use the latest package version in some cases a recipe might not work due to API changes.


| # | Package | Software required | OS required |
| -------- | ------------------------------------ | ----------------------------------- |
| 1 | BSON | Windows, Mac OS X, and Linux (Any) |
| 2 |  | Windows, Mac OS X, and Linux (Any) |
| 3 |  | Windows, Mac OS X, and Linux (Any) |
| 4 |  | Windows, Mac OS X, and Linux (Any) |
| 5 |  | Windows, Mac OS X, and Linux (Any) |
| 6 |  | Windows, Mac OS X, and Linux (Any) |
| 7 |  | Windows, Mac OS X, and Linux (Any) |
| 8 |  | Windows, Mac OS X, and Linux (Any) |
| 9 |  | Windows, Mac OS X, and Linux (Any) |
| 10 |  | Windows, Mac OS X, and Linux (Any) |
| 11 |  | Windows, Mac OS X, and Linux (Any) |
| 12 |  | Windows, Mac OS X, and Linux (Any) |
| 13 |  | Windows, Mac OS X, and Linux (Any) |
| 14 |  | Windows, Mac OS X, and Linux (Any) |
| 15 |  | Windows, Mac OS X, and Linux (Any) |
| 16 |  | Windows, Mac OS X, and Linux (Any) |
| 17 |  | Windows, Mac OS X, and Linux (Any) |
| 18 |  | Windows, Mac OS X, and Linux (Any) |
| 19 |  | Windows, Mac OS X, and Linux (Any) |
| 20 |  | Windows, Mac OS X, and Linux (Any) |
| 21 |  | Windows, Mac OS X, and Linux (Any) |
| 22 |  | Windows, Mac OS X, and Linux (Any) |
| 23 |  | Windows, Mac OS X, and Linux (Any) |
| 24 |  | Windows, Mac OS X, and Linux (Any) |
| 25 |  | Windows, Mac OS X, and Linux (Any) |
| 26 |  | Windows, Mac OS X, and Linux (Any) |
| 27 |  | Windows, Mac OS X, and Linux (Any) |
| 28 |  | Windows, Mac OS X, and Linux (Any) |
| 29 |  | Windows, Mac OS X, and Linux (Any) |
| 30 |  | Windows, Mac OS X, and Linux (Any) |
| 31 |  | Windows, Mac OS X, and Linux (Any) |
| 32 |  | Windows, Mac OS X, and Linux (Any) |
| 33 |  | Windows, Mac OS X, and Linux (Any) |
| 34 |  | Windows, Mac OS X, and Linux (Any) |
| 35 |  | Windows, Mac OS X, and Linux (Any) |
| 36 |  | Windows, Mac OS X, and Linux (Any) |
| 37 |  | Windows, Mac OS X, and Linux (Any) |
| 38 |  | Windows, Mac OS X, and Linux (Any) |
| 39 |  | Windows, Mac OS X, and Linux (Any) |
| 40 |  | Windows, Mac OS X, and Linux (Any) |
| 41 |  | Windows, Mac OS X, and Linux (Any) |
| 42 |  | Windows, Mac OS X, and Linux (Any) |
| 43 |  | Windows, Mac OS X, and Linux (Any) |
| 44 |  | Windows, Mac OS X, and Linux (Any) |
| 45 |  | Windows, Mac OS X, and Linux (Any) |

For each package we provide the information whether it depends on external software installations. Some package have no external dependencies while other require installation of external tools such as GNU R, database drivers or Java virtual machine. Detailed instructions can be found in the recipes that use particular packages (for example, the recipe Calling R from Julia in the Chapter 8, Julia Workflow shows how to configure RCall while the recipe Working with databases in Julia in the Chapter 9, Data Science explains the installation process of various database drivers).

A noteworthy case is the Python dependency. Several important Julia packages depend on Python functionality that is provided via the PyCall.jl package. Note that for those packages (having the status optional  at our table) you have two options:

use Python Anaconda installed inside of Julia (in this case no installation of external dependencies is required)
external Python Anaconda installation outside of Julia (the user needs to install and configure Python Anaconda to work with Julia)
Note that in this book all Python-dependent recipes use Python 3.6.5.  In the recipe Calling Python from Julia in Chapter 8, Julia Workflow we discuss in detail various options for configuring the PyCall.jl package for Julia-to-Python integration.


We also provide a PDF file that has color images of the screenshots/diagrams used in this book. [Click here to download it](https://www.packtpub.com/sites/default/files/downloads/9781788998369_ColorImages.pdf).

### Related products
* Julia 1.0 Programming - Second Edition [[Packt]](https://www.packtpub.com/application-development/julia-10-programming-second-edition?utm_source=github&utm_medium=repository&utm_campaign=9781788999090 ) [[Amazon]](https://www.amazon.com/dp/1788999096)

* Hands-On Computer Vision with Julia [[Packt]](https://www.packtpub.com/application-development/hands-computer-vision-julia?utm_source=github&utm_medium=repository&utm_campaign=9781788998796 ) [[Amazon]](https://www.amazon.com/dp/B07CSPBV11)

*  [[Packt]]() [[Amazon]](https://www.amazon.com/dp/)

*  [[Packt]]() [[Amazon]](https://www.amazon.com/dp/)

## Get to Know the Author
**Bogumil Kaminski**
([GitHub](https://github.com/bkamins), [web](http://bogumilkaminski.pl/about/)) is an associate professor and head of the
Decision Support and Analysis Unit at the SGH Warsaw School of Economics, as well as
adjunct professor at the data science laboratory, Ryerson University, Toronto. He is coeditor
of the Central European Journal of Economic Modeling and Econometrics, and of the
Multiple Criteria Decision Making journal. His scientific interests center on operational
research and computational social science. He has authored over 50 research articles on
simulation, optimization, and prediction methods. He also has 15+ years' experience in the
deployment of large-scale advanced analytics solutions for industry and public
administration

**Przemyslaw Szufel**
([GitHub](https://github.com/pszufe), [web](https://szufel.pl/en_aboutme.html)) is an assistant professor in
the Decision Support and Analysis Unit at the SGH Warsaw School of Economics. His
current research focuses on distributed systems and methods for the execution of largescale
simulations for numerical experiments and optimization. He is working on
asynchronous algorithms for the parallel execution of large-scale computations in the cloud
and distributed computational environments. He has authored, and co-authored, several
open source tools for high-performance and numerical simulation


### Suggestions and Feedback
[Click here](https://docs.google.com/forms/d/e/1FAIpQLSdy7dATC6QmEL81FIUuymZ0Wy9vH1jHkvpY57OiMeKGqib_Ow/viewform) if you have any feedback or suggestions.