UCD Thesis - Markdown Templates
=====================

NO WARRANTY that this works for current UCD requirements ;)

About
------------------------
The following set of files are the components needed to write your thesis or dissertation using markdown (and ultimately LaTeX under the hood) for the University of California, Davis

Originally based on the File for a general UC Dissertation / Thesis

- Modified specifically to the UCD thesis class by Shwaine <shwaine@shwaine.com>
- 2006 - More recent changes by Dylan Beaudette
- 2010 Clarification and posting to github by Alex Mandel <tech@wildintellect.com>
- 2011 E-filing tweak by Jason Moore
- 2014 Style updates to fit recent requirements
- 2015 Transition to markdown/pandoc by Jaime Ashander

(See the Changelog for more details)

Contact us with questions and updates, we've posted the source on github so it's easier to accept changes and allow people to post their own variations.

<!--
Preview of the Stock Build
------------------------
[![PDF Status](https://www.sharelatex.com/github/repos/wildintellect/ucdthesis/builds/latest/badge.svg)](https://www.sharelatex.com/github/repos/wildintellect/ucdthesis/builds/latest/output.pdf)

-->

System requirements
-------------------

The markdown+pandoc version of the thesis template was built and debugged on OS
X 10.10 using open-source software with version numbers listed below, it may
work with different versions but no guarantees.

* pandoc >= 1.15
* pdfTeX 3.14159265-2.6-1.40.16 (TeX Live 2015)
* latexmk Version 4.43a
* biber 2.1
* GNU Make 3.81



How to write your thesis
------------------------
 * Download all the files here (use the HTTPS clone URL listed on the righthand side of GitHub repo)
 * Using your favorite Editor
 	* Edit `metadata.md` file with thesis details including title, abstract, program, and more (see the file and Metadata section below for more details)
	* Edit the `.md` files in `chapters` folder, add more if you need, starting the file name with the numbered order in which they should appear in the thesis
	* add bibtex entires to `example.bib` (or change the bibliography file in `metadata.md`)
 * Build
 	* type `make` in a shell prompt, this will produce a `mythesis.pdf` (edit the `Makefile` if you'd like a different filename)

 * There are many optional sections that you can add via `metadata.md` (more details below)
	* Dedication
	* Acknowledgments
	* Preface
	* Copyright page

## Metadata

In `metadata.md` is a YAML-formatted set of metadata for the thesis. Most field names are self-explanatory. The entries below 'abstract' deal with formatting. Some details on the others:

* `iselectronic:` 1 - yes, 0 - no
* `isdissertation:` 1 - PhD, 0 - MSc
* `degreemonth:` Choices are September, December, March, June

In addition to the above, there several optional fields. To use, these entries below  should be cut/pasted into the metadata block in `metadata.md` (i.e., the entries between --- and ... )

Copyright page is optional. If you have one, it
 must immediately follow the title page. For more information about the
 copyright page see the UCD's Office of Graduate Studies web site.

    copyrightpage: true

Dedication as a potentially multi-paragraph entry like the abstract

    dedication: |

        For my parents

        and for my brothers

Acknowledgments as a potentially multi-paragraph entry like the abstract

    acknowledgments: |
        A great many folks

        A second paragraph of folks

A preface can be included as a .tex file by giving the filename:

    preface: preface.tex
