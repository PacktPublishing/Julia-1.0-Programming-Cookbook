
### Get this product for $5

<i>Packt is having its biggest sale of the year. Get this eBook or any other book, video, or course that you like just for $5 each</i>


<b><p align='center'>[Buy now](https://packt.link/9781788998369)</p></b>


<b><p align='center'>[Buy similar titles for just $5](https://subscription.packtpub.com/search)</p></b>


# Julia 1.0 Programming Cookbook

<a href="https://www.packtpub.com/application-development/julia-10-programming-cookbook?utm_source=github&utm_medium=repository&utm_campaign=9781788998369 "><img src="https://www.packtpub.com/sites/default/files/B10009.png" alt="Julia 1.0 Programming Cookbook" height="256px" align="right"></a>

This is the code repository for [Julia 1.0 Programming Cookbook](https://www.packtpub.com/application-development/julia-10-programming-cookbook?utm_source=github&utm_medium=repository&utm_campaign=9781788998369 ), published by Packt.

**Over 100 numerical and distributed computing recipes for your daily data science workflow**

## What is this book about?
Julia programming language with its dynamic nature and high-performance provides comparatively minimum time for development of computational models with easy to maintain computational code. Julia 1.0 Programming Cookbook will be your solution based guide as it will take you through different programming aspects with Julia.

This book covers the following exciting features:
* Boost the code performance using Julia’s unique features
* Organize data in fundamental types of collections: arrays, dictionaries
* Organize data science process within Julia and solve related problems
* Scale Julia computations with cloud computing
* Write data to IO streams with Julia and to handle web transfer


If you feel this book is for you, get your [copy](https://www.amazon.com/dp/1788998367) today!

<a href="https://www.packtpub.com/?utm_source=github&utm_medium=banner&utm_campaign=GitHubBanner"><img src="https://raw.githubusercontent.com/PacktPublishing/GitHub/master/GitHub.png"
alt="https://www.packtpub.com/" border="5" /></a>

## Release history

* [Version 1.0](https://github.com/PacktPublishing/Julia-1.0-Programming-Cookbook/releases/tag/v1.0):
    * An initial release with source codes exactly as in the printed version of the first edition of the book.
* [Version 1.1](https://github.com/PacktPublishing/Julia-1.0-Programming-Cookbook/releases/tag/v1.1):
    * The package StatPlots.jl was renamed by its maintainers to StatsPlots.jl; this release updates the codes to reflect this change.
    * The `allargmin` function from chapter 2, recipe 1 was fixed to correctly handle the case when it is passed an empty collection.

## Book Supplement
Following the feedback of our readers we have created a [Supplement]( https://github.com/PacktPublishing/Julia-1.0-Programming-Cookbook/blob/master/Julia_Cookbook-Supplement.md) that discusses Julia installation and configuration issues related to macOS.

## Instructions and Navigations
All of the code is organized into folders. For example, Chapter02. The example code files are organized in folders representing chapters and recipes. For each recipe, there is a commands.txt file that contains commands that should be typed-in by the reader. Every entry in this file is prepended by an appropriate prompt (example, **$**, **julia>**) to make sure that the user knows in which environment the command should be executed (typically the OS shell, the Julia command line). Most recipes also contain additional files, for example, source codes of Julia programs. A full list of files along with their contents is given in the *Getting ready* section of every recipe

The code will look like the following:
```
if isless(curval, minval)
    minval = curval
    bestidx = idx
    bestcount = 1
```

**Following is what you need for this book:**
This book is for developers who would like to enhance their Julia programming skills and would like to get some quick solutions to their common programming problems. Basic Julia programming knowledge is assumed.

With the following software and hardware list you can run all code files present in the book (Chapter 01-10).
### Software and Hardware List
In this book we use Julia 1.0.1, however, the presented recipes should work without any problem with any future Julia 1.0.x version.

The following Julia packages have been used throughout the book. We provide a version number of each package that has been tested with the recipes in the book. Some of the packages on this list are being currently quickly developed and if you use the latest package version in some cases a recipe might not work due to API changes.


| Package  | Version                 | External Dependency                        |
| -------- | -------- | ------------------------------------|
| BSON | v"0.2.1"  | none |
| BenchmarkTools |v"0.4.1"  | none |
| CSV | v"0.4.3" | none |
| Cascadia |v"0.4.0"   | none |
| Cbc | v"0.4.2" | none |
| Clp |v"0.5.0" | none |
| CodecZib | v"0.5.0" | none |
| Conda | v"1.0.2" | optional - external Python Anaconda |
| DataFrames | v"0.14.1" | none |
| DataFramesMeta | v"0.4.0" | none |
| Distributions | v"0.16.4" | none |
| Feather | v"0.5.0" | none |
| FileIO | v"1.0.2" | none |
| ForwardDiff |v"0.9.9"  | none |
| FreqTables |v"0.3.0"  | none |
| Gumbo | v"0.5.1" | none |
| Gurobi | v"0.5.3" | Gurobi Solver |
| HTTP | v"0.7.1" | none |
| JDBC | v"0.4.0" | Java Runtime Environment |
| JLD2 | v"0.1.2" | none |
| JSON |v"0.19.0"  | none |
| JuMP | v"0.18.4" | none |
| JuliaWebAPI |v"0.5.0"  | none |
| LibPQ |v"0.5.0"  | PostgreSQL libpq library |
| MySQL | v"0.7.0" | none |
| OnlineStats |v"0.19.1"  | none |
| Optim | v"0.17.1" | none |
| Plots | v"0.20.5" | optional - external Python Anaconda (with PyPlot plotting backend) |
| ParallelDataTransfer | v"0.5.0" | none |
| ProfileView | v"0.4.0" | none |
| PyCall | v"1.18.4" | optional - external Python Anaconda |
| PyPlot | v"2.6.3" | optional - external Python Anaconda |
| RCall | v"0.12.1" | GNU R |
| Revise |v"0.7.12"  | none |
| ScikitLearn | latest available | optional - external Python Anaconda + Anaconda scikit-learn library |
| StatsPlots |v"0.8.1"  | optional - external Python Anaconda (with PyPlot plotting backend) |
| StaticArrays |v"0.8.3"  | none |
| StatsBase" | v"0.26.0" | none |
| StringEncodings |v"0.3.1"  | none |
| TimeZones | v"0.8.1" | none |
| UnicodePlots |v"0.3.1"  | none |
| XLSX | v"0.4.2" | none |
| ZMQ | v"1.0.0" | none |

For each package we provide the information whether it depends on external software installations. Some package have no external dependencies while other require installation of external tools such as GNU R, database drivers or Java virtual machine. Detailed instructions can be found in the recipes that use particular packages (for example, the recipe *Calling R from Julia* in the Chapter 8, *Julia Workflow* shows how to configure RCall while the recipe *Working with databases in Julia* in the Chapter 9, *Data Science* explains the installation process of various database drivers).

A noteworthy case is the Python dependency. Several important Julia packages depend on Python functionality that is provided via the PyCall.jl package. Note that for those packages (having the status **optional**  at our table) you have two options:

* Use Python Anaconda installed inside of Julia (in this case no installation of external dependencies is required)
* external Python Anaconda installation outside of Julia (the user needs to install and configure Python Anaconda to work with Julia)

Note that in this book all Python-dependent recipes use Python 3.6.5.  In the recipe *Calling Python from Julia* in Chapter 8, *Julia Workflow* we discuss in detail various options for configuring the PyCall.jl package for Julia-to-Python integration.


We also provide a PDF file that has color images of the screenshots/diagrams used in this book. [Click here to download it](https://www.packtpub.com/sites/default/files/downloads/9781788998369_ColorImages.pdf).

### Related products
* Julia 1.0 Programming - Second Edition [[Packt]](https://www.packtpub.com/application-development/julia-10-programming-second-edition?utm_source=github&utm_medium=repository&utm_campaign=9781788999090 ) [[Amazon]](https://www.amazon.com/dp/1788999096)

* Hands-On Computer Vision with Julia [[Packt]](https://www.packtpub.com/application-development/hands-computer-vision-julia?utm_source=github&utm_medium=repository&utm_campaign=9781788998796 ) [[Amazon]](https://www.amazon.com/dp/B07CSPBV11)


## Get to Know the Author
**Bogumił Kamiński**
([GitHub](https://github.com/bkamins), [web](http://bogumilkaminski.pl/about/)) is an associate professor and head of the
Decision Support and Analysis Unit at the SGH Warsaw School of Economics, as well as
adjunct professor at the data science laboratory, Ryerson University, Toronto. He is coeditor
of the Central European Journal of Economic Modeling and Econometrics, and of the
Multiple Criteria Decision Making journal. His scientific interests center on operational
research and computational social science. He has authored over 50 research articles on
simulation, optimization, and prediction methods. He also has 15+ years' experience in the
deployment of large-scale advanced analytics solutions for industry and public
administration

**Przemysław Szufel**
([GitHub](https://github.com/pszufe), [web](https://szufel.pl/en_aboutme.html)) is an assistant professor in
the Decision Support and Analysis Unit at the SGH Warsaw School of Economics. His
current research focuses on distributed systems and methods for the execution of largescale
simulations for numerical experiments and optimization. He is working on
asynchronous algorithms for the parallel execution of large-scale computations in the cloud
and distributed computational environments. He has authored, and co-authored, several
open source tools for high-performance and numerical simulation


### Suggestions and Feedback
[Click here](https://docs.google.com/forms/d/e/1FAIpQLSdy7dATC6QmEL81FIUuymZ0Wy9vH1jHkvpY57OiMeKGqib_Ow/viewform) if you have any feedback or suggestions.
### Download a free PDF

 <i>If you have already purchased a print or Kindle version of this book, you can get a DRM-free PDF version at no cost.<br>Simply click on the link to claim your free PDF.</i>
<p align="center"> <a href="https://packt.link/free-ebook/9781788998369">https://packt.link/free-ebook/9781788998369 </a> </p>