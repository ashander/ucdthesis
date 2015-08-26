## Intro

According to @hutchinson1959 ...Lorem ipsum dolor sit amet, consectetur
adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim
id est laborum.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
culpa qui officia deserunt mollit anim id est laborum.


## Body

Can include figures in latex

\begin{figure}[h!]
\centering
\includegraphics[width=0.5\textwidth]{figures/fig1.png}
\caption[Short figure caption]{Long caption of this very nice figure which will
appear in the list of figures unless we use full latex syntax to specify figures within our markdown document}\label{F1}
\end{figure}

or in markdown, but these will be brought in at actual size so must be scaled
beforehand. Also, there is no way to specify the short caption except by
editing the intermediate .tex file


![Long caption of this very nice figure which will
appear in the list of figures unless we use full latex syntax to specify figures within our markdown document](figures/fig2.png){#fig:F2}



Correlation was non-existent (Figure \ref{F1}) to be sure we plotted it twice
(Figure (@fig:F2)).  Lorem ipsum dolor sit amet, consectetur adipiscing elit,
sed do eiusmod tempor incididunt ut labore et
dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
deserunt mollit anim id est laborum.

We can equation ref in latex, like in \eqref{myeq}

\begin{equation}\label{myeq}
x = y
\end{equation}

or in markdown (using `pandoc-crossref`) as in  (@eq:myeq) 

$$
x =  z
$$ {#eq:myeq}

## Discussion

dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
deserunt mollit anim id est laborum.


## Appendix: Code

Use markdown (4 spaces) to indent code blocks

    ##  setting  value
    ##  version  R version 3.2.4 (2016-03-10)
    ##  system   x86_64, darwin13.4.0
    ##  ui       X11
    ##  language (EN)
    ##  collate  en_US.UTF-8
    ##  tz       America/Los_Angeles
    ##  date     2016-05-23
    ##
    ##  package         * version     date       source
    ##  assertthat        0.1         2013-12-06 CRAN (R 3.2.0)
    ##  colorspace        1.2-6       2015-03-11 CRAN (R 3.2.0)
    plot(1, 1)
