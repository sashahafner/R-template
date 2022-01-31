# R-template
Template for a data analysis project in R 

# Quick guide
This repo contains a template for a data analysis project in R.
The objective is to make it easy for any R users to set up a data analysis project.
To use the "template" (really, it is just a set of scripts along with some example input and output, all organized into a set of 6 subdirectories) click the green "Code" button at the top to clone the repo, or [download](https://github.com/sashahafner/R-template/archive/refs/heads/main.zip) a ZIP archive.
Extract the files, move to a suitable directory, navigate to `scripts/main.R`, and start editing the scripts to fit your project.

# Some more details
R scripts are in the `scripts` subdirectory.
This template is set up so all the R code can be run by running `main.R`, e.g., in an R console:
```
> source('main.R')
```
Of course, the working directory must be set to `scripts`.
(This is the default behavior when a script is opened for some development environments, but not all.)

All the code in the scripts is simply for demonstration, but in several cases it could be useful to keep it.
Lines in the scripts that start with `# RAD:` are meant to be read and then deleted.

Input data goes in the `data` subdirectory.
Notes can go in `data/README.md` and original data in `data/original`.

The `logs` subdirectory is used for a text file log of R and package versions (created by `scripts/packages.R` and a pdf record of the analysis (see `scripts/analayis.Rmd`).

Output can be found in `output`, and plots in `plots`.

Lastly, a README.md file should be included for any other notes for collaborators and future users (including yourself).
The file you are reading can be used as a template.

Note that all file paths are relative, so this repo is completely portable. 
I recommend sticking with this approach, and further, not setting a working directory by R code.

This template is not linked to any particular operating system, script editor, or development environment.
I use [Neovim](https://neovim.io/) with the incredible [Nvim-R](https://github.com/jalvesaq/Nvim-R) plugin on Ubuntu Linux, but RStudio or even a separate text editor and R console could be used.

# Feedback
Even as I worked on a draft of this repo, I see it is being downloaded, so clearly there is some interest in this type of a template.
If you find it useful, let me know by following or "starring" the repo.
Feel free to use the "Issues" page for requests.

# Justification
I am sure what I have presented here is not close to perfect!
But it is a structure that I have converged on over several years of data analysis projects. 
Some original inspiration came from these sources: <https://stackoverflow.com/questions/1429907/workflow-for-statistical-analysis-and-report-writing> and <https://robjhyndman.com/hyndsight/workflow-in-r/>.
Some users may find the use of so many separate scripts confusing and unnecessary.
Why not use one big script, or even a single RMarkdown file?
I find the more modular approach used in this repo simpler for the following:
* Getting a workflow overview: just check `main.R`
* Isolating code problems: it is easy to find scripts by name and see which ones throw errors
* Editing/writing/testing code: work in a single script, run the whole thing to test it
* And also perhaps re-using code: easy to copy individual scripts
The modular approach given here is faster than a single large (or several) RMarkdown file(s) (although I have includedone for a record of data analysis output). 
Lastly,this approach is not dependent on RStudio or any other particular software (unlike [R Notebooks](https://www.rstudio.com/blog/r-notebooks/) (which some people find quite annoying, and others wonder if they have completely fizzled out).

# Related work
There are other repos on GitHub with a similar objective.
* <https://github.com/cboettig/template>
* <https://github.com/Pakillo/template>
* <https://github.com/bdcaf/cookiecutter-r-data-analysis>
* <https://github.com/klmr/example-r-analysis>

Here is some of my related work.
* Introduction to data analysis: <https://github.com/sashahafner/CCPDA>
* Introduction to R: <https://www.researchgate.net/publication/325170649_An_Introduction_to_R_for_Beginners>
* Some useful functions: <https://github.com/sashahafner/jumbled>
* More at [www.hafnerconsulting.com](https://sites.google.com/hafnerconsulting.com/hafnerconsulting)
