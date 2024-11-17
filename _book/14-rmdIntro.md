



# (PART) Assignments {-}

# R Markdown 


## Introduction to R Markdown

::: {.infobox .download data-latex="{download}"}
[You can download the example markdown file here](./Code/rmarkdown_example.Rmd)
:::

This page will guide you through creating and editing R Markdown documents. This is a useful tool for reporting your analysis (e.g. for homework assignments). Of course, there is also [a cheat sheet for R-Markdown](https://www.rstudio.org/links/r_markdown_cheat_sheet) and [this book](https://bookdown.org/yihui/rmarkdown/) contains a comprehensive discussion of the format. 

The following video contains a short introduction to the R Markdown format.

<br>
<div align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/o8FdyMAR-g4" frameborder="0" allowfullscreen></iframe>
</div>
<br>

### Creating a new R Markdown document {-}

In addition to the video, the following text contains a short description of the most important formatting options.  

Let's start to go through the steps of creating and .Rmd file and outputting the content to an HTML file. 

0. If an R-Markdown file was provided to you, open it with R-Studio and skip to [step 4](#step4) after adding your answers.

1. Open R-Studio

2. Create a new R-Markdown document
![](./rmdExplain/start.PNG)
![](./rmdExplain/openDoc.PNG)
![](./rmdExplain/enterName.PNG)
![](./rmdExplain/template.PNG)

3. Save with appropriate name
![](./rmdExplain/saving.PNG)

    3.1. Add your answers

    3.2. Save again

 <a name="step4"></a>
 
4. "Knit" to HTML 
![](./rmdExplain/knit.PNG)

5. Hand in appropriate file (ending in `.html`) on learn\@WU
![](./rmdExplain/handin.PNG)

### Text and Equations {-}

R-Markdown documents are plain text files that include both text and R-code. Using RStudio they can be converted ('knitted') to HTML or PDF files that include both the text and the results of the R-code. In fact this website is written using R-Markdown and RStudio. In order for RStudio to be able to interpret the document you have to use certain characters or combinations of characters when formatting text and including R-code to be evaluated. By default the document starts with the options for the text part. You can change the title, date, author and a few more advanced options. 

![First lines of an R-Markdown document](./rmdExplain/rmdHead.PNG)

The default is text mode, meaning that lines in an Rmd document will be interpreted as text, unless specified otherwise.

#### Headings {-}

Usually you want to include some kind of heading to structure your text. A heading is created using `#` signs. A single `#` creates a first level heading, two `##` a second level and so on. 

![](./rmdExplain/headings.PNG)

It is important to note here that the ```#``` symbol means something different within the code chunks as opposed to outside of them. If you continue to put a ```#``` in front of all your regular text, it will all be interpreted as a first level heading, making your text very large.

#### Lists {-}

Bullet point lists are created using `*`, `+` or `-`. Sub-items are created by indenting the item using 4 spaces or 2 tabs. 

````
* First Item
* Second Item
    + first sub-item
        - first sub-sub-item
    + second sub-item
````
* First Item
* Second Item
    + first sub-item
        - first sub-sub-item
    + second sub-item


Ordered lists can be created using numbers and letters. If you need sub-sub-items use `A)` instead of `A.` on the third level. 

````
1. First item
    a. first sub-item
        A) first sub-sub-item 
     b. second sub-item
2. Second item
````

1. First item
    a. first sub-item
        A) first sub-sub-item
    b. second sub-item
2. Second item


#### Text formatting {-}

Text can be formatted in *italics* (`*italics*`) or **bold** (`**bold**`). In addition, you can ad block quotes with `>`

````
> Lorem ipsum dolor amet chillwave lomo ramps, four loko green juice messenger bag raclette forage offal shoreditch chartreuse austin. Slow-carb poutine meggings swag blog, pop-up salvia taxidermy bushwick freegan ugh poke.
````
> Lorem ipsum dolor amet chillwave lomo ramps, four loko green juice messenger bag raclette forage offal shoreditch chartreuse austin. Slow-carb poutine meggings swag blog, pop-up salvia taxidermy bushwick freegan ugh poke.

### R-Code {-}

R-code is contained in so called "chunks". These chunks always start with three backticks and ```r``` in curly braces (``` ```{r} ```) and end with three backticks (``` ``` ```). Optionally, parameters can be added after the ```r``` to influence how a chunk behaves. Additionally, you can also give each chunk a name. Note that these have to be **unique**, otherwise R will refuse to knit your document.

#### Global and chunk options {-}

The first chunk always looks as follows


    ```{r setup, include = FALSE}
    knitr::opts_chunk$set(echo = TRUE)
    ```

It is added to the document automatically and sets options for all the following chunks. These options can be overwritten on a per-chunk basis. 

Keep `knitr::opts_chunk$set(echo = TRUE)` to print your code to the document you will hand in. Changing it to `knitr::opts_chunk$set(echo = FALSE)` will not print your code by default. This can be changed on a per-chunk basis.




    ```{r cars, echo = FALSE}
    summary(cars)

    plot(dist~speed, cars)
    ```



```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

<img src="14-rmdIntro_files/figure-html/cars-1.png" width="672" />

 
    ```{r cars2, echo = TRUE}
    summary(cars)

    plot(dist~speed, cars)
    ```



``` r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

``` r
plot(dist~speed, cars)
```

<img src="14-rmdIntro_files/figure-html/cars2-1.png" width="672" />

A good overview of all available global/chunk options can be found [here](https://yihui.name/knitr/options/#chunk_options).

### LaTeX Math {-}

Writing well formatted mathematical formulas is done the same way as in [LaTeX](https://en.wikipedia.org/wiki/LaTeX). Math mode is started and ended using `$$`. 
````
$$
 f_1(\omega) = \frac{\sigma^2}{2 \pi},\ \omega \in[-\pi, \pi]
$$
````

$$
 f_1(\omega) = \frac{\sigma^2}{2 \pi},\ \omega \in[-\pi, \pi]
$$

(for those interested this is the spectral density of [white noise](https://en.wikipedia.org/wiki/White_noise))

Including inline mathematical notation is done with a single ```$``` symbol. 

````
${2\over3}$ of my code is inline.

````
${2\over3}$ of my code is inline.

<br>

Take a look at [this wikibook on Mathematics in LaTeX](https://en.wikibooks.org/wiki/LaTeX/Mathematics#Symbols) and [this list of Greek letters and mathematical symbols](https://www.sharelatex.com/learn/List_of_Greek_letters_and_math_symbols) if you are not familiar with LaTeX.

In order to write multi-line equations in the same math environment, use `\\` after every line. In order to insert a space use a single `\`. To render text inside a math environment use `\text{here is the text}`. In order to align equations start with `\begin{align}` and place an `&` in each line at the point around which it should be aligned. Finally end with `\end{align}`

````
$$
\begin{align}
\text{First equation: }\ Y &= X \beta + \epsilon_y,\ \forall X \\
\text{Second equation: }\ X &= Z \gamma + \epsilon_x
\end{align}
$$
````

$$
\begin{align}
\text{First equation: }\ Y &= X \beta + \epsilon_y,\ \forall X \\
\text{Second equation: }\ X &= Z \gamma + \epsilon_x
\end{align}
$$

#### Important symbols {-}

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Symbol </th>
   <th style="text-align:left;"> Code </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> $a^{2} + b$ </td>
   <td style="text-align:left;"> ```a^{2} + b``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a^{2+b}$ </td>
   <td style="text-align:left;"> ```a^{2+b}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a_{1}$ </td>
   <td style="text-align:left;"> ```a_{1}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \leq b$ </td>
   <td style="text-align:left;"> ```a \leq b``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \geq b$ </td>
   <td style="text-align:left;"> ```a \geq b``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \neq b$ </td>
   <td style="text-align:left;"> ```a \neq b``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \approx b$ </td>
   <td style="text-align:left;"> ```a \approx b``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \in (0,1)$ </td>
   <td style="text-align:left;"> ```a \in (0,1)``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \rightarrow \infty$ </td>
   <td style="text-align:left;"> ```a \rightarrow \infty``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\frac{a}{b}$ </td>
   <td style="text-align:left;"> ```\frac{a}{b}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\frac{\partial a}{\partial b}$ </td>
   <td style="text-align:left;"> ```\frac{\partial a}{\partial b}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\sqrt{a}$ </td>
   <td style="text-align:left;"> ```\sqrt{a}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\sum_{i = 1}^{b} a_i$ </td>
   <td style="text-align:left;"> ```\sum_{i = 1}^{b} a_i``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\int_{a}^b f(c) dc$ </td>
   <td style="text-align:left;"> ```\int_{a}^b f(c) dc``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\prod_{i = 0}^b a_i$ </td>
   <td style="text-align:left;"> ```\prod_{i = 0}^b a_i``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $c \left( \sum_{i=1}^b a_i \right)$ </td>
   <td style="text-align:left;"> ```c \left( \sum_{i=1}^b a_i \right)``` </td>
  </tr>
</tbody>
</table>

The `{}` after `_` and `^` are not strictly necessary if there is only one character in the sub-/superscript. However, in order to place multiple characters in the sub-/superscript they are necessary. 
e.g.


<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Symbol </th>
   <th style="text-align:left;"> Code </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> $a^b = a^{b}$ </td>
   <td style="text-align:left;"> ```a^b = a^{b}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a^b+c \neq a^{b+c}$ </td>
   <td style="text-align:left;"> ```a^b+c \neq a^{b+c}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\sum_i a_i = \sum_{i} a_{i}$ </td>
   <td style="text-align:left;"> ```\sum_i a_i = \sum_{i} a_{i}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\sum_{i=1}^{b+c} a_i \neq \sum_i=1^b+c a_i$ </td>
   <td style="text-align:left;"> ```\sum_{i=1}^{b+c} a_i \neq \sum_i=1^b+c a_i``` </td>
  </tr>
</tbody>
</table>

#### Greek letters {-}

[Greek letters](https://en.wikipedia.org/wiki/Greek_alphabet#Letters) are preceded by a `\` followed by their name (`$\beta$` = $\beta$). In order to capitalize them simply capitalize the first letter of the name (`$\Gamma$` = $\Gamma$).

## Assignment 1

### Load libraries and data

For your convenience the following code will load the required `tidyverse` library as well as the data. Make sure to convert each of the variables you use for you analysis to the appropriate data types (e.g., `Date`, `factor`).


``` r
library(tidyverse)
music_data <- read.csv2("https://raw.githubusercontent.com/WU-RDS/MA2024/main/data/music_data_fin.csv")
str(music_data)
```

```
## 'data.frame':	66796 obs. of  31 variables:
##  $ isrc                       : chr  "BRRGE1603547" "USUM71808193" "ES5701800181" "ITRSE2000050" ...
##  $ artist_id                  : int  3679 5239 776407 433730 526471 1939 210184 212546 4938 119985 ...
##  $ streams                    : num  11944813 8934097 38835 46766 2930573 ...
##  $ weeks_in_charts            : int  141 51 1 1 7 226 13 1 64 7 ...
##  $ n_regions                  : int  1 21 1 1 4 8 1 1 5 1 ...
##  $ danceability               : num  50.9 35.3 68.3 70.4 84.2 35.2 73 55.6 71.9 34.6 ...
##  $ energy                     : num  80.3 75.5 67.6 56.8 57.8 91.1 69.6 24.5 85 43.3 ...
##  $ speechiness                : num  4 73.3 14.7 26.8 13.8 7.47 35.5 3.05 3.17 6.5 ...
##  $ instrumentalness           : num  0.05 0 0 0.000253 0 0 0 0 0.02 0 ...
##  $ liveness                   : num  46.3 39 7.26 8.91 22.8 9.95 32.1 9.21 11.4 10.1 ...
##  $ valence                    : num  65.1 43.7 43.4 49.5 19 23.6 58.4 27.6 36.7 76.8 ...
##  $ tempo                      : num  166 191.2 99 91 74.5 ...
##  $ song_length                : num  3.12 3.23 3.02 3.45 3.95 ...
##  $ song_age                   : num  228.3 144.3 112.3 50.7 58.3 ...
##  $ explicit                   : int  0 0 0 0 0 0 0 0 1 0 ...
##  $ n_playlists                : int  450 768 48 6 475 20591 6 105 547 688 ...
##  $ sp_popularity              : int  51 54 32 44 52 81 44 8 59 68 ...
##  $ youtube_views              : num  1.45e+08 1.32e+07 6.12e+06 0.00 0.00 ...
##  $ tiktok_counts              : int  9740 358700 0 13 515 67300 0 0 653 3807 ...
##  $ ins_followers_artist       : int  29613108 3693566 623778 81601 11962358 1169284 1948850 39381 9751080 343 ...
##  $ monthly_listeners_artist   : int  4133393 18367363 888273 143761 15551876 16224250 2683086 1318874 4828847 3088232 ...
##  $ playlist_total_reach_artist: int  24286416 143384531 4846378 156521 90841884 80408253 7332603 24302331 8914977 8885252 ...
##  $ sp_fans_artist             : int  3308630 465412 23846 1294 380204 1651866 214001 10742 435457 1897685 ...
##  $ shazam_counts              : int  73100 588550 0 0 55482 5281161 0 0 39055 0 ...
##  $ artistName                 : chr  "Luan Santana" "Alessia Cara" "Ana Guerra" "Claver Gold feat. Murubutu" ...
##  $ trackName                  : chr  "Eu, Você, O Mar e Ela" "Growing Pains" "El Remedio" "Ulisse" ...
##  $ release_date               : chr  "2016-06-20" "2018-06-14" "2018-04-26" "2020-03-31" ...
##  $ genre                      : chr  "other" "Pop" "Pop" "HipHop/Rap" ...
##  $ label                      : chr  "Independent" "Universal Music" "Universal Music" "Independent" ...
##  $ top10                      : int  1 0 0 0 0 1 0 0 0 0 ...
##  $ expert_rating              : chr  "excellent" "good" "good" "poor" ...
```

``` r
head(music_data, 2) 
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["isrc"],"name":[1],"type":["chr"],"align":["left"]},{"label":["artist_id"],"name":[2],"type":["int"],"align":["right"]},{"label":["streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["weeks_in_charts"],"name":[4],"type":["int"],"align":["right"]},{"label":["n_regions"],"name":[5],"type":["int"],"align":["right"]},{"label":["danceability"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["energy"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["speechiness"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["instrumentalness"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["liveness"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["valence"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["tempo"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["song_length"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["song_age"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["explicit"],"name":[15],"type":["int"],"align":["right"]},{"label":["n_playlists"],"name":[16],"type":["int"],"align":["right"]},{"label":["sp_popularity"],"name":[17],"type":["int"],"align":["right"]},{"label":["youtube_views"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["tiktok_counts"],"name":[19],"type":["int"],"align":["right"]},{"label":["ins_followers_artist"],"name":[20],"type":["int"],"align":["right"]},{"label":["monthly_listeners_artist"],"name":[21],"type":["int"],"align":["right"]},{"label":["playlist_total_reach_artist"],"name":[22],"type":["int"],"align":["right"]},{"label":["sp_fans_artist"],"name":[23],"type":["int"],"align":["right"]},{"label":["shazam_counts"],"name":[24],"type":["int"],"align":["right"]},{"label":["artistName"],"name":[25],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[26],"type":["chr"],"align":["left"]},{"label":["release_date"],"name":[27],"type":["chr"],"align":["left"]},{"label":["genre"],"name":[28],"type":["chr"],"align":["left"]},{"label":["label"],"name":[29],"type":["chr"],"align":["left"]},{"label":["top10"],"name":[30],"type":["int"],"align":["right"]},{"label":["expert_rating"],"name":[31],"type":["chr"],"align":["left"]}],"data":[{"1":"BRRGE1603547","2":"3679","3":"11944813","4":"141","5":"1","6":"50.9","7":"80.3","8":"4.0","9":"0.05","10":"46.3","11":"65.1","12":"166.018","13":"3.11865","14":"228.2857","15":"0","16":"450","17":"51","18":"145030723","19":"9740","20":"29613108","21":"4133393","22":"24286416","23":"3308630","24":"73100","25":"Luan Santana","26":"Eu, Você, O Mar e Ela","27":"2016-06-20","28":"other","29":"Independent","30":"1","31":"excellent"},{"1":"USUM71808193","2":"5239","3":"8934097","4":"51","5":"21","6":"35.3","7":"75.5","8":"73.3","9":"0.00","10":"39.0","11":"43.7","12":"191.153","13":"3.22800","14":"144.2857","15":"0","16":"768","17":"54","18":"13188411","19":"358700","20":"3693566","21":"18367363","22":"143384531","23":"465412","24":"588550","25":"Alessia Cara","26":"Growing Pains","27":"2018-06-14","28":"Pop","29":"Universal Music","30":"0","31":"good"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

### Task 1

1. Determine the most popular song by the artist "BTS".
2. Create a new `data.frame` that only contains songs by "BTS" (Bonus: Also include songs that feature both BTS and other artists, see e.g., "BTS feat. Charli XCX")
3. Save the `data.frame` sorted by success (number of streams) with the most popular songs occurring first.


``` r
# provide your code here 
## 1.
music_data |>
  filter(artistName == "BTS") |>
  slice_max(order_by = streams, n = 1) |>
  select(artistName, trackName)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["artistName"],"name":[1],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[2],"type":["chr"],"align":["left"]}],"data":[{"1":"BTS","2":"Dynamite"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
## 2.
bts_data <- music_data |>
  filter(str_detect(artistName, "BTS")) |>
  arrange(desc(streams))
distinct(bts_data, artistName)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["artistName"],"name":[1],"type":["chr"],"align":["left"]}],"data":[{"1":"BTS feat. Halsey"},{"1":"BTS"},{"1":"BTS feat. Lauv"},{"1":"BTS feat. Desiigner feat. Steve Aoki"},{"1":"Steve Aoki feat. BTS"},{"1":"BTS feat. Nicki Minaj"},{"1":"Lil Nas X feat. RM feat. BTS"},{"1":"BTS feat. Charli XCX"},{"1":"BTS feat. Steve Aoki"},{"1":"Lauv feat. BTS"},{"1":"BTS feat. Zara Larsson"},{"1":"BTS feat. Juice WRLD"},{"1":"Halsey feat. SUGA feat. BTS"},{"1":"BTS feat. Lauv feat. Frants"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
head(bts_data)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["isrc"],"name":[1],"type":["chr"],"align":["left"]},{"label":["artist_id"],"name":[2],"type":["int"],"align":["right"]},{"label":["streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["weeks_in_charts"],"name":[4],"type":["int"],"align":["right"]},{"label":["n_regions"],"name":[5],"type":["int"],"align":["right"]},{"label":["danceability"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["energy"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["speechiness"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["instrumentalness"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["liveness"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["valence"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["tempo"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["song_length"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["song_age"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["explicit"],"name":[15],"type":["int"],"align":["right"]},{"label":["n_playlists"],"name":[16],"type":["int"],"align":["right"]},{"label":["sp_popularity"],"name":[17],"type":["int"],"align":["right"]},{"label":["youtube_views"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["tiktok_counts"],"name":[19],"type":["int"],"align":["right"]},{"label":["ins_followers_artist"],"name":[20],"type":["int"],"align":["right"]},{"label":["monthly_listeners_artist"],"name":[21],"type":["int"],"align":["right"]},{"label":["playlist_total_reach_artist"],"name":[22],"type":["int"],"align":["right"]},{"label":["sp_fans_artist"],"name":[23],"type":["int"],"align":["right"]},{"label":["shazam_counts"],"name":[24],"type":["int"],"align":["right"]},{"label":["artistName"],"name":[25],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[26],"type":["chr"],"align":["left"]},{"label":["release_date"],"name":[27],"type":["chr"],"align":["left"]},{"label":["genre"],"name":[28],"type":["chr"],"align":["left"]},{"label":["label"],"name":[29],"type":["chr"],"align":["left"]},{"label":["top10"],"name":[30],"type":["int"],"align":["right"]},{"label":["expert_rating"],"name":[31],"type":["chr"],"align":["left"]}],"data":[{"1":"QM6MZ1917908","2":"206557","3":"275102347","4":"709","5":"35","6":"64.5","7":"86.2","8":"9.65","9":"0","10":"19.20","11":"79.8","12":"119.991","13":"3.829550","14":"101.28571","15":"0","16":"2604","17":"83","18":"1169494158","19":"1400000","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"2602443","25":"BTS feat. Halsey","26":"Boy With Luv (feat. Halsey)","27":"2019-04-12","28":"other","29":"Independent","30":"1","31":"excellent"},{"1":"QM7282022872","2":"206557","3":"267700100","4":"121","5":"35","6":"74.6","7":"76.5","8":"9.93","9":"0","10":"9.36","11":"73.7","12":"114.044","13":"3.317567","14":"17.28571","15":"0","16":"3582","17":"91","18":"935819744","19":"3000000","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"5295990","25":"BTS","26":"Dynamite","27":"2020-08-21","28":"other","29":"Independent","30":"1","31":"good"},{"1":"QM7282022872","2":"206557","3":"261662772","4":"81","5":"35","6":"74.6","7":"76.5","8":"9.93","9":"0","10":"9.36","11":"73.7","12":"114.044","13":"3.317567","14":"29.28571","15":"0","16":"3582","17":"91","18":"935819744","19":"3000000","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"5295990","25":"BTS","26":"Dynamite","27":"2020-08-21","28":"other","29":"Independent","30":"1","31":"excellent"},{"1":"QMBZ92051791","2":"206557","3":"98155659","4":"121","5":"35","6":"56.6","7":"71.6","8":"4.24","9":"0","10":"37.00","11":"45.0","12":"81.068","13":"3.458017","14":"17.28571","15":"0","16":"659","17":"89","18":"293571799","19":"908000","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"1089231","25":"BTS","26":"Life Goes On","27":"2020-11-20","28":"other","29":"Independent","30":"1","31":"fair"},{"1":"KRA381702187","2":"206557","3":"53816537","4":"906","5":"35","6":"59.8","7":"77.5","8":"5.45","9":"0","10":"6.77","11":"68.7","12":"129.819","13":"3.718717","14":"182.85714","15":"1","16":"2459","17":"72","18":"1226858563","19":"189000","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"718165","25":"BTS","26":"DNA","27":"2017-09-18","28":"other","29":"Independent","30":"1","31":"masterpiece"},{"1":"QM4TX2001949","2":"206557","3":"49160372","4":"345","5":"34","6":"58.3","7":"81.7","8":"9.87","9":"0","10":"33.80","11":"43.8","12":"105.936","13":"4.106350","14":"56.28571","15":"0","16":"722","17":"79","18":"339282518","19":"260900","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"0","25":"BTS","26":"ON","27":"2020-02-21","28":"other","29":"Independent","30":"1","31":"excellent"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
tail(bts_data)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["isrc"],"name":[1],"type":["chr"],"align":["left"]},{"label":["artist_id"],"name":[2],"type":["int"],"align":["right"]},{"label":["streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["weeks_in_charts"],"name":[4],"type":["int"],"align":["right"]},{"label":["n_regions"],"name":[5],"type":["int"],"align":["right"]},{"label":["danceability"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["energy"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["speechiness"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["instrumentalness"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["liveness"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["valence"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["tempo"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["song_length"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["song_age"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["explicit"],"name":[15],"type":["int"],"align":["right"]},{"label":["n_playlists"],"name":[16],"type":["int"],"align":["right"]},{"label":["sp_popularity"],"name":[17],"type":["int"],"align":["right"]},{"label":["youtube_views"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["tiktok_counts"],"name":[19],"type":["int"],"align":["right"]},{"label":["ins_followers_artist"],"name":[20],"type":["int"],"align":["right"]},{"label":["monthly_listeners_artist"],"name":[21],"type":["int"],"align":["right"]},{"label":["playlist_total_reach_artist"],"name":[22],"type":["int"],"align":["right"]},{"label":["sp_fans_artist"],"name":[23],"type":["int"],"align":["right"]},{"label":["shazam_counts"],"name":[24],"type":["int"],"align":["right"]},{"label":["artistName"],"name":[25],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[26],"type":["chr"],"align":["left"]},{"label":["release_date"],"name":[27],"type":["chr"],"align":["left"]},{"label":["genre"],"name":[28],"type":["chr"],"align":["left"]},{"label":["label"],"name":[29],"type":["chr"],"align":["left"]},{"label":["top10"],"name":[30],"type":["int"],"align":["right"]},{"label":["expert_rating"],"name":[31],"type":["chr"],"align":["left"]}],"data":[{"1":"JPPO01701387","2":"206557","3":"9278","4":"2","5":"2","6":"54.8","7":"83.7","8":"3.64","9":"0.00","10":"13.0","11":"32.7","12":"107.004","13":"4.569333","14":"201.5714","15":"0","16":"245","17":"37","18":"603945","19":"575","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"0","25":"BTS","26":"Spring Day - Japanese ver.","27":"2017-05-09","28":"HipHop/Rap","29":"Universal Music","30":"0","31":"fair"},{"1":"KRA381601893","2":"206557","3":"9218","4":"1","5":"2","6":"56.4","7":"82.7","8":"4.26","9":"0.01","10":"14.7","11":"31.3","12":"131.052","13":"3.829133","14":"231.8571","15":"1","16":"1788","17":"64","18":"5313984","19":"4013","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"74165","25":"BTS","26":"Begin","27":"2016-10-09","28":"other","29":"Independent","30":"0","31":"poor"},{"1":"KRA381601904","2":"206557","3":"5035","4":"1","5":"1","6":"44.2","7":"92.1","8":"20.20","9":"0.00","10":"10.0","11":"61.2","12":"169.892","13":"4.542717","14":"231.8571","15":"1","16":"1578","17":"62","18":"0","19":"0","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"90121","25":"BTS","26":"2! 3!","27":"2016-10-09","28":"other","29":"Independent","30":"0","31":"excellent"},{"1":"JPPO01701386","2":"206557","3":"4839","4":"3","5":"1","6":"59.4","7":"95.1","8":"14.50","9":"0.00","10":"96.5","11":"65.3","12":"110.041","13":"3.868883","14":"201.5714","15":"0","16":"247","17":"47","18":"0","19":"545","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"0","25":"BTS","26":"Not Today - Japanese ver.","27":"2017-05-09","28":"HipHop/Rap","29":"Universal Music","30":"0","31":"excellent"},{"1":"JPPO01701387","2":"206557","3":"3085","4":"2","5":"1","6":"54.8","7":"82.9","8":"3.71","9":"0.00","10":"13.6","11":"33.1","12":"106.996","13":"4.569333","14":"201.5714","15":"0","16":"245","17":"37","18":"603945","19":"575","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"0","25":"BTS","26":"Spring Day - Japanese ver.","27":"2017-05-09","28":"HipHop/Rap","29":"Universal Music","30":"0","31":"excellent"},{"1":"JPPO01701386","2":"206557","3":"2178","4":"1","5":"1","6":"59.1","7":"95.5","8":"14.30","9":"0.00","10":"96.3","11":"64.1","12":"110.063","13":"3.868883","14":"201.5714","15":"0","16":"247","17":"47","18":"0","19":"545","20":"38700892","21":"26147576","22":"152858657","23":"2166028","24":"0","25":"BTS","26":"Not Today - Japanese ver.","27":"2017-05-09","28":"HipHop/Rap","29":"Universal Music","30":"0","31":"excellent"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

### Task 2

Create a new `data.frame` containing the 100 most streamed songs. 


``` r
# provide your code here 
top100 <- slice_max(music_data, order_by = streams, n = 100)
range(top100$streams)
```

```
## [1]  490037377 2165692479
```

### Task 3

1. Determine the most popular genres. 
    
- Group the data by genre and calculate the total number of streams within each genre. 
- Sort the result to show the most popular genre first.

2. Create a bar plot in which the heights of the bars correspond to the total number of streams within a genre (Bonus: order the bars by their height)



``` r
# provide your code here 
genre_data <- music_data |>
  summarize(.by = genre, total_streams = sum(streams)) |>
  arrange(desc(total_streams)) |>
  mutate(genre = fct_reorder(as.factor(genre), total_streams))
head(genre_data)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["genre"],"name":[1],"type":["fct"],"align":["left"]},{"label":["total_streams"],"name":[2],"type":["dbl"],"align":["right"]}],"data":[{"1":"Pop","2":"173713597202"},{"1":"HipHop/Rap","2":"143116357087"},{"1":"other","2":"65952433233"},{"1":"Electro/Dance","2":"33815774273"},{"1":"Rock","2":"29085255798"},{"1":"R&B","2":"28843269808"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
ggplot(genre_data, aes(y = genre, x = total_streams)) +
  geom_bar(stat="identity")
```

<img src="14-rmdIntro_files/figure-html/question_3_a1-1.png" width="672" />


### Task 4

1. Rank the music labels by their success (total number of streams of all their songs)
2. Show the total number of streams as well as the average and the median of all songs by label. (Bonus: Also add the artist and track names and the number of streams of each label's top song to the result)



``` r
# provide your code here 
label_data <- music_data |>
  summarize(
    .by = label, 
    total_streams = sum(streams), 
    avg_streams = mean(streams), 
    med_streams = median(streams), 
    top_song_artist = artistName[which.max(streams)],
    top_song_title = trackName[which.max(streams)],
    top_song_streams = max(streams)
    ) |>
  mutate(label_rank = dense_rank(-total_streams)) |>
  arrange(desc(total_streams))
label_data
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["label"],"name":[1],"type":["chr"],"align":["left"]},{"label":["total_streams"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["avg_streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["med_streams"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["top_song_artist"],"name":[5],"type":["chr"],"align":["left"]},{"label":["top_song_title"],"name":[6],"type":["chr"],"align":["left"]},{"label":["top_song_streams"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["label_rank"],"name":[8],"type":["int"],"align":["right"]}],"data":[{"1":"Universal Music","2":"197499391883","3":"9129964","4":"434943.0","5":"Billie Eilish","6":"bad guy","7":"1459149566","8":"1"},{"1":"Sony Music","2":"108111852495","3":"8725735","4":"355898.5","5":"Travis Scott","6":"SICKO MODE","7":"1032407145","8":"2"},{"1":"Independent","2":"94289773362","3":"4177659","4":"238884.0","5":"XXXTENTACION","6":"Jocelyn Flores","7":"936906948","8":"3"},{"1":"Warner Music","2":"88689942555","3":"8691684","4":"347152.5","5":"Ed Sheeran","6":"Shape of You","7":"2165692479","8":"4"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>


### Task 5

1. How do genres differ in terms of song features (audio features + song length + explicitness + song age)?

- Select appropriate summary statistics for each of the variables and highlight the differences between genres using the summary statistics.
- Create an appropriate plot showing the differences of "energy" across genres.
   


``` r
# provide your code here
music_data |>
  summarize(.by = genre, across(danceability:explicit, 
                                list("avg" = mean,
                                     "std.dev" = sd,
                                     "median" = median, 
                                     "pct_10" = \(x) quantile(x, 0.1), 
                                     "pct_90" = \(x) quantile(x, 0.9))
                                )
            )
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["genre"],"name":[1],"type":["chr"],"align":["left"]},{"label":["danceability_avg"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["danceability_std.dev"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["danceability_median"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["danceability_pct_10"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["danceability_pct_90"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["energy_avg"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["energy_std.dev"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["energy_median"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["energy_pct_10"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["energy_pct_90"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["speechiness_avg"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["speechiness_std.dev"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["speechiness_median"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["speechiness_pct_10"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["speechiness_pct_90"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["instrumentalness_avg"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["instrumentalness_std.dev"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["instrumentalness_median"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["instrumentalness_pct_10"],"name":[20],"type":["dbl"],"align":["right"]},{"label":["instrumentalness_pct_90"],"name":[21],"type":["dbl"],"align":["right"]},{"label":["liveness_avg"],"name":[22],"type":["dbl"],"align":["right"]},{"label":["liveness_std.dev"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["liveness_median"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["liveness_pct_10"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["liveness_pct_90"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["valence_avg"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["valence_std.dev"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["valence_median"],"name":[29],"type":["dbl"],"align":["right"]},{"label":["valence_pct_10"],"name":[30],"type":["dbl"],"align":["right"]},{"label":["valence_pct_90"],"name":[31],"type":["dbl"],"align":["right"]},{"label":["tempo_avg"],"name":[32],"type":["dbl"],"align":["right"]},{"label":["tempo_std.dev"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["tempo_median"],"name":[34],"type":["dbl"],"align":["right"]},{"label":["tempo_pct_10"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["tempo_pct_90"],"name":[36],"type":["dbl"],"align":["right"]},{"label":["song_length_avg"],"name":[37],"type":["dbl"],"align":["right"]},{"label":["song_length_std.dev"],"name":[38],"type":["dbl"],"align":["right"]},{"label":["song_length_median"],"name":[39],"type":["dbl"],"align":["right"]},{"label":["song_length_pct_10"],"name":[40],"type":["dbl"],"align":["right"]},{"label":["song_length_pct_90"],"name":[41],"type":["dbl"],"align":["right"]},{"label":["song_age_avg"],"name":[42],"type":["dbl"],"align":["right"]},{"label":["song_age_std.dev"],"name":[43],"type":["dbl"],"align":["right"]},{"label":["song_age_median"],"name":[44],"type":["dbl"],"align":["right"]},{"label":["song_age_pct_10"],"name":[45],"type":["dbl"],"align":["right"]},{"label":["song_age_pct_90"],"name":[46],"type":["dbl"],"align":["right"]},{"label":["explicit_avg"],"name":[47],"type":["dbl"],"align":["right"]},{"label":["explicit_std.dev"],"name":[48],"type":["dbl"],"align":["right"]},{"label":["explicit_median"],"name":[49],"type":["dbl"],"align":["right"]},{"label":["explicit_pct_10"],"name":[50],"type":["dbl"],"align":["right"]},{"label":["explicit_pct_90"],"name":[51],"type":["dbl"],"align":["right"]}],"data":[{"1":"other","2":"64.52704","3":"15.390890","4":"67.0","5":"42.90","6":"82.40","7":"63.90804","8":"20.45958","9":"67.70","10":"33.10","11":"87.60","12":"9.304199","13":"10.379459","14":"5.585","15":"3.100","16":"20.100","17":"0.7217099","18":"6.321211","19":"0.000000","20":"0","21":"0.050000","22":"21.91372","23":"20.269202","24":"13.30","25":"7.287","26":"45.10","27":"60.15862","28":"22.73370","29":"62.15","30":"27.50","31":"89.83","32":"123.6489","33":"31.97948","34":"120.0090","35":"87.5033","36":"172.0260","37":"3.428663","38":"0.9649817","39":"3.347550","40":"2.500895","41":"4.458583","42":"395.4522","43":"651.77910","44":"142.42857","45":"28.28571","46":"1237.7143","47":"0.07785004","48":"0.2679611","49":"0","50":"0","51":"0"},{"1":"Pop","2":"63.73658","3":"14.455431","4":"65.1","5":"44.10","6":"81.50","7":"62.91020","8":"18.62437","9":"65.00","10":"36.90","11":"86.00","12":"9.848424","13":"10.197396","14":"5.370","15":"3.020","16":"25.000","17":"1.1608197","18":"7.761208","19":"0.000000","20":"0","21":"0.160000","22":"17.26369","23":"13.163811","24":"12.20","25":"7.360","26":"33.90","27":"50.32584","28":"22.57102","29":"49.20","30":"20.60","31":"82.10","32":"120.9394","33":"28.44137","34":"119.9860","35":"86.0718","36":"160.1132","37":"3.524695","38":"0.8421095","39":"3.430200","40":"2.659957","41":"4.514137","42":"238.3576","43":"374.53971","44":"143.28571","45":"28.28571","46":"533.1429","47":"0.15527620","48":"0.3621738","49":"0","50":"0","51":"1"},{"1":"HipHop/Rap","2":"73.04785","3":"12.304102","4":"74.8","5":"55.50","6":"87.70","7":"65.09905","8":"13.27987","9":"65.70","10":"48.10","11":"82.10","12":"20.920469","13":"13.551478","14":"19.000","15":"5.310","16":"39.100","17":"0.6114178","18":"5.031168","19":"0.000000","20":"0","21":"0.060000","22":"16.89957","23":"12.485381","24":"12.10","25":"7.840","26":"33.30","27":"49.03505","28":"20.72870","29":"49.00","30":"21.10","31":"77.20","32":"121.6765","33":"28.21902","34":"121.9980","35":"85.6640","36":"159.8800","37":"3.215201","38":"0.8119683","39":"3.144667","40":"2.417933","41":"4.065967","42":"109.2966","43":"96.82665","44":"96.28571","45":"21.57143","46":"195.2857","47":"0.05153566","48":"0.2210928","49":"0","50":"0","51":"0"},{"1":"Rock","2":"54.75486","3":"13.975973","4":"55.0","5":"36.43","6":"72.30","7":"67.76872","8":"21.36872","9":"70.85","10":"36.93","11":"93.50","12":"6.186818","13":"5.224305","14":"4.320","15":"2.900","16":"11.400","17":"5.6923038","18":"17.465641","19":"0.000948","20":"0","21":"13.800000","22":"18.64689","23":"14.519118","24":"12.50","25":"7.490","26":"36.30","27":"45.64841","28":"22.53212","29":"44.00","30":"16.33","31":"77.00","32":"122.2531","33":"28.70089","34":"120.0240","35":"86.0453","36":"164.0598","37":"3.846571","38":"0.9930482","39":"3.723783","40":"2.854098","41":"4.954112","42":"356.1687","43":"531.81309","44":"160.28571","45":"36.88571","46":"1085.4286","47":"0.17180826","48":"0.3772585","49":"0","50":"0","51":"1"},{"1":"R&B","2":"67.96766","3":"13.432997","4":"70.1","5":"48.90","6":"83.10","7":"61.25491","8":"15.79594","9":"62.30","10":"40.50","11":"81.20","12":"12.337241","13":"10.098873","14":"8.380","15":"3.670","16":"27.200","17":"0.9564108","18":"6.863960","19":"0.000000","20":"0","21":"0.210000","22":"16.03997","23":"11.622330","24":"11.60","25":"7.400","26":"32.00","27":"52.83072","28":"23.01094","29":"54.10","30":"20.70","31":"83.40","32":"120.1679","33":"32.02157","34":"111.0040","35":"84.9870","36":"172.0370","37":"3.463912","38":"0.7241622","39":"3.426667","40":"2.640000","41":"4.334617","42":"229.7397","43":"460.38072","44":"109.71429","45":"31.28571","46":"318.1429","47":"0.07761829","48":"0.2676411","49":"0","50":"0","51":"0"},{"1":"Electro/Dance","2":"66.55213","3":"11.872900","4":"67.4","5":"50.90","6":"80.70","7":"74.50546","8":"13.98508","9":"76.20","10":"56.00","11":"90.78","12":"7.818187","13":"6.331865","14":"5.380","15":"3.350","16":"15.780","17":"5.0453373","18":"16.745219","19":"0.000379","20":"0","21":"9.774000","22":"18.57029","23":"14.118595","24":"13.00","25":"7.122","26":"35.80","27":"47.49889","28":"21.48897","29":"47.80","30":"18.90","31":"77.00","32":"120.7373","33":"19.41664","34":"121.9960","35":"97.9774","36":"144.0156","37":"3.361686","38":"0.7369606","39":"3.247333","40":"2.669757","41":"4.088967","42":"187.7736","43":"194.72333","44":"157.28571","45":"42.62857","46":"285.5714","47":"0.33999260","48":"0.4737939","49":"0","50":"0","51":"1"},{"1":"German Folk","2":"63.03265","3":"15.356337","4":"65.2","5":"41.44","6":"81.50","7":"61.72835","8":"22.55591","9":"66.60","10":"28.00","11":"88.54","12":"9.797514","13":"10.198743","14":"4.910","15":"2.958","16":"27.420","17":"1.7509195","18":"10.019071","19":"0.000000","20":"0","21":"0.782000","22":"18.64599","23":"15.381588","24":"12.30","25":"7.580","26":"35.42","27":"56.06759","28":"24.07133","29":"58.30","30":"22.00","31":"87.70","32":"119.3801","33":"28.53437","34":"118.0580","35":"86.1198","36":"159.8366","37":"3.646470","38":"0.9724464","39":"3.628000","40":"2.616707","41":"4.905423","42":"436.3941","43":"552.94134","44":"212.28571","45":"123.28571","46":"1276.3143","47":"0.29870130","48":"0.4581137","49":"0","50":"0","51":"1"},{"1":"Reggae","2":"75.06198","3":"9.332347","4":"76.7","5":"62.80","6":"86.40","7":"67.60661","8":"14.90742","9":"69.60","10":"48.70","11":"88.20","12":"11.956198","13":"8.686172","14":"7.850","15":"4.150","16":"24.400","17":"1.8236761","18":"9.522788","19":"0.000000","20":"0","21":"0.930000","22":"18.02198","23":"14.894363","24":"12.70","25":"6.550","26":"36.80","27":"69.73140","28":"18.37510","29":"73.40","30":"44.90","31":"90.70","32":"111.8039","33":"31.02950","34":"100.0450","35":"81.9860","36":"165.8500","37":"3.498592","38":"0.5732457","39":"3.435617","40":"2.911617","41":"4.241333","42":"343.6765","43":"530.67362","44":"152.28571","45":"16.28571","46":"794.0000","47":"0.09090909","48":"0.2886751","49":"0","50":"0","51":"0"},{"1":"Country","2":"59.67282","3":"11.984577","4":"59.7","5":"44.70","6":"74.47","7":"69.70504","8":"18.70773","9":"75.00","10":"42.13","11":"90.02","12":"5.159821","13":"4.095142","14":"3.775","15":"2.800","16":"8.967","17":"0.2375129","18":"4.044887","19":"0.000000","20":"0","21":"0.000737","22":"23.70347","23":"21.428114","24":"13.95","25":"8.490","26":"53.02","27":"58.90298","28":"21.07777","29":"61.85","30":"29.33","31":"87.18","32":"124.5243","33":"31.19017","34":"125.0975","35":"80.6458","36":"166.9938","37":"3.347030","38":"0.5425821","39":"3.267225","40":"2.726887","41":"3.969117","42":"244.2112","43":"437.55352","44":"109.28571","45":"15.88571","46":"641.9286","47":"0.01984127","48":"0.1395932","49":"0","50":"0","51":"0"},{"1":"Soundtrack","2":"52.81687","3":"16.248094","4":"54.1","5":"28.95","6":"73.30","7":"52.04574","8":"21.95865","9":"50.20","10":"22.50","11":"82.20","12":"6.821503","13":"7.511140","14":"3.990","15":"2.930","16":"15.500","17":"5.0177189","18":"19.372151","19":"0.000000","20":"0","21":"0.900000","22":"17.48736","23":"14.798672","24":"11.85","25":"7.895","26":"32.85","27":"37.98939","28":"22.43526","29":"32.30","30":"13.35","31":"71.00","32":"119.5009","33":"30.79834","34":"118.0340","35":"78.4770","36":"159.2905","37":"3.545621","38":"0.9855004","39":"3.503333","40":"2.387975","41":"4.631550","42":"230.1586","43":"318.20296","44":"147.28571","45":"61.50000","46":"405.6429","47":"0.13190184","48":"0.3389042","49":"0","50":"0","51":"1"},{"1":"Classics/Jazz","2":"45.99988","3":"18.339914","4":"46.6","5":"21.20","6":"69.22","7":"30.85225","8":"19.50915","9":"28.10","10":"8.19","11":"60.78","12":"6.110000","13":"6.549996","14":"3.920","15":"3.029","16":"11.110","17":"11.3441542","18":"25.648211","19":"0.020000","20":"0","21":"38.080000","22":"13.43700","23":"7.628625","24":"10.55","25":"7.515","26":"24.20","27":"38.23663","28":"24.30260","29":"30.95","30":"11.63","31":"74.70","32":"113.2287","33":"33.74192","34":"108.4460","35":"73.1532","36":"147.4277","37":"3.690025","38":"1.2866242","39":"3.457267","40":"2.188422","41":"5.254717","42":"819.6607","43":"780.20855","44":"590.92857","45":"153.38571","46":"1746.7714","47":"0.17500000","48":"0.3823644","49":"0","50":"0","51":"1"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
ggplot(music_data, aes(x = fct_reorder(factor(genre), energy, median), y = energy)) +
    geom_boxplot() +
    theme(axis.title.x = element_blank()) +
    scale_x_discrete(guide = guide_axis(n.dodge=2))
```

<img src="14-rmdIntro_files/figure-html/question_5_a1-1.png" width="672" />


### Task 6

Visualize the number of songs by label. 


``` r
# provide your code here 
music_data |>
  summarize(.by = label, n_songs = n_distinct(isrc)) |>
  mutate(label = fct_reorder(as.factor(label), n_songs)) |>
  ggplot(aes(y = label, x = n_songs)) +
    geom_bar(stat = "identity")
```

<img src="14-rmdIntro_files/figure-html/question_6_a1-1.png" width="672" />


### Task 7

Visualize the average monthly artist listeners (`monthly_listeners_artist`) by genre.


``` r
# provide your code here 
music_data |>
  summarize(.by = genre, avg_m_listeners = mean(monthly_listeners_artist)) |>
  mutate(genre = fct_reorder(factor(genre), avg_m_listeners)) |>
ggplot(aes(x = avg_m_listeners, y = genre)) +
  geom_bar(stat = "identity") +
  labs(x = "Average monthly artist listeners")
```

<img src="14-rmdIntro_files/figure-html/question_7_a1-1.png" width="672" />

### Task 8

Create a histogram of the variable "valence".


``` r
# provide your code here 
ggplot(music_data, aes(x = valence)) +
  geom_histogram()
```

```
## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

<img src="14-rmdIntro_files/figure-html/question_8_a1-1.png" width="672" />

### Task 9

Create a scatter plot showing `youtube_views` and `shazam_counts` (Bonus: add a linear regression line). Interpret the plot briefly.


``` r
# provide your code here 
ggplot(music_data, aes(x = youtube_views, y = shazam_counts)) +
  geom_point() +
  geom_smooth(method = "lm")
```

```
## `geom_smooth()` using formula = 'y ~ x'
```

<img src="14-rmdIntro_files/figure-html/question_9_a1-1.png" width="672" />

On average Youtube views and Shazam counts show a positive coefficient in the linear regression. However, the relationship does not appear to be linear.

## Assignment 2


This assignment consists of four parts. When answering the questions, please remember to address the following points, where appropriate:

* Formulate the corresponding hypotheses and choose an appropriate statistical test
* Provide the reason for your choice and discuss if the assumptions of the test are met 
* Convert the variables to the appropriate type (e.g., factor variables)
* Create appropriate graphs to explore the data (e.g., plot of means incl. confidence intervals, histogram, boxplot)
* Provide appropriate descriptive statistics for the variables (e.g., mean, median, standard deviation, etc.)
* Report and interpret the test results accurately (including confidence intervals)  
* Finally, don't forget to report your research conclusion

When you are done with your analysis, click on "Knit to HTML" button above the code editor. This will create a HTML document of your results in the folder where the "assignment2.Rmd" file is stored. Open this file in your Internet browser to see if the output is correct. If the output is correct, submit the HTML file via Learn\@WU. The file name should be "assignment2_studendID_lastname.html".

### Assignment 2a

As a mobile app product manager, you are looking for ways to improve user engagement and in-app purchases. Your team has launched an A/B test to analyze the effect of a new user interface (UI) feature. You have data that contains information about user behavior within your app.

The data file contains the following variables:

* **userID:** Unique user ID.
* **exp_group:** Experimental group (indicator variable w/ 2 levels: 0 = control, 1 = treatment).
* **in_app_purchases:** Total amount spent by a user in the app in the past month (in USD).
* **time_in_app:** Average time a user spends in your app per session (in minutes).

Use R and appropriate methods to answer the following questions:

1. The finance department asks you to provide an estimate of the average amount spent by users through in-app purchases. Compute the 95% confidence interval for the mean amount spent and provide an interpretation of the interval.
2. You run an A/B test to analyze the effect of a new UI feature on in-app purchases and time spent in the app. The information regarding which group a user has been assigned to is stored in the variable "exp_group". Is there a significant difference regarding in-app purchases and time spent between users from the control and treatment groups? Please include the effect size (Cohen's d) and confidence intervals in your report.
3. Assume that you plan to run an experiment to test two different notification strategies. You randomly assign app users to the control and experimental conditions. How many users would you need to include in each group if you assume the effect size to be 0.1 for a significance level of 0.05 and power of 0.8?

### Data analysis

### Load data


``` r
app_user_data <- read.table("https://raw.githubusercontent.com/WU-RDS/MA2024/main/user_data_q1.csv", 
                          sep = ",", 
                          header = TRUE) #read in data
head(app_user_data)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["userID"],"name":[1],"type":["int"],"align":["right"]},{"label":["exp_group"],"name":[2],"type":["int"],"align":["right"]},{"label":["in_app_purchases"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["time_in_app"],"name":[4],"type":["dbl"],"align":["right"]}],"data":[{"1":"1","2":"0","3":"7.20","4":"18.55488"},{"1":"2","2":"0","3":"8.85","4":"23.28257"},{"1":"3","2":"0","3":"17.79","4":"17.73001"},{"1":"4","2":"0","3":"10.35","4":"17.03068"},{"1":"5","2":"0","3":"10.65","4":"11.44810"},{"1":"6","2":"0","3":"18.58","4":"18.95276"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
str(app_user_data)
```

```
## 'data.frame':	1600 obs. of  4 variables:
##  $ userID          : int  1 2 3 4 5 6 7 8 9 10 ...
##  $ exp_group       : int  0 0 0 0 0 0 0 0 0 0 ...
##  $ in_app_purchases: num  7.2 8.85 17.79 10.35 10.65 ...
##  $ time_in_app     : num  18.6 23.3 17.7 17 11.4 ...
```


### Question 1

First, we take a look at the statistics for the amount spent for in app purchases our customers make and at the graph with the distribution of purchases made in app per customer.

To compute the confidence interval for the average customer, we will need the mean, the standard error and the critical value for a t-distribution (because we don't know exactly the variance in the population).




``` r
suppressPackageStartupMessages(library(ggplot2))
suppressPackageStartupMessages(library(psych))
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(ggstatsplot))
```


``` r
#First let's have a look at the purchases in the app in the data
psych::describe(app_user_data$in_app_purchases)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["vars"],"name":[1],"type":["dbl"],"align":["right"]},{"label":["n"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["mean"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["sd"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["median"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["trimmed"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["mad"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["min"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["max"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["range"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["skew"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["kurtosis"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[13],"type":["dbl"],"align":["right"]}],"data":[{"1":"1","2":"1600","3":"11.11889","4":"4.996944","5":"11.18","6":"11.08962","7":"4.922232","8":"0","9":"28.95","10":"28.95","11":"0.102741","12":"-0.1035079","13":"0.1249236"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
ggplot(app_user_data, aes(in_app_purchases)) + 
  geom_histogram(col = "white", fill = "lavenderblush3", bins = 50) + 
  geom_vline(data = app_user_data %>% dplyr::summarise(mean = mean(in_app_purchases)),aes(xintercept = mean), 
             linewidth = 0.7, color = "gray19") +
  labs(x = "Purchases", y = "Frequency") + 
  ggtitle("Distribution of purchases per customer") +
  theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/question_1_1-1.png" width="672" />

``` r
# Compute mean, standard error, and confidence interval for in-app purchases
mean_purchases <- mean(app_user_data$in_app_purchases)
sd_purchases <- sd(app_user_data$in_app_purchases)
n <- nrow(app_user_data)
se_purchases <- sd_purchases / sqrt(n)
df <- n - 1
t_crit <- qt(0.975, df)

# Confidence Interval
ci_lower <- mean_purchases - t_crit * se_purchases
ci_upper <- mean_purchases + t_crit * se_purchases

print(ci_lower)
```

```
## [1] 10.87386
```

``` r
print(ci_upper)
```

```
## [1] 11.36392
```

``` r
# Alternatively: get confidence interval from t.test
t.test(app_user_data$in_app_purchases)$conf.int
```

```
## [1] 10.87386 11.36392
## attr(,"conf.level")
## [1] 0.95
```


The confidence interval for in app purchases is CI =  [10.87;11.36]
Interpretation: If we take 100 samples and calculate the mean and confidence interval for each of them, then the true population mean would be included in 95% of these intervals. In the sample we have, this interval spans from 10.87 to 11.36.


### Question 2


We need to analyze if a new UI feature has an effect on in app purchases. We need to formulate the null hypothesis as the first step. In our case the null hypothesis is that the new UI feature has no effect on the mean in-app purchases, that there is no difference in the mean in-app purchases between two populations. The alternative hypothesis states that the new UI feature has an effect on the mean in-app purchases, meaning that there is a difference in the mean in-app purchases between the two populations.

We first transform the variable exp_group into a factor and inspect the data with descriptive statistics. It can be already seen that the mean of in app-purchases is higher in the treatment group. Next we visualize the data, for this we can use a boxplot. 

To test whether or not this difference is significant, we need to use an independent-means t-test, since we have different customers in each group, meaning that we have collected the data using a between-subjects design (the customers in one condition are independent of the customers in the other condition). The requirements are met:
1) the DV (in-app purchases) is measured on a ratio scale; 2) there are more than 30 observations in each group, so the data is normally distributed according to Central Limit Theorem; 3) the feature was assigned randomly, so the groups are independent; 4) Welch's t-test corrects for unequal variance.

We also then calculate the effect size (Cohen's d). Then we can also visualize the results of the test.




``` r
# Load necessary libraries
library(ggplot2)
library(data.table)
library(lsr)
library(pwr)
library(psych)

#making IV a factor
app_user_data$exp_group <- as.factor(app_user_data$exp_group)

#looking at descriptive statistics
describeBy(app_user_data$in_app_purchases, app_user_data$exp_group) #description of control and treatment groups
```

```
## 
##  Descriptive statistics by group 
## group: 0
##    vars   n  mean   sd median trimmed  mad min   max range skew kurtosis   se
## X1    1 800 10.08 4.84  10.05   10.05 4.75   0 26.21 26.21 0.09    -0.22 0.17
## ------------------------------------------------------------ 
## group: 1
##    vars   n  mean   sd median trimmed  mad min   max range skew kurtosis   se
## X1    1 800 12.15 4.94  12.27   12.12 4.98   0 28.95 28.95  0.1    -0.03 0.17
```

``` r
# Boxplot for In-App Purchases by Experimental Group
ggplot(app_user_data, aes(x = factor(exp_group), y = in_app_purchases, fill = factor(exp_group))) +
  geom_boxplot() +
  labs(title = "Boxplot of In-App Purchases by Experimental Group",
       x = "Group (0 = Control, 1 = Treatment)",
       y = "In-App Purchases (USD)") +
  scale_fill_manual(values = c("lightblue", "lightgreen")) +
  theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/question_2_1-1.png" width="672" />

``` r
# t-test for differences in in-app purchases
t_test_purchases <- t.test(in_app_purchases ~ exp_group, data = app_user_data)
print(t_test_purchases)
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  in_app_purchases by exp_group
## t = -8.4689, df = 1597.3, p-value < 2.2e-16
## alternative hypothesis: true difference in means between group 0 and group 1 is not equal to 0
## 95 percent confidence interval:
##  -2.550210 -1.591065
## sample estimates:
## mean in group 0 mean in group 1 
##        10.08357        12.15421
```

``` r
# Compute Cohen's d for in app purchases
cohen_d_purchases <- cohensD(in_app_purchases ~ exp_group, data = app_user_data)
print(cohen_d_purchases)
```

```
## [1] 0.4234454
```

``` r
#Visualization of test results
ggbetweenstats(
  data = app_user_data,
  plot.type = "box",
  x = exp_group, #2 groups
  y = in_app_purchases ,
  type = "p", #default
  effsize.type = "d", #display effect size (Cohen's d in output)
  messages = FALSE,
  bf.message = FALSE,
  mean.ci = TRUE,
  title = "Average revenue per customer by group"
) 
```

<img src="14-rmdIntro_files/figure-html/question_2_1-2.png" width="672" />

Interpretations: As we can see from the descriptive statistics and the plot for control and treatment groups, the in-app purchases are higher in the group that was exposed to the new UI feature. The t-test showed significant result because the p-value is smaller than 0,05, meaning that we can reject the null hypothesis that there is no difference in the mean of the in-app purchases. The p-value states that the probability of finding a difference of the observed magnitude or higher, if the null hypothesis was in fact true (if there was in fact no difference between the populations). For us it means that the new UI feature in fact has an effect on the average in-app purchases. Also: Since 0 (the hypothetical difference in means from H0) is not included in the interval, it confirms that we can reject the null hypothesis. The Cohen's d effect size value of 0.4234 suggests that the effect of the new UI feature is small to medium.

The plot shows us that in app purchases are higher in the treatment group (Mean = 12.15) compared to the control group (Mean = 10.08). This means that, on average, the in app purchases were 2.07 higher in the treatment group, compared to the control group. An independent-means t-test showed that this difference is significant: t(1597) = 8.47, p < .05 (95% CI = [1.59, 2.55]); effect size is small to medium = 0.42.



Now we can look at the influence of the new UI feature on the time spent in app.

First, we need to formulate the null hypothesis. In this case the null hypothesis is that the new UI feature has no effect on the mean time spent in app, that there is no difference in the mean time spent in app between two populations. The alternative hypothesis states that the new UI feature has an effect on the mean time spent in app, meaning that there is a difference in the mean time in app between the two populations. 

First, we inspect the data with descriptive statistics. It can be already seen that the mean of in app purchases is slightly higher in the treatment group. Next we visualize the data, for this we can use a boxplot. 

We can use the independent means t-test because again the necessary assumptions are met: 1) The dependent variable (time in app) is measured on an ratio scale; 2) We have more than 30 observations per group; 3) The groups are independent.

We also then calculate the effect size (Cohen's d). Then we can also visualize the results of the test.



``` r
describeBy(app_user_data$time_in_app, app_user_data$exp_group)
```

```
## 
##  Descriptive statistics by group 
## group: 0
##    vars   n  mean   sd median trimmed  mad  min   max range  skew kurtosis   se
## X1    1 800 19.99 4.98  19.83   20.02 5.03 4.76 36.45 31.69 -0.04    -0.04 0.18
## ------------------------------------------------------------ 
## group: 1
##    vars   n  mean   sd median trimmed  mad  min   max range skew kurtosis   se
## X1    1 800 21.92 5.02   21.7   21.88 4.81 7.41 39.11  31.7  0.1    -0.05 0.18
```

``` r
# Boxplot for Time Spent in the App
ggplot(app_user_data, aes(x = factor(exp_group), y = time_in_app, fill = factor(exp_group))) +
  geom_boxplot() +
  labs(title = "Boxplot of Time Spent in App by Experimental Group",
       x = "Group (0 = Control, 1 = Treatment)",
       y = "Time Spent in App (minutes)") +
  scale_fill_manual(values = c("lightblue", "lightgreen")) +
  theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-5-1.png" width="672" />

``` r
# t-test for differences in time spent in app
t_test_time_in_app <- t.test(time_in_app ~ exp_group, data = app_user_data)
print(t_test_time_in_app)
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  time_in_app by exp_group
## t = -7.7392, df = 1597.9, p-value = 1.762e-14
## alternative hypothesis: true difference in means between group 0 and group 1 is not equal to 0
## 95 percent confidence interval:
##  -2.426037 -1.444958
## sample estimates:
## mean in group 0 mean in group 1 
##        19.98501        21.92051
```

``` r
# Compute Cohen's d for in app purchases
cohen_d_time_in_app <- cohensD(time_in_app ~ exp_group, data = app_user_data)
print(cohen_d_time_in_app)
```

```
## [1] 0.3869598
```

``` r
#Visualization of test results
ggbetweenstats(
  data = app_user_data,
  plot.type = "box",
  x = exp_group, #2 groups
  y = time_in_app ,
  type = "p", #default
  effsize.type = "d", #display effect size (Cohen's d in output)
  messages = FALSE,
  bf.message = FALSE,
  mean.ci = TRUE,
  title = "Average revenue per customer by group"
) 
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-5-2.png" width="672" />

Interpretations: From the descriptive statistics and the boxplot, we can already see that the mean time spent in app is higher in the treatment group. However, we need to conduct the test to see if this result is significant. The t-test showed significant result because the p-value is smaller than 0,05, meaning that we can reject the null hypothesis that there is no difference in the mean of time spent in app. The p-value states that the probability of finding a difference of the observed magnitude or higher, if the null hypothesis was in fact true (if there was in fact no difference between the populations). For us it means that the new UI feature in fact has an effect on the average time spent in app. Also: Since 0 (the hypothetical difference in means from H0) is not included in the interval, it confirms that we can reject the null hypothesis. The Cohen's d effect size value of 0.387 suggests that the effect of the new UI feature is small to medium.

The plot shows us that time spent in app is higher in the treatment group (Mean = 21.92) compared to the control group (Mean = 19.99). This means that, on average, the time spent in app was 1.93 higher in the treatment group, compared to the control group. An independent-means t-test showed that this difference is significant: t(1598) = 7.74, p < .05 (95% CI = [1.45, 2.43]); effect size is small to medium = 0.387.


### Question 3

To define the number of users that should be placed in two different conditions, pwr.t.test() function should be used. If the goal of the experiment is to simply detect significant difference between the groups, the sample size definition should be based on two-sided test.

Given the effect size = 0.1, significance level = 0.05, and power = 0.8, sample size for each group will be:



``` r
# provide your code here (you can use multiple code chunks per question if you like)

# Power analysis for sample size calculation
sample_size <- pwr.t.test(d = 0.1, sig.level = 0.05, power = 0.8, type = "two.sample")
print(sample_size)
```

```
## 
##      Two-sample t test power calculation 
## 
##               n = 1570.733
##               d = 0.1
##       sig.level = 0.05
##           power = 0.8
##     alternative = two.sided
## 
## NOTE: n is number in *each* group
```

To achieve our desired effect size of 0.1, a significance level of 0.5 and a power of 0.8 we would need to include at least 1571 customers per group in the experiment.

### Assignment 2b

After conducting the experiment described above, you would like to find out whether push notifications can further improve user engagement with your mobile app. You expose a set of users, who were already exposed to the new UI feature, to push notifications and record the time they spend in the app before and after implementing the notifications.

You obtain a new data set with the following variables:

* **userID:** Unique user ID.
* **time_in_app_1:** Average time (in minutes) a user spends in your app per session before receiving push notifications.
* **time_in_app_2:** Average time (in minutes) a user spends in your app per session after receiving push notifications.

Use R and appropriate methods to answer the following question:

4. Did the push notifications lead to a significant increase in the time that users spend in the app compared to before the notifications were implemented ? Conduct an appropriate statistical test to determine if the difference is statistically significant. Please include the effect size (Cohen's d) and the confidence intervals in your report.

### Data analysis

### Load data


``` r
app_user_data_time <- read.table("https://raw.githubusercontent.com/WU-RDS/MA2024/main/user_data_q2.csv", 
                          sep = ",", 
                          header = TRUE) #read in data
head(app_user_data_time)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["userID"],"name":[1],"type":["int"],"align":["right"]},{"label":["time_in_app_1"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["time_in_app_2"],"name":[3],"type":["dbl"],"align":["right"]}],"data":[{"1":"1","2":"21.20","3":"29.96"},{"1":"2","2":"38.42","3":"26.40"},{"1":"3","2":"22.71","3":"27.37"},{"1":"4","2":"25.32","3":"30.71"},{"1":"5","2":"28.25","3":"30.77"},{"1":"6","2":"24.87","3":"25.69"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
str(app_user_data_time)
```

```
## 'data.frame':	417 obs. of  3 variables:
##  $ userID       : int  1 2 3 4 5 6 7 8 9 10 ...
##  $ time_in_app_1: num  21.2 38.4 22.7 25.3 28.2 ...
##  $ time_in_app_2: num  30 26.4 27.4 30.7 30.8 ...
```
### Question 4

We want to examine if push notifications have an effect on average time a user spends in the app. The null hypothesis here is that there is no difference in the mean time spent in the app for the same customers between the presence and absence of push notifications. Because the observations come from the same population of customers (a within-subject design), we refer to the difference in the means for the same population when stating our hypotheses. The alternative hypothesis states that there is a difference between the time in app for the same customers.

We start our analysis with looking at the descriptive statistics and at the plot. Then we conduct a dependent means t-test to see if the difference is significant.



``` r
# provide your code here (you can use multiple code chunks per question if you like)

suppressPackageStartupMessages(library(Rmisc))
library(tidyr)

#Descriptive statistics
psych::describe(app_user_data_time[!is.na(app_user_data_time$time_in_app_2), c("time_in_app_1","time_in_app_2")])
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["vars"],"name":[1],"type":["int"],"align":["right"]},{"label":["n"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["mean"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["sd"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["median"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["trimmed"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["mad"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["min"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["max"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["range"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["skew"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["kurtosis"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[13],"type":["dbl"],"align":["right"]}],"data":[{"1":"1","2":"417","3":"25.20940","4":"5.125614","5":"25.27","6":"25.07236","7":"5.174274","8":"12.25","9":"40.92","10":"28.67","11":"0.24933971","12":"-0.06751811","13":"0.2510024"},{"1":"2","2":"417","3":"27.23995","4":"4.893298","5":"27.33","6":"27.32639","7":"4.892580","8":"13.52","9":"43.95","10":"30.43","11":"-0.06761595","12":"0.01387987","13":"0.2396258"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
#Boxplot

time_data <- app_user_data_time |>
  drop_na(time_in_app_2) |>
  select(time_in_app_1, time_in_app_2) |>
  pivot_longer(
    cols = c(time_in_app_1, time_in_app_2), 
    names_to = "push_notifications", values_to = "time_in_app")

ggplot(time_data, aes(x = push_notifications, y = time_in_app)) + geom_boxplot() +
    geom_jitter(alpha = 0.2, color = "lavenderblush4") + 
    labs(x = "", y = "Time spent in app", title = "Boxplot of time in app by group") + 
    theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/a2_question_4_1-1.png" width="672" />

``` r
# Paired t-test for time spent in app before and after push notifications
t_test_result <- t.test(app_user_data_time$time_in_app_2, app_user_data_time$time_in_app_1, paired = TRUE)
print(t_test_result)
```

```
## 
## 	Paired t-test
## 
## data:  app_user_data_time$time_in_app_2 and app_user_data_time$time_in_app_1
## t = 5.8341, df = 416, p-value = 1.088e-08
## alternative hypothesis: true mean difference is not equal to 0
## 95 percent confidence interval:
##  1.346398 2.714706
## sample estimates:
## mean difference 
##        2.030552
```

``` r
# Compute Cohen's d for paired samples
cohen_d_result <- cohensD(app_user_data_time$time_in_app_2, app_user_data_time$time_in_app_1, method = "paired")
print(cohen_d_result)
```

```
## [1] 0.2856969
```

``` r
#Visualization of the test
ggwithinstats(
  data = time_data,
  x = push_notifications,
  y = time_in_app,
  path.point = FALSE,
  path.mean = TRUE,
  title = "Time on site with or without push notifications",
  messages = FALSE,
  bf.message = FALSE,
  mean.ci = TRUE,
  effsize.type = "d" # display effect size (Cohen's d in output)
)
```

<img src="14-rmdIntro_files/figure-html/a2_question_4_1-2.png" width="672" />

Interpretation: It appears that there is a difference in the means from the descriptive statistics and the plots. To test whether it is significant, we need to run a t-test. This time we need a different version of the t-test because the same customers are observed for the app with and without push notifications (the same customers are shown both versions of the app). This means that we need a dependent means t-test, or paired samples t-test. The other assumptions are identical to the independent-means t-test. 

The p-value is lower than the significance level of 5% (p < .05), which means that we can reject the null hypothesis that there is no difference in the mean time in app between absence and presence of push notifications. The confidence interval confirms the conclusion to reject the null hypothesis since 0 is not contained in the range of plausible values.

The Cohen's d effect size of 0.2857 shows us that the effect is rather small.

The results of the experiment show that, on average, the same users used the app on average 2.03 minutes longer when it included the push notifications (Mean = 27.24) compared to the app without the push notifications (Mean = 25.21). This difference was significant: t(416) = 5.83, p < .05 (95% CI = [1.35, 2.72]); effect size is small = 0.29.

This means that it makes sense to include push notifications to the app as standard practice.




### Assignment 2c

As a marketing analyst for an online retailer, you're tasked with evaluating how different levels of GDPR-compliant behavioral targeting affect purchase behavior. Given the restrictions imposed by GDPR on using personal data, the retailer conducts an experiment with three levels of targeting:

1. No targeting: Users receive no targeted ads (default ad experience).
2. Segment-based targeting: Ads are tailored using aggregate-level data (e.g., based on product categories users browse, not their personal data).
3. Individual personalized behavioral targeting: Ads are personalized based on the specific behavior of individual users (using compliant first-party data).

You obtain a data set with the following variables:

* **customerID:** Unique customer ID.
* **revenue:** Total revenue generated by the customer during the experiment (in USD).
* **satisfaction:** Customer satisfaction score from a post-purchase survey (measured in 11 categories from 0 [very dissatisfied] to 10 [very satisfied]).
* **targeting:** Type of targeting the customer was exposed to (1 = no targeting, 2 = segment-based targeting, 3 = personalized behavioral targeting).

Use R and appropriate methods to answer the following question:

5. Are there significant differences in revenue between the three targeting strategies? 
6. Did the targeting strategy significantly influence customer satisfaction? 

### Data analysis

### Load data


``` r
targeting_data <- read.table("https://raw.githubusercontent.com/WU-RDS/MA2024/main/user_targeting_data.csv", 
                          sep = ",", 
                          header = TRUE) #read in data
head(targeting_data)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["customerID"],"name":[1],"type":["int"],"align":["right"]},{"label":["targeting"],"name":[2],"type":["chr"],"align":["left"]},{"label":["revenue"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["satisfaction"],"name":[4],"type":["int"],"align":["right"]}],"data":[{"1":"1","2":"Personalized Targeting","3":"217.03","4":"6"},{"1":"2","2":"Personalized Targeting","3":"181.27","4":"7"},{"1":"3","2":"Personalized Targeting","3":"182.09","4":"1"},{"1":"4","2":"Segment-Based Targeting","3":"180.97","4":"10"},{"1":"5","2":"Personalized Targeting","3":"142.71","4":"5"},{"1":"6","2":"Segment-Based Targeting","3":"115.86","4":"0"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
str(targeting_data)
```

```
## 'data.frame':	300 obs. of  4 variables:
##  $ customerID  : int  1 2 3 4 5 6 7 8 9 10 ...
##  $ targeting   : chr  "Personalized Targeting" "Personalized Targeting" "Personalized Targeting" "Segment-Based Targeting" ...
##  $ revenue     : num  217 181 182 181 143 ...
##  $ satisfaction: int  6 7 1 10 5 0 10 9 5 4 ...
```

### Question 5

To answer the question of whether the type of targeting has an effect on revenue, we need to formulate the null hypothesis first. In this case, the null hypothesis is that the average level of sales is equal for all three targeting types. The alternative hypothesis states that mean revenue is not equal among three targeting types. 

The appropriate test for such a hypothesis is one-way ANOVA since we have a metric-scaled dependent variable and a categorical independent variable with more than two levels. First, we need to recode the independent variable into factor. Next we take a look at descriptive statistics for the data and create appropriate plots. 

Before we move to the formal test, we need to see if a series of assumptions are met, namely: 1) Independence of observations; 2) Distributional assumptions; 3) Homogeneity of variances.

Due to the fact that there are more than 30 observations in each group we can rely on the Central Limit Theorem to satisfy the distributional assumptions. We can still test this assumption using Shapiro-Wilk normality test and Q-Q plots. Homogeneity of variances can be checked with Levene’s test.

After checking that the assumptions are met, we can proceed with ANOVA and show also the plot for the test. Next we will briefly inspect the residuals of the ANOVA to see if the assumptions of the test really are justified.

The ANOVA result only tells us that the means of the three groups are not equal, but it does not tell us anything about which pairs of means are unequal. To find this out we need to conduct a post-hoc test.



``` r
# provide your code here (you can use multiple code chunks per question if you like)


targeting_data$targeting <- factor(targeting_data$targeting, 
                                   levels = c("Personalized Targeting", 
                                              "Segment-Based Targeting", 
                                              "No Targeting"))

#Descriptive statistics
describeBy(targeting_data$revenue, targeting_data$targeting)
```

```
## 
##  Descriptive statistics by group 
## group: Personalized Targeting
##    vars  n   mean    sd median trimmed   mad   min    max  range  skew kurtosis
## X1    1 90 158.33 27.45 159.56  159.58 28.32 79.61 217.03 137.42 -0.38    -0.33
##      se
## X1 2.89
## ------------------------------------------------------------ 
## group: Segment-Based Targeting
##    vars  n   mean    sd median trimmed   mad   min    max  range skew kurtosis
## X1    1 98 135.43 34.72 135.43  135.17 40.54 40.68 221.25 180.57 0.03    -0.29
##      se
## X1 3.51
## ------------------------------------------------------------ 
## group: No Targeting
##    vars   n   mean    sd median trimmed   mad   min    max  range skew kurtosis
## X1    1 112 117.97 30.62 121.21  117.98 29.01 28.87 193.63 164.76 -0.1    -0.05
##      se
## X1 2.89
```

``` r
#Visual inspection of data

ggplot(targeting_data,aes(x = targeting, y = revenue)) + 
  geom_boxplot() +
  geom_jitter(colour="red", alpha = 0.1) +
  theme_bw() +
  labs(x = "Targeting", y = "Revenue")+
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5,color = "#666666")) 
```

<img src="14-rmdIntro_files/figure-html/a2_question_5_1-1.png" width="672" />

``` r
#Distributional assumptions - checking for normal distributions

#test for normal distribution of variables - Shapiro-Wilk test
by(targeting_data$revenue, targeting_data$targeting, shapiro.test)
```

```
## targeting_data$targeting: Personalized Targeting
## 
## 	Shapiro-Wilk normality test
## 
## data:  dd[x, ]
## W = 0.98123, p-value = 0.2199
## 
## ------------------------------------------------------------ 
## targeting_data$targeting: Segment-Based Targeting
## 
## 	Shapiro-Wilk normality test
## 
## data:  dd[x, ]
## W = 0.98853, p-value = 0.5629
## 
## ------------------------------------------------------------ 
## targeting_data$targeting: No Targeting
## 
## 	Shapiro-Wilk normality test
## 
## data:  dd[x, ]
## W = 0.99486, p-value = 0.9555
```

``` r
qqnorm(targeting_data[targeting_data$targeting == "Personalized Targeting", ]$revenue) 
qqline(targeting_data[targeting_data$targeting == "Personalized Targeting", ]$revenue)
```

<img src="14-rmdIntro_files/figure-html/a2_question_5_1-2.png" width="672" />

``` r
qqnorm(targeting_data[targeting_data$targeting == "Segment-Based Targeting", ]$revenue) 
qqline(targeting_data[targeting_data$targeting == "Segment-Based Targeting", ]$revenue)
```

<img src="14-rmdIntro_files/figure-html/a2_question_5_1-3.png" width="672" />

``` r
qqnorm(targeting_data[targeting_data$targeting == "No Targeting", ]$revenue) 
qqline(targeting_data[targeting_data$targeting == "No Targeting", ]$revenue)
```

<img src="14-rmdIntro_files/figure-html/a2_question_5_1-4.png" width="672" />

``` r
#Homogeneity of variance

library(car)
```

```
## Loading required package: carData
```

``` r
leveneTest(revenue ~ targeting, data = targeting_data, center = mean)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["Df"],"name":[1],"type":["int"],"align":["right"]},{"label":["F value"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["Pr(>F)"],"name":[3],"type":["dbl"],"align":["right"]}],"data":[{"1":"2","2":"2.617276","3":"0.07468479"},{"1":"297","2":"NA","3":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
# Perform ANOVA for revenue across targeting strategies
anova_result <- aov(revenue ~ targeting, data = targeting_data)
summary(anova_result)
```

```
##              Df Sum Sq Mean Sq F value Pr(>F)    
## targeting     2  81290   40645    41.9 <2e-16 ***
## Residuals   297 288110     970                   
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

``` r
#Visualize the test
library(ggstatsplot)
ggbetweenstats(
  data = targeting_data,
  x = targeting,
  y = revenue,
  plot.type = "box",
  pairwise.comparisons = TRUE,
  pairwise.annotation = "p.value",
  p.adjust.method = "bonferroni",
  effsize.type = "eta", #if var.equal = FALSE, returns partial eta^2 
  var.equal = TRUE,
  mean.plotting = TRUE, 
  mean.ci = TRUE, 
  mean.label.size = 2.5,
  type = "parametric", 
  k = 3, 
  outlier.label.color = "darkgreen", 
  title = "Comparison of revenues between groups",
  xlab = "Experimental group", 
  ylab = "Revenue", 
  messages = FALSE,
  bf.message = FALSE,
)
```

<img src="14-rmdIntro_files/figure-html/a2_question_5_1-5.png" width="672" />

``` r
#Inspect the residuals
plot(anova_result,1)
```

<img src="14-rmdIntro_files/figure-html/a2_question_5_1-6.png" width="672" />

``` r
plot(anova_result,2)
```

<img src="14-rmdIntro_files/figure-html/a2_question_5_1-7.png" width="672" />

``` r
shapiro.test(resid(anova_result))
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  resid(anova_result)
## W = 0.99499, p-value = 0.4388
```

``` r
#Effect size

summary(anova_result)[[1]]$"Sum Sq"[1]/(summary(anova_result)[[1]]$"Sum Sq"[1] +
    summary(anova_result)[[1]]$"Sum Sq"[2])
```

```
## [1] 0.2200593
```

``` r
# Tukey's post-hoc test for pairwise comparisons
tukey_result <- TukeyHSD(anova_result)
print(tukey_result)
```

```
##   Tukey multiple comparisons of means
##     95% family-wise confidence level
## 
## Fit: aov(formula = revenue ~ targeting, data = targeting_data)
## 
## $targeting
##                                                     diff       lwr       upr
## Segment-Based Targeting-Personalized Targeting -22.89817 -33.60926 -12.18709
## No Targeting-Personalized Targeting            -40.35672 -50.74238 -29.97106
## No Targeting-Segment-Based Targeting           -17.45855 -27.60645  -7.31064
##                                                    p adj
## Segment-Based Targeting-Personalized Targeting 0.0000025
## No Targeting-Personalized Targeting            0.0000000
## No Targeting-Segment-Based Targeting           0.0001909
```

``` r
plot(tukey_result)
```

<img src="14-rmdIntro_files/figure-html/a2_question_5_1-8.png" width="672" />

``` r
# Boxplot for Revenue by Targeting Strategy
ggplot(targeting_data, aes(x = targeting, y = revenue, fill = targeting)) +
  geom_boxplot() +
  labs(title = "Boxplot of Revenue by Targeting Strategy",
       x = "Targeting Strategy",
       y = "Revenue (USD)") +
  scale_fill_manual(values = c("lightblue", "lightgreen", "lightcoral")) +
  theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/a2_question_5_1-9.png" width="672" />

Both the summary statistics and the plot show that the means are not equal among the three groups. Especially the difference between personalized targeting and no targeting seem to be quite high. 

First we check if the assumptions of ANOVA are met. The insignificant result of Shapiro-Wilk test shows that we cannot reject the null hypothesis that the residuals are normally distributed. The same we can see from the Q-Q plots.

The null hypothesis of Levene's test is that the variances are equal, with the alternative hypothesis being that the variances are not all equal. The insignificant result of this test demonstrates that variances are equal, so this assumption is also met. 

The ANOVA showed a p-value lower that 0.05, which means we can reject the null hypothesis that the mean revenue is the same for all three groups with different types of targeting. 

The Q-Q plots show us that the residuals are equally distributed, which is confirmed also by the insignificant result of the Shapiro-Wilk test. The null hypothesis for this test is that the distribution of residuals is normal. 

According to the test, the effect of different types of targeting on revenues was detected: F = 41.9, p < 0.05, with the effect size which is rather small η2 = 0.22. 

The Tukey's HSD test compares pairwise all three groups and we can see from the result that we can reject null hypothesis in all three case, which means that the revenue means are all significantly different from each other. It is clearly visible that none of the CIs cross the 0 bound, which further indicates that all differences in means are statistically significantly different from 0.

From a reporting standpoint we can say that revenue is higher when using personalized targeting. This means that personalized targeting helps us to increase sales and should thus be the preferred choice.

### Question 6

For this question we want to examine whether the customer satisfaction is significantly different for the groups with three different types of targeting. Because we are dealing with data on an ordinal scale, we cannot use ANOVA for this analysis. The non-parametric counterpart is the Kruskal-Wallis test, which tests for differences in medians between more than two groups. Hence, the null hypothesis is that the medians are equal in each group, and the alternative hypothesis is that there is a difference in medians.

First, we inspect the descriptive statistics and the plot. The only assumption for Kruskal-Wallis test is that the DV has to be at least ordinal scaled, and this assumption is met. 



``` r
# provide your code here (you can use multiple code chunks per question if you like)

#Descriptive statistics by for customer satisfaction by group
describeBy(targeting_data$satisfaction, targeting_data$targeting)
```

```
## 
##  Descriptive statistics by group 
## group: Personalized Targeting
##    vars  n mean   sd median trimmed  mad min max range  skew kurtosis   se
## X1    1 90 5.23 3.01      6    5.32 2.97   0  10    10 -0.19    -1.08 0.32
## ------------------------------------------------------------ 
## group: Segment-Based Targeting
##    vars  n mean   sd median trimmed  mad min max range  skew kurtosis   se
## X1    1 98    5 3.37      5       5 4.45   0  10    10 -0.02    -1.47 0.34
## ------------------------------------------------------------ 
## group: No Targeting
##    vars   n mean   sd median trimmed  mad min max range skew kurtosis   se
## X1    1 112 4.63 2.89      5    4.52 4.45   0  10    10 0.15    -1.14 0.27
```

``` r
# Boxplot for Satisfaction by Targeting Strategy
ggplot(targeting_data, aes(x = targeting, y = satisfaction, fill = targeting)) +
  geom_boxplot() +
  labs(title = "Boxplot of Customer Satisfaction by Targeting Strategy",
       x = "Targeting Strategy",
       y = "Satisfaction Score") +
  scale_fill_manual(values = c("lightblue", "lightgreen", "lightcoral")) +
  theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/question_6_1-1.png" width="672" />

``` r
# Kruskal-Wallis test for satisfaction across targeting strategies
kruskal_result <- kruskal.test(satisfaction ~ targeting, data = targeting_data)
print(kruskal_result)
```

```
## 
## 	Kruskal-Wallis rank sum test
## 
## data:  satisfaction by targeting
## Kruskal-Wallis chi-squared = 2.0659, df = 2, p-value = 0.356
```

``` r
ggbetweenstats(
  data = targeting_data,
  plot.type = "box",
  x = targeting, #3 groups
  y = satisfaction,
  type = "nonparametric",
  pairwise.comparisons = TRUE,
  pairwise.annotation = "p.value",
  p.adjust.method = "bonferroni",
  messages = FALSE,
  title = "Median satisfaction for different targeting groups"
)
```

<img src="14-rmdIntro_files/figure-html/question_6_1-2.png" width="672" />

We can see from the descriptive statistics and from the boxplot that the median customer satisfaction for customers with personalized targeting is slightly higher (=6) than for other two targeting types (=5). 

The p-value of Kruskal-Wallis test is higher than 0.05, which indicates that we cannot reject the null hypothesis. This means that medians of customer satisfaction are not different among the targeting groups. 


### Assignment 2d

As a digital marketing manager, you want to evaluate the effectiveness of a new email subscription pop-up feature designed to increase newsletter signups. You run an A/B test where some visitors to your website see the new subscription pop-up, while others experience the regular sign-up option without a pop-up. Your goal is to compare the conversion rate (whether visitors signed up for the newsletter) between the control group (no pop-up) and the treatment group (pop-up).

You obtain a new data set with the following variables:

* **customerID:** Unique customer ID.
* **conversion:** Indicator variable for whether a visitor signed up for the newsletter (0 = no, 1 = yes).
* **exp_group:** Experimental group (0 = control, no pop-up; 1 = treatment, pop-up).

7. Did the new email subscription pop-up have a significant effect on the conversion rate? 

### Data analysis

### Load data


``` r
conversion_data <- read.table("https://raw.githubusercontent.com/WU-RDS/MA2024/main/conversion_data.csv", 
                          sep = ",", 
                          header = TRUE) #read in data
head(conversion_data)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["customerID"],"name":[1],"type":["int"],"align":["right"]},{"label":["exp_group"],"name":[2],"type":["chr"],"align":["left"]},{"label":["conversion"],"name":[3],"type":["int"],"align":["right"]}],"data":[{"1":"1","2":"Control","3":"0"},{"1":"2","2":"Treatment","3":"0"},{"1":"3","2":"Treatment","3":"0"},{"1":"4","2":"Control","3":"0"},{"1":"5","2":"Control","3":"0"},{"1":"6","2":"Control","3":"0"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
str(conversion_data)
```

```
## 'data.frame':	487 obs. of  3 variables:
##  $ customerID: int  1 2 3 4 5 6 7 8 9 10 ...
##  $ exp_group : chr  "Control" "Treatment" "Treatment" "Control" ...
##  $ conversion: int  0 0 0 0 0 0 1 1 1 1 ...
```
### Question 7

To find out if a new email subscription pop-up feature has an effect on the conversion rate, we can use a test for proportions. To test for the equality of proportions (and therefore no difference between them) we can use a Chi-squared test.

Our null hypothesis in this case states that the proportions of conversion are the same for groups with and without the subscription pop-up feature. Our alternative hypothesis states that these proportions are unequal. First, we have to recode the relevant variables into factors. Then we create a contingency table and a plot to take a look at the proportions of conversion rates in the control and treatment groups. We can then conduct the formal Chi-squared test to see if the difference in conversion rates is significant.


``` r
# provide your code here (you can use multiple code chunks per question if you like)

#Recoding variables into factors
conversion_data$exp_group <- factor(conversion_data$exp_group, 
                                   levels = c("Control", 
                                              "Treatment"))

conversion_data$conversion <- factor(conversion_data$conversion, levels = c(0,1), labels = c("no", "yes"))

# Create a contingency table for conversions
conversion_table <- table(conversion_data$exp_group, conversion_data$conversion)
print(conversion_table)
```

```
##            
##              no yes
##   Control   206  47
##   Treatment 165  69
```

``` r
prop.table(conversion_table, 1)
```

```
##            
##                    no       yes
##   Control   0.8142292 0.1857708
##   Treatment 0.7051282 0.2948718
```

``` r
#Visualization
rel_freq_table <- as.data.frame(prop.table(table(conversion_data$exp_group, conversion_data$conversion), 1))
names(rel_freq_table) <- c("exp_group", "conversion","freq") # changing names of the columns
rel_freq_table
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["exp_group"],"name":[1],"type":["fct"],"align":["left"]},{"label":["conversion"],"name":[2],"type":["fct"],"align":["left"]},{"label":["freq"],"name":[3],"type":["dbl"],"align":["right"]}],"data":[{"1":"Control","2":"no","3":"0.8142292"},{"1":"Treatment","2":"no","3":"0.7051282"},{"1":"Control","2":"yes","3":"0.1857708"},{"1":"Treatment","2":"yes","3":"0.2948718"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
ggplot(rel_freq_table, aes(x = exp_group, y = freq, fill = conversion)) + #plot data
  geom_col(width = .7) + #position
  geom_text(aes(label = paste0(round(freq*100,0),"%")), position = position_stack(vjust = 0.5), size = 4) + #add percentages
  ylab("Proportion of conversions") + xlab("Exp group") + # specify axis labels
  theme_bw()
```

<img src="14-rmdIntro_files/figure-html/question_7_1-1.png" width="672" />

``` r
# Proportion test to compare conversion rates between groups
prop_test_result <- prop.test(conversion_table)
print(prop_test_result)
```

```
## 
## 	2-sample test for equality of proportions with continuity correction
## 
## data:  conversion_table
## X-squared = 7.3844, df = 1, p-value = 0.006579
## alternative hypothesis: two.sided
## 95 percent confidence interval:
##  0.02942325 0.18877884
## sample estimates:
##    prop 1    prop 2 
## 0.8142292 0.7051282
```

``` r
table <- table(conversion_data$conversion,conversion_data$exp_group)
chisq.test(table, correct = TRUE)
```

```
## 
## 	Pearson's Chi-squared test with Yates' continuity correction
## 
## data:  table
## X-squared = 7.3844, df = 1, p-value = 0.006579
```

``` r
#effect size
test_stat <- chisq.test(conversion_table, correct = FALSE)$statistic
n <- nrow(conversion_data)
phi1 <- sqrt(test_stat/n)
phi1
```

```
## X-squared 
##  0.127962
```

We can see in the contingency table and in the plot that the conversion rate in the treatment group of 29% is higher than the conversion rate of 19% in the control group. To see if this difference is significant, we have to conduct the formal chi-squared test. It can be clearly seen from the test that p-value is lower than 0.05, so the result of the treatment on the conversion rate is statistically significant. We also calculated the effect size Phi: it is pretty small 0.128.

From the managerial perspective, it makes sense to include the new email subscription pop-up feature since it significantly increases the coversion rate, although the effect size is rather small.


<!--

## Assignment 1

We'll use the music data set from the last session as the basis for the assignment. 

Please use R to solve the tasks. When you finished the assignment, click on the "Knit to HTML" in the RStudio menu. This will create an html document in the folder in which the assignment1.Rmd file is stored. Open this file in your browser to check if everything is correct. If you are happy with the output, pleas submit the .html-file via the assignment on Learn\@WU using the following file name: "assignment1_studendID_lastname.html".

We'll first load the data that is needed for the assignment.


``` r
library(dplyr)
library(psych)
library(ggplot2)

music_data <- read.csv2("https://raw.githubusercontent.com/WU-RDS/RMA2022/main/data/music_data_fin.csv",
                        sep = ";", header = TRUE, dec = ",")
str(music_data)
```

```
## 'data.frame':	66796 obs. of  31 variables:
##  $ isrc                       : chr  "BRRGE1603547" "USUM71808193" "ES5701800181" "ITRSE2000050" ...
##  $ artist_id                  : int  3679 5239 776407 433730 526471 1939 210184 212546 4938 119985 ...
##  $ streams                    : num  11944813 8934097 38835 46766 2930573 ...
##  $ weeks_in_charts            : int  141 51 1 1 7 226 13 1 64 7 ...
##  $ n_regions                  : int  1 21 1 1 4 8 1 1 5 1 ...
##  $ danceability               : num  50.9 35.3 68.3 70.4 84.2 35.2 73 55.6 71.9 34.6 ...
##  $ energy                     : num  80.3 75.5 67.6 56.8 57.8 91.1 69.6 24.5 85 43.3 ...
##  $ speechiness                : num  4 73.3 14.7 26.8 13.8 7.47 35.5 3.05 3.17 6.5 ...
##  $ instrumentalness           : num  0.05 0 0 0.000253 0 0 0 0 0.02 0 ...
##  $ liveness                   : num  46.3 39 7.26 8.91 22.8 9.95 32.1 9.21 11.4 10.1 ...
##  $ valence                    : num  65.1 43.7 43.4 49.5 19 23.6 58.4 27.6 36.7 76.8 ...
##  $ tempo                      : num  166 191.2 99 91 74.5 ...
##  $ song_length                : num  3.12 3.23 3.02 3.45 3.95 ...
##  $ song_age                   : num  228.3 144.3 112.3 50.7 58.3 ...
##  $ explicit                   : int  0 0 0 0 0 0 0 0 1 0 ...
##  $ n_playlists                : int  450 768 48 6 475 20591 6 105 547 688 ...
##  $ sp_popularity              : int  51 54 32 44 52 81 44 8 59 68 ...
##  $ youtube_views              : num  1.45e+08 1.32e+07 6.12e+06 0.00 0.00 ...
##  $ tiktok_counts              : int  9740 358700 0 13 515 67300 0 0 653 3807 ...
##  $ ins_followers_artist       : int  29613108 3693566 623778 81601 11962358 1169284 1948850 39381 9751080 343 ...
##  $ monthly_listeners_artist   : int  4133393 18367363 888273 143761 15551876 16224250 2683086 1318874 4828847 3088232 ...
##  $ playlist_total_reach_artist: int  24286416 143384531 4846378 156521 90841884 80408253 7332603 24302331 8914977 8885252 ...
##  $ sp_fans_artist             : int  3308630 465412 23846 1294 380204 1651866 214001 10742 435457 1897685 ...
##  $ shazam_counts              : int  73100 588550 0 0 55482 5281161 0 0 39055 0 ...
##  $ artistName                 : chr  "Luan Santana" "Alessia Cara" "Ana Guerra" "Claver Gold feat. Murubutu" ...
##  $ trackName                  : chr  "Eu, Você, O Mar e Ela" "Growing Pains" "El Remedio" "Ulisse" ...
##  $ release_date               : chr  "2016-06-20" "2018-06-14" "2018-04-26" "2020-03-31" ...
##  $ genre                      : chr  "other" "Pop" "Pop" "HipHop/Rap" ...
##  $ label                      : chr  "Independent" "Universal Music" "Universal Music" "Independent" ...
##  $ top10                      : int  1 0 0 0 0 1 0 0 0 0 ...
##  $ expert_rating              : chr  "excellent" "good" "good" "poor" ...
```

``` r
head(music_data) 
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["isrc"],"name":[1],"type":["chr"],"align":["left"]},{"label":["artist_id"],"name":[2],"type":["int"],"align":["right"]},{"label":["streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["weeks_in_charts"],"name":[4],"type":["int"],"align":["right"]},{"label":["n_regions"],"name":[5],"type":["int"],"align":["right"]},{"label":["danceability"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["energy"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["speechiness"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["instrumentalness"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["liveness"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["valence"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["tempo"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["song_length"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["song_age"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["explicit"],"name":[15],"type":["int"],"align":["right"]},{"label":["n_playlists"],"name":[16],"type":["int"],"align":["right"]},{"label":["sp_popularity"],"name":[17],"type":["int"],"align":["right"]},{"label":["youtube_views"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["tiktok_counts"],"name":[19],"type":["int"],"align":["right"]},{"label":["ins_followers_artist"],"name":[20],"type":["int"],"align":["right"]},{"label":["monthly_listeners_artist"],"name":[21],"type":["int"],"align":["right"]},{"label":["playlist_total_reach_artist"],"name":[22],"type":["int"],"align":["right"]},{"label":["sp_fans_artist"],"name":[23],"type":["int"],"align":["right"]},{"label":["shazam_counts"],"name":[24],"type":["int"],"align":["right"]},{"label":["artistName"],"name":[25],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[26],"type":["chr"],"align":["left"]},{"label":["release_date"],"name":[27],"type":["chr"],"align":["left"]},{"label":["genre"],"name":[28],"type":["chr"],"align":["left"]},{"label":["label"],"name":[29],"type":["chr"],"align":["left"]},{"label":["top10"],"name":[30],"type":["int"],"align":["right"]},{"label":["expert_rating"],"name":[31],"type":["chr"],"align":["left"]}],"data":[{"1":"BRRGE1603547","2":"3679","3":"11944813","4":"141","5":"1","6":"50.9","7":"80.3","8":"4.00","9":"0.050000","10":"46.30","11":"65.1","12":"166.018","13":"3.118650","14":"228.28571","15":"0","16":"450","17":"51","18":"145030723","19":"9740","20":"29613108","21":"4133393","22":"24286416","23":"3308630","24":"73100","25":"Luan Santana","26":"Eu, Você, O Mar e Ela","27":"2016-06-20","28":"other","29":"Independent","30":"1","31":"excellent"},{"1":"USUM71808193","2":"5239","3":"8934097","4":"51","5":"21","6":"35.3","7":"75.5","8":"73.30","9":"0.000000","10":"39.00","11":"43.7","12":"191.153","13":"3.228000","14":"144.28571","15":"0","16":"768","17":"54","18":"13188411","19":"358700","20":"3693566","21":"18367363","22":"143384531","23":"465412","24":"588550","25":"Alessia Cara","26":"Growing Pains","27":"2018-06-14","28":"Pop","29":"Universal Music","30":"0","31":"good"},{"1":"ES5701800181","2":"776407","3":"38835","4":"1","5":"1","6":"68.3","7":"67.6","8":"14.70","9":"0.000000","10":"7.26","11":"43.4","12":"98.992","13":"3.015550","14":"112.28571","15":"0","16":"48","17":"32","18":"6116639","19":"0","20":"623778","21":"888273","22":"4846378","23":"23846","24":"0","25":"Ana Guerra","26":"El Remedio","27":"2018-04-26","28":"Pop","29":"Universal Music","30":"0","31":"good"},{"1":"ITRSE2000050","2":"433730","3":"46766","4":"1","5":"1","6":"70.4","7":"56.8","8":"26.80","9":"0.000253","10":"8.91","11":"49.5","12":"91.007","13":"3.453417","14":"50.71429","15":"0","16":"6","17":"44","18":"0","19":"13","20":"81601","21":"143761","22":"156521","23":"1294","24":"0","25":"Claver Gold feat. Murubutu","26":"Ulisse","27":"2020-03-31","28":"HipHop/Rap","29":"Independent","30":"0","31":"poor"},{"1":"QZJ842000061","2":"526471","3":"2930573","4":"7","5":"4","6":"84.2","7":"57.8","8":"13.80","9":"0.000000","10":"22.80","11":"19.0","12":"74.496","13":"3.946317","14":"58.28571","15":"0","16":"475","17":"52","18":"0","19":"515","20":"11962358","21":"15551876","22":"90841884","23":"380204","24":"55482","25":"Trippie Redd feat. Young Thug","26":"YELL OH","27":"2020-02-07","28":"HipHop/Rap","29":"Universal Music","30":"0","31":"excellent"},{"1":"USIR20400274","2":"1939","3":"72199738","4":"226","5":"8","6":"35.2","7":"91.1","8":"7.47","9":"0.000000","10":"9.95","11":"23.6","12":"148.033","13":"3.716217","14":"876.71429","15":"0","16":"20591","17":"81","18":"20216069","19":"67300","20":"1169284","21":"16224250","22":"80408253","23":"1651866","24":"5281161","25":"The Killers","26":"Mr. Brightside","27":"2004-06-07","28":"Rock","29":"Universal Music","30":"1","31":"fair"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

You should then convert the variables to the correct types:  
  

``` r
music_data <-  music_data %>% 
  mutate(label = as.factor(label), # convert label and genre variables to factor with values as labels
         genre = as.factor(genre)) %>% as.data.frame()
```

### Q1

Create a new data frame containing the most successful songs of the artist "Billie Eilish" by filtering the original data set by the artist "Billie Eilish" and order the observations in an descending order.  


``` r
billie_eilish <- music_data %>% 
  select(artistName,trackName,streams) %>% #select relevant variables
  filter(artistName == "Billie Eilish") %>% #filter by artist name
  arrange(desc(streams)) #arrange by number of streams (in descending order)
billie_eilish #print output
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["artistName"],"name":[1],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[2],"type":["chr"],"align":["left"]},{"label":["streams"],"name":[3],"type":["dbl"],"align":["right"]}],"data":[{"1":"Billie Eilish","2":"bad guy","3":"1459149566"},{"1":"Billie Eilish","2":"everything i wanted","3":"594991676"},{"1":"Billie Eilish","2":"bury a friend","3":"298707880"},{"1":"Billie Eilish","2":"Therefore I Am","3":"269394372"},{"1":"Billie Eilish","2":"ocean eyes","3":"228294513"},{"1":"Billie Eilish","2":"wish you were gay","3":"199352351"},{"1":"Billie Eilish","2":"bury a friend","3":"171699755"},{"1":"Billie Eilish","2":"idontwannabeyouanymore","3":"134877101"},{"1":"Billie Eilish","2":"i love you","3":"128265348"},{"1":"Billie Eilish","2":"No Time To Die","3":"121455669"},{"1":"Billie Eilish","2":"bellyache","3":"114384636"},{"1":"Billie Eilish","2":"you should see me in a crown","3":"109741912"},{"1":"Billie Eilish","2":"all the good girls go to hell","3":"105095062"},{"1":"Billie Eilish","2":"my strange addiction","3":"81688070"},{"1":"Billie Eilish","2":"my future","3":"77747843"},{"1":"Billie Eilish","2":"xanny","3":"75431724"},{"1":"Billie Eilish","2":"you should see me in a crown","3":"55975472"},{"1":"Billie Eilish","2":"idontwannabeyouanymore","3":"48966600"},{"1":"Billie Eilish","2":"wish you were gay","3":"46356201"},{"1":"Billie Eilish","2":"come out and play","3":"42644497"},{"1":"Billie Eilish","2":"ilomilo","3":"39796217"},{"1":"Billie Eilish","2":"listen before i go","3":"36231682"},{"1":"Billie Eilish","2":"8","3":"28632208"},{"1":"Billie Eilish","2":"ocean eyes","3":"27799975"},{"1":"Billie Eilish","2":"my boy","3":"20712656"},{"1":"Billie Eilish","2":"goodbye","3":"16134884"},{"1":"Billie Eilish","2":"WHEN I WAS OLDER - Music Inspired By The Film ROMA","3":"6951014"},{"1":"Billie Eilish","2":"bitches broken hearts","3":"5117114"},{"1":"Billie Eilish","2":"my boy","3":"2770987"},{"1":"Billie Eilish","2":"COPYCAT","3":"2662176"},{"1":"Billie Eilish","2":"bitches broken hearts","3":"2628953"},{"1":"Billie Eilish","2":"COPYCAT","3":"1494523"},{"1":"Billie Eilish","2":"watch","3":"889256"},{"1":"Billie Eilish","2":"watch","3":"98178"},{"1":"Billie Eilish","2":"watch","3":"63376"},{"1":"Billie Eilish","2":"watch","3":"20764"},{"1":"Billie Eilish","2":"idontwannabeyouanymore","3":"12768"},{"1":"Billie Eilish","2":"watch","3":"11480"},{"1":"Billie Eilish","2":"watch","3":"2929"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

### Q2

Create a new data frame containing the 100 overall most successful songs in the data frame and order them descending by the number of streams.

Here you could simply arrange the whole data set by streams and then take 100 first rows using the `head()`-function:
  

``` r
top_100 <- music_data %>% 
  select(artistName,trackName,streams) %>% #select relevant variables
  arrange(desc(streams)) %>% #arrange by number of streams (in descending order)
  head(100) #select first 100 observations
top_100
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["artistName"],"name":[1],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[2],"type":["chr"],"align":["left"]},{"label":["streams"],"name":[3],"type":["dbl"],"align":["right"]}],"data":[{"1":"Ed Sheeran","2":"Shape of You","3":"2165692479"},{"1":"Tones and I","2":"Dance Monkey","3":"1909947000"},{"1":"Billie Eilish","2":"bad guy","3":"1459149566"},{"1":"Lewis Capaldi","2":"Someone You Loved","3":"1419867299"},{"1":"Shawn Mendes feat. Camila Cabello","2":"Señorita","3":"1156206588"},{"1":"XXXTENTACION","2":"SAD!","3":"1103693478"},{"1":"Lady Gaga feat. Bradley Cooper","2":"Shallow","3":"1095593020"},{"1":"Ed Sheeran","2":"Perfect","3":"1045189446"},{"1":"Marshmello feat. Bastille","2":"Happier","3":"1040018252"},{"1":"Post Malone","2":"Circles","3":"1033994547"},{"1":"Travis Scott","2":"SICKO MODE","3":"1032407145"},{"1":"Post Malone","2":"Better Now","3":"1020891071"},{"1":"Roddy Ricch","2":"The Box","3":"995059793"},{"1":"Luis Fonsi feat. Daddy Yankee feat. Justin Bieber","2":"Despacito - Remix","3":"956567836"},{"1":"James Arthur","2":"Say You Won't Let Go","3":"949840761"},{"1":"Kendrick Lamar","2":"HUMBLE.","3":"946692345"},{"1":"XXXTENTACION","2":"Jocelyn Flores","3":"936906948"},{"1":"Harry Styles","2":"Watermelon Sugar","3":"912812908"},{"1":"DaBaby feat. Roddy Ricch","2":"ROCKSTAR (feat. Roddy Ricch)","3":"908563621"},{"1":"Dua Lipa","2":"New Rules","3":"899361369"},{"1":"Travis Scott","2":"goosebumps","3":"885410605"},{"1":"Post Malone feat. Quavo","2":"Congratulations","3":"876828681"},{"1":"Post Malone","2":"I Fall Apart","3":"853129702"},{"1":"Maroon 5","2":"Memories","3":"840176116"},{"1":"Ariana Grande","2":"7 rings","3":"829033275"},{"1":"The Chainsmokers feat. Coldplay","2":"Something Just Like This","3":"818014494"},{"1":"Maroon 5 feat. Cardi B","2":"Girls Like You (feat. Cardi B)","3":"808796253"},{"1":"Post Malone feat. 21 Savage","2":"rockstar","3":"798643747"},{"1":"Cardi B feat. Bad Bunny feat. J Balvin","2":"I Like It","3":"788587558"},{"1":"24kGoldn feat. iann dior","2":"Mood (feat. Iann Dior)","3":"764725273"},{"1":"Drake","2":"God's Plan","3":"760650552"},{"1":"Halsey","2":"Without Me","3":"757392659"},{"1":"KAROL G feat. Nicki Minaj","2":"Tusa","3":"756602731"},{"1":"Juice WRLD","2":"Lucid Dreams","3":"743680155"},{"1":"Billie Eilish feat. Khalid","2":"lovely (with Khalid)","3":"736917003"},{"1":"XXXTENTACION","2":"Moonlight","3":"728758339"},{"1":"Calvin Harris feat. Dua Lipa","2":"One Kiss (with Dua Lipa)","3":"725852183"},{"1":"Powfu feat. beabadoobee","2":"death bed (feat. beabadoobee)","3":"721854372"},{"1":"Lil Uzi Vert","2":"XO Tour Llif3","3":"718056532"},{"1":"Luis Fonsi feat. Daddy Yankee","2":"Despacito (Featuring Daddy Yankee)","3":"716267413"},{"1":"DJ Snake feat. Selena Gomez feat. Ozuna feat. Cardi B","2":"Taki Taki (with Selena Gomez, Ozuna & Cardi B)","3":"711683906"},{"1":"Ava Max","2":"Sweet but Psycho","3":"708945613"},{"1":"Post Malone feat. Swae Lee","2":"Sunflower - Spider-Man: Into the Spider-Verse","3":"698637220"},{"1":"Lewis Capaldi","2":"Before You Go","3":"673256732"},{"1":"Travis Scott","2":"HIGHEST IN THE ROOM","3":"671834884"},{"1":"French Montana feat. Swae Lee","2":"Unforgettable","3":"664523097"},{"1":"Dua Lipa","2":"Don't Start Now","3":"662931410"},{"1":"Ed Sheeran feat. Justin Bieber","2":"I Don't Care (with Justin Bieber)","3":"661619647"},{"1":"Ed Sheeran feat. Khalid","2":"Beautiful People (feat. Khalid)","3":"645594217"},{"1":"Daddy Yankee feat. Snow","2":"Con Calma","3":"641512230"},{"1":"5 Seconds of Summer","2":"Youngblood","3":"630620840"},{"1":"Cardi B feat. Megan Thee Stallion","2":"WAP (feat. Megan Thee Stallion)","3":"628693128"},{"1":"Drake","2":"In My Feelings","3":"628416077"},{"1":"Bruno Mars","2":"That's What I Like","3":"626610789"},{"1":"Dua Lipa","2":"IDGAF","3":"625837067"},{"1":"Khalid","2":"Young Dumb & Broke","3":"620192359"},{"1":"Charlie Puth","2":"Attention","3":"618037150"},{"1":"Panic! At The Disco","2":"High Hopes","3":"617513542"},{"1":"Dynoro feat. Gigi D'Agostino","2":"In My Mind","3":"617150168"},{"1":"The Chainsmokers feat. Halsey","2":"Closer","3":"616860951"},{"1":"Harry Styles","2":"Adore You","3":"605863996"},{"1":"Marshmello feat. Khalid","2":"Silence","3":"597974176"},{"1":"Bad Bunny feat. Drake","2":"MIA (feat. Drake)","3":"597084944"},{"1":"Logic feat. Alessia Cara feat. Khalid","2":"1-800-273-8255","3":"595389235"},{"1":"Billie Eilish","2":"everything i wanted","3":"594991676"},{"1":"J Balvin feat. Willy William","2":"Mi Gente","3":"591160912"},{"1":"Post Malone","2":"Wow.","3":"590232906"},{"1":"Kygo feat. Selena Gomez","2":"It Ain't Me (with Selena Gomez)","3":"589126392"},{"1":"Pedro Capó feat. Farruko","2":"Calma - Remix","3":"586985863"},{"1":"Mithoon feat. Arijit Singh","2":"Chal Ghar Chalen (From \"\"Malang - Unleash The Madness\"\") [Mithoon feat. Arijit Singh]","3":"582308170"},{"1":"Mariah Carey","2":"All I Want for Christmas Is You","3":"581830387"},{"1":"Post Malone feat. 21 Savage","2":"rockstar","3":"567757276"},{"1":"Marshmello feat. Anne-Marie","2":"FRIENDS","3":"566399912"},{"1":"Dua Lipa","2":"Don't Start Now","3":"559248821"},{"1":"Post Malone feat. Swae Lee","2":"Sunflower - Spider-Man: Into the Spider-Verse","3":"557862968"},{"1":"Camila Cabello feat. Young Thug","2":"Havana","3":"554032710"},{"1":"Bad Bunny feat. Tainy","2":"Callaita","3":"551285702"},{"1":"ZAYN feat. Taylor Swift","2":"I Don’t Wanna Live Forever (Fifty Shades Darker) - From \"\"Fifty Shades Darker (Original Motion Picture Soundtrack)\"\"","3":"550678451"},{"1":"Tyga feat. Offset","2":"Taste (feat. Offset)","3":"549014318"},{"1":"J. Cole","2":"MIDDLE CHILD","3":"539371861"},{"1":"Lil Baby feat. Gunna","2":"Drip Too Hard","3":"537625961"},{"1":"Post Malone feat. Young Thug","2":"Goodbyes (Feat. Young Thug)","3":"534832406"},{"1":"Regard","2":"Ride It","3":"530000154"},{"1":"Juice WRLD","2":"Robbery","3":"528728435"},{"1":"XXXTENTACION feat. Trippie Redd","2":"Fuck Love (feat. Trippie Redd)","3":"525695922"},{"1":"Topic feat. A7S","2":"Breaking Me (feat. A7S)","3":"524982001"},{"1":"Danny Ocean","2":"Me Rehúso","3":"523590834"},{"1":"Shawn Mendes","2":"There's Nothing Holdin' Me Back","3":"520429071"},{"1":"Camila Cabello feat. Young Thug","2":"Havana","3":"516295447"},{"1":"Justin Bieber feat. Quavo","2":"Intentions","3":"514862825"},{"1":"Post Malone feat. Ty Dolla $ign","2":"Psycho (feat. Ty Dolla $ign)","3":"513812937"},{"1":"Nio Garcia feat. Casper Magico feat. Bad Bunny feat. Darell feat. Ozuna feat. Nicky Jam","2":"Te Boté - Remix","3":"513303473"},{"1":"Sam Smith","2":"Too Good At Goodbyes - Edit","3":"512836763"},{"1":"Anuel AA feat. Daddy Yankee feat. KAROL G feat. J Balvin feat. Ozuna","2":"China","3":"511648110"},{"1":"Doja Cat","2":"Say So","3":"507466329"},{"1":"BlocBoy JB feat. Drake","2":"Look Alive (feat. Drake)","3":"504359415"},{"1":"Meek Mill feat. Drake","2":"Going Bad (feat. Drake)","3":"504025912"},{"1":"Sam Smith feat. Normani","2":"Dancing With A Stranger (with Normani)","3":"502577475"},{"1":"Ed Sheeran","2":"Castle on the Hill","3":"498013905"},{"1":"Zedd feat. Alessia Cara","2":"Stay (with Alessia Cara)","3":"490037377"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

### Q3

Which genres are most popular? Group the data by genre and compute the sum of streams by genre. 

Using `dplyr` functions, you could first group the observations by genre, then summarize the streams using `sum()`:
  

``` r
genres_popularity <- music_data %>% 
  group_by(genre) %>% #group by genre
  summarize(streams = sum(streams)) #compute sum of streams per genre
genres_popularity
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["streams"],"name":[1],"type":["dbl"],"align":["right"]}],"data":[{"1":"4.88591e+11"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

### Q4

Which music label is most successful? Group the data by music label and compute the sum of streams by label and the average number of streams for all songs associated with a label. 

Just like in the previous task, it would be enough to group the observations (in this case, by labels), and get the sums and averages of streams:
  

``` r
label_success <- music_data %>% 
  group_by(label) %>% #group by label
  summarize(sum_streams = sum(streams),
            avg_streams = mean(streams)) #compute sum of streams and average streams per label
label_success
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["sum_streams"],"name":[1],"type":["dbl"],"align":["right"]},{"label":["avg_streams"],"name":[2],"type":["dbl"],"align":["right"]}],"data":[{"1":"4.88591e+11","2":"7314674"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

### Q5

How do the songs differ in terms of the song features? Please first select the relevant variables (7 song features) and compute the descriptive statistics for these variables by genre.     

All audio features (danceability, energy, speechiness, instrumentalness, liveness, valence, and tempo) are variables measured on a **ratio scale**, which means that we can evaluate their **average values**. We can use `describeBy()` function, which displays mean by default alongside with range and other values:
  

``` r
library(psych)
describeBy(select(music_data, 
                  danceability, energy, speechiness, instrumentalness, liveness, valence, tempo), 
           music_data$genre, skew = FALSE) 
```

```
## 
##  Descriptive statistics by group 
## group: Classics/Jazz
##                  vars  n   mean    sd median   min    max  range   se
## danceability        1 80  46.00 18.34  46.60  7.33  83.70  76.37 2.05
## energy              2 80  30.85 19.51  28.10  0.26  85.00  84.74 2.18
## speechiness         3 80   6.11  6.55   3.92  2.46  46.70  44.24 0.73
## instrumentalness    4 80  11.34 25.65   0.02  0.00  96.10  96.10 2.87
## liveness            5 80  13.44  7.63  10.55  4.61  39.50  34.89 0.85
## valence             6 80  38.24 24.30  30.95  3.60  90.00  86.40 2.72
## tempo               7 80 113.23 33.74 108.45 56.72 232.69 175.97 3.77
## ------------------------------------------------------------ 
## group: Country
##                  vars   n   mean    sd median   min    max  range   se
## danceability        1 504  59.67 11.98  59.70 19.20  92.20  73.00 0.53
## energy              2 504  69.71 18.71  75.00  4.84  97.70  92.86 0.83
## speechiness         3 504   5.16  4.10   3.78  2.48  35.10  32.62 0.18
## instrumentalness    4 504   0.24  4.04   0.00  0.00  89.10  89.10 0.18
## liveness            5 504  23.70 21.43  13.95  3.35  98.50  95.15 0.95
## valence             6 504  58.90 21.08  61.85  7.40  96.70  89.30 0.94
## tempo               7 504 124.52 31.19 125.10 48.72 203.93 155.21 1.39
## ------------------------------------------------------------ 
## group: Electro/Dance
##                  vars    n   mean    sd median   min   max  range   se
## danceability        1 2703  66.55 11.87  67.40 22.40  97.3  74.90 0.23
## energy              2 2703  74.51 13.99  76.20  2.62  99.9  97.28 0.27
## speechiness         3 2703   7.82  6.33   5.38  2.37  47.4  45.03 0.12
## instrumentalness    4 2703   5.05 16.75   0.00  0.00  98.5  98.50 0.32
## liveness            5 2703  18.57 14.12  13.00  2.21  96.5  94.29 0.27
## valence             6 2703  47.50 21.49  47.80  3.15  97.8  94.65 0.41
## tempo               7 2703 120.74 19.42 122.00 73.99 215.9 141.91 0.37
## ------------------------------------------------------------ 
## group: German Folk
##                  vars   n   mean    sd median   min    max  range   se
## danceability        1 539  63.03 15.36  65.20 20.60  96.40  75.80 0.66
## energy              2 539  61.73 22.56  66.60  5.48  99.90  94.42 0.97
## speechiness         3 539   9.80 10.20   4.91  2.45  49.90  47.45 0.44
## instrumentalness    4 539   1.75 10.02   0.00  0.00  96.10  96.10 0.43
## liveness            5 539  18.65 15.38  12.30  1.91  98.80  96.89 0.66
## valence             6 539  56.07 24.07  58.30  6.92  98.00  91.08 1.04
## tempo               7 539 119.38 28.53 118.06 58.69 202.12 143.43 1.23
## ------------------------------------------------------------ 
## group: HipHop/Rap
##                  vars     n   mean    sd median   min    max  range   se
## danceability        1 21131  73.05 12.30   74.8  8.39  98.00  89.61 0.08
## energy              2 21131  65.10 13.28   65.7  0.54  99.00  98.46 0.09
## speechiness         3 21131  20.92 13.55   19.0  2.54  96.60  94.06 0.09
## instrumentalness    4 21131   0.61  5.03    0.0  0.00  97.80  97.80 0.03
## liveness            5 21131  16.90 12.49   12.1  1.19  97.60  96.41 0.09
## valence             6 21131  49.04 20.73   49.0  3.33  97.90  94.57 0.14
## tempo               7 21131 121.68 28.22  122.0 38.80 230.27 191.47 0.19
## ------------------------------------------------------------ 
## group: other
##                  vars    n   mean    sd median   min    max  range   se
## danceability        1 5228  64.53 15.39  67.00  7.83  96.70  88.87 0.21
## energy              2 5228  63.91 20.46  67.70  3.32  98.80  95.48 0.28
## speechiness         3 5228   9.30 10.38   5.58  2.36  95.50  93.14 0.14
## instrumentalness    4 5228   0.72  6.32   0.00  0.00  97.00  97.00 0.09
## liveness            5 5228  21.91 20.27  13.30  1.51  99.10  97.59 0.28
## valence             6 5228  60.16 22.73  62.15  3.84  99.00  95.16 0.31
## tempo               7 5228 123.65 31.98 120.01 46.72 210.16 163.44 0.44
## ------------------------------------------------------------ 
## group: Pop
##                  vars     n   mean    sd median min   max range   se
## danceability        1 30069  63.74 14.46  65.10   0  98.3  98.3 0.08
## energy              2 30069  62.91 18.62  65.00   0 100.0 100.0 0.11
## speechiness         3 30069   9.85 10.20   5.37   0  95.6  95.6 0.06
## instrumentalness    4 30069   1.16  7.76   0.00   0  98.7  98.7 0.04
## liveness            5 30069  17.26 13.16  12.20   0  98.9  98.9 0.08
## valence             6 30069  50.33 22.57  49.20   0  98.7  98.7 0.13
## tempo               7 30069 120.94 28.44 119.99   0 217.4 217.4 0.16
## ------------------------------------------------------------ 
## group: R&B
##                  vars    n   mean    sd median   min    max  range   se
## danceability        1 1881  67.97 13.43  70.10  8.66  97.00  88.34 0.31
## energy              2 1881  61.25 15.80  62.30  2.46  96.10  93.64 0.36
## speechiness         3 1881  12.34 10.10   8.38  2.29  85.60  83.31 0.23
## instrumentalness    4 1881   0.96  6.86   0.00  0.00  94.20  94.20 0.16
## liveness            5 1881  16.04 11.62  11.60  2.07  89.10  87.03 0.27
## valence             6 1881  52.83 23.01  54.10  3.21  98.20  94.99 0.53
## tempo               7 1881 120.17 32.02 111.00 58.39 215.93 157.54 0.74
## ------------------------------------------------------------ 
## group: Reggae
##                  vars   n   mean    sd median   min    max  range   se
## danceability        1 121  75.06  9.33  76.70 40.40  94.40  54.00 0.85
## energy              2 121  67.61 14.91  69.60 14.50  91.10  76.60 1.36
## speechiness         3 121  11.96  8.69   7.85  2.62  36.30  33.68 0.79
## instrumentalness    4 121   1.82  9.52   0.00  0.00  86.10  86.10 0.87
## liveness            5 121  18.02 14.89  12.70  1.38  78.40  77.02 1.35
## valence             6 121  69.73 18.38  73.40 13.80  96.60  82.80 1.67
## tempo               7 121 111.80 31.03 100.04 66.86 214.02 147.17 2.82
## ------------------------------------------------------------ 
## group: Rock
##                  vars    n   mean    sd median   min    max  range   se
## danceability        1 4214  54.75 13.98  55.00  6.28  98.00  91.72 0.22
## energy              2 4214  67.77 21.37  70.85  1.37  99.80  98.43 0.33
## speechiness         3 4214   6.19  5.22   4.32  2.22  54.60  52.38 0.08
## instrumentalness    4 4214   5.69 17.47   0.00  0.00  98.20  98.20 0.27
## liveness            5 4214  18.65 14.52  12.50  2.08  98.80  96.72 0.22
## valence             6 4214  45.65 22.53  44.00  2.62  97.30  94.68 0.35
## tempo               7 4214 122.25 28.70 120.02 46.22 209.79 163.57 0.44
## ------------------------------------------------------------ 
## group: Soundtrack
##                  vars   n   mean    sd median   min    max  range   se
## danceability        1 326  52.82 16.25  54.10 15.00  91.50  76.50 0.90
## energy              2 326  52.05 21.96  50.20  1.26  97.90  96.64 1.22
## speechiness         3 326   6.82  7.51   3.99  2.42  81.80  79.38 0.42
## instrumentalness    4 326   5.02 19.37   0.00  0.00  93.50  93.50 1.07
## liveness            5 326  17.49 14.80  11.85  2.37  84.20  81.83 0.82
## valence             6 326  37.99 22.44  32.30  3.09  96.50  93.41 1.24
## tempo               7 326 119.50 30.80 118.03 60.81 205.54 144.73 1.71
```


### Q6

How many songs in the data set are associated with each label? 
  
You could use `table()` to get the number of songs by label:
  

``` r
table(music_data$label)
```

```
## 
##     Independent      Sony Music Universal Music    Warner Music 
##           22570           12390           21632           10204
```


### Q7

Which share of streams do the different genres account for?
  

``` r
genre_streams <- music_data %>% 
  group_by(genre) %>%
  summarise(genre_streams=sum(streams)) #first compute sum of streams by genre
genre_streams_share <- genre_streams %>%
  mutate(genre_share = genre_streams/sum(genre_streams)) #then divide the sum by the total streams
genre_streams_share
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["genre_streams"],"name":[1],"type":["dbl"],"align":["right"]},{"label":["genre_share"],"name":[2],"type":["dbl"],"align":["right"]}],"data":[{"1":"4.88591e+11","2":"1"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

### Q8

Create a histogram for the variable "Valence" 

This is a simple plot of valence distribution across all songs in your data (we can see that it follows normal distribution):
  

``` r
ggplot(music_data,aes(x = valence)) + 
  geom_histogram(binwidth = 4, col = "white", fill = "lavenderblush3") + 
  labs(x = "Valence", y = "Frequency") +
  theme_minimal()
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/question_8-1.png" alt="Distribution of valence" width="672" />
<p class="caption">(\#fig:question_8)Distribution of valence</p>
</div>

### Q9

Create a grouped boxplot for the variable "energy" by genre.


``` r
ggplot(music_data, aes(x = genre, y = energy, color = genre)) + 
  geom_boxplot(coef = 3) + 
  labs(x = "Genre", y = "Energy") + 
  theme_minimal() + 
  coord_flip()
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/question_9-1.png" alt="Boxplot of energy by genre" width="672" />
<p class="caption">(\#fig:question_9)Boxplot of energy by genre</p>
</div>

### Q10

Create a scatterplot for the variables "valence" and "energy"

Finally, we can visualize the relationship between valence and energy of songs in our data:
  

``` r
ggplot(music_data, aes(x = valence, y = energy)) +
  geom_point(shape = 1) + 
  labs(x = "Valence", y = "Energy") +
  theme_minimal()
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/question_10-1.png" alt="Scatterplot of energy and valence" width="672" />
<p class="caption">(\#fig:question_10)Scatterplot of energy and valence</p>
</div>



## Assignment 2  

**Assignment 2a**

**Load data**


``` r
library(pastecs)
library(ggplot2)
library(psych)
library(pwr)
library(lsr)
library(reshape2)
library(ggstatsplot)
library(Rmisc)
library(plyr)
library(car)
options(scipen = 999) #scientific notation
customer_data_a <- read.table("https://raw.githubusercontent.com/WU-RDS/MA2022/main/data/data_1.csv", 
                          sep = ",", 
                          header = TRUE) #read in data
#head(customer_data_a)
#str(customer_data_a)
```


### Q1  

Let's have a quick look at the revenues that we have in our data:

``` r
psych::describe(customer_data_a$revenue)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["vars"],"name":[1],"type":["dbl"],"align":["right"]},{"label":["n"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["mean"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["sd"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["median"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["trimmed"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["mad"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["min"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["max"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["range"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["skew"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["kurtosis"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[13],"type":["dbl"],"align":["right"]}],"data":[{"1":"1","2":"1429","3":"1401.919","4":"724.1796","5":"1354","6":"1376.383","7":"770.952","8":"1","9":"4179","10":"4178","11":"0.3668801","12":"-0.1604489","13":"19.15712"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
ggplot(customer_data_a, aes(revenue)) + 
  geom_histogram(col = "white", fill = "lavenderblush3", bins = 50) + 
  geom_vline(data = customer_data_a %>% dplyr::summarise(mean = mean(revenue)),aes(xintercept = mean), size = 0.7, color = "gray19") +
  labs(x = "Revenue", y = "Frequency") + 
  ggtitle("Distribution of revenue per customer") +
  theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-7-1.png" width="672" style="display: block; margin: auto;" />

To compute the confidence interval for the average revenue per customer, we will need three things: 1) the *mean* $\bar x$, 2) the *standard error* ($s \over \sqrt{n}$), and 3) the *critical value* for a t-distribution ($t_{crit}$; we will use a t-distribution, because we are not sure of the variance in the population; for this assignment, also the normal distribution and the corresponding $z$-score would have been counted as correct).


``` r
mean <- mean(customer_data_a$revenue) #calculate the mean
sd <- sd(customer_data_a$revenue) 
n <- nrow(customer_data_a)
se <- sd/sqrt(n) #calculate the standard error
df <- n-1
t_crit <- qt(0.975, df) #calculate the critical value
```

The confidence interval can be computed as follows: 
$$CI_{rev} = \bar x \pm t_{ \alpha \over 2}*SE_{\bar x}$$
  

``` r
ci_lower <- mean - t_crit * se
ci_upper <- mean + t_crit * se
ci_lower
```

```
## [1] 1364.34
```

``` r
ci_upper
```

```
## [1] 1439.498
```

You could also use one-sample `t.test()` function to calculate the CIs around the mean:


``` r
t.test(customer_data_a$revenue)$conf.int
```

```
## [1] 1364.340 1439.498
## attr(,"conf.level")
## [1] 0.95
```

We can see now that the confidence interval for revenues is $CI_{rev} = [1364.34,1439.50]$.
To communicate this information with the accounting department, you should interpret the intervals as follows: **If we'd taken 100 samples and calculated the mean and confidence interval for each of them, then the true population mean would be included in 95% of these intervals. In the sample at hand, this interval spans from 1364.34 to 1439.50 EUR**.  
  
  

### Q2

First we will analyze whether the personalization feature that was tested in the A/B-test had an effect on *revenues*. We need to formulate a hypothesis which we can test. In this case, *the null hypothesis is that the feature had no effect on the mean revenue*, i.e. that there is **no difference in the mean revenue between the two populations**. The alternative hypothesis states that the campaign *did have an effect*, meaning that there is a difference in the mean revenue between the populations. In more formal notation this is:

$$H_0: \mu_0 = \mu_1 \\ H_1: \mu_0 \neq \mu_1$$

We need to transform the variable *exp_group* into a factor variable and inspect the data using descriptive statistics:

``` r
customer_data_a$exp_group <- factor(customer_data_a$exp_group, 
                                    levels = c(0,1), labels = c("control", "treatment"))

describeBy(customer_data_a$revenue, customer_data_a$exp_group) #describe control and treatment groups 
```

```
## 
##  Descriptive statistics by group 
## group: control
##    vars   n    mean     sd median trimmed    mad min  max range skew kurtosis
## X1    1 685 1288.58 675.54   1245 1269.56 751.68   1 3726  3725 0.31    -0.35
##       se
## X1 25.81
## ------------------------------------------------------------ 
## group: treatment
##    vars   n    mean     sd median trimmed    mad min  max range skew kurtosis
## X1    1 744 1506.27 751.71 1507.5 1480.48 774.66   3 4179  4176 0.34    -0.17
##       se
## X1 27.56
```
It can already be seen that the mean revenue is higher in the treatment group. 

Next, we should visualize the data. For this, we can use plot of means or boxplot:

``` r
mean_data <- summarySE(customer_data_a, measurevar = "revenue", 
    groupvars = c("exp_group"))

#Plot of means
ggplot(mean_data, aes(x = exp_group, y = revenue)) + 
    geom_bar(position = position_dodge(0.9), fill = "lavenderblush3", stat = "identity", width = 0.50) + 
    geom_errorbar(position = position_dodge(0.9), width = 0.15, aes(ymin = revenue - ci, ymax = revenue + ci)) + 
    theme_minimal() + 
    labs(x = "Experiment group", y = "Average revenue", title = "Average revenue by group") + 
    theme(plot.title = element_text(hjust = 0.5, color = "#666666"))

#Boxplot
ggplot(customer_data_a, aes(x = exp_group, y = revenue)) + geom_boxplot() +
    geom_jitter(alpha = 0.2, color = "lavenderblush4") + 
    labs(x = "Experiment group", y = "Revenue", title = "Boxplot of revenue by group") + 
    theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-12-1.png" width="50%" /><img src="14-rmdIntro_files/figure-html/unnamed-chunk-12-2.png" width="50%" />

As we can see in both the descriptive statistics and the plot, the revenues were higher for the group that was exposed to the new personalization feature. To test whether or not this difference is significant, we need to use an __independent-means t-test__, since we have different customers in each group, meaning that we have collected the data using a between-subjects design (i.e., the customers in one condition are *independent* of the customers in the other condition). The requirements are clearly met:

* Our dependent variable (revenue) is measured on an ratio scale;
* Since we have more than 30 observations per group we do not really have to concern ourselves with whether the data is normally distributed or not (see central limit theorem);
* If a customer was exposed to the feature or not was assigned randomly (i.e., the groups are independent);
* R automatically performs Welch's t-test, which corrects for unequal variance.  


``` r
t.test(revenue ~ exp_group, data = customer_data_a)
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  revenue by exp_group
## t = -5.7652, df = 1426.2, p-value = 0.00000000998
## alternative hypothesis: true difference in means between group control and group treatment is not equal to 0
## 95 percent confidence interval:
##  -291.7562 -143.6193
## sample estimates:
##   mean in group control mean in group treatment 
##                1288.581                1506.269
```

The test is significant, since the **p-value is smaller than 0.05**, leading us to **reject the null hypothesis that there is no difference in the mean revenue**. The p-value states the probability of finding a difference of the observed magnitude or higher, if the null hypothesis was in fact true (i.e., if there was in fact no difference between the populations). Effectively, this means that **the personalization feature had an effect on the average expenditure**. Another thing we can extract from this test result is the confidence interval around the difference in means. **Since 0** (i.e., hypothetical difference in means from H0) **is not included in the interval**, it is not a plausible value, confirming the conclusion to reject the null hypothesis.

We should also calculate the effect size:

``` r
cohensD(revenue ~ exp_group, data = customer_data_a)
```

```
## [1] 0.303943
```
This magnitude of the effect size (0.30) suggests that the **effect of the personalization feature on the revenue is small to medium**.

We can visualize the results of the test using `ggstatsplot`:

``` r
ggbetweenstats(
  data = customer_data_a,
  plot.type = "box",
  x = exp_group, #2 groups
  y = revenue ,
  type = "p", #default
  effsize.type = "d", #display effect size (Cohen's d in output)
  messages = FALSE,
  bf.message = FALSE,
  mean.ci = TRUE,
  title = "Average revenue per customer by group"
) 
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-15-1.png" width="672" style="display: block; margin: auto;" />

The results show that revenues are **higher in the treatment group (Mean = 1506.27, SE = 27.56) compared to the control group (Mean = 1288.58, SE = 25.81)**. This means that, on average, the revenues were **€217.69 higher** in the treatment group, compared to the control group. An independent-means t-test showed that **this difference is significant: t(1426.2) = 5.77, p < .05 (95% CI = [143.62, 291.76]); effect size is small to medium = 0.30**.


Now we can test if the new personalization feature has an effect on *time spent on our website*. 

``` r
describeBy(customer_data_a$time_on_site, customer_data_a$exp_group) #describe control and treatment groups for time on site
```

```
## 
##  Descriptive statistics by group 
## group: control
##    vars   n   mean     sd median trimmed    mad min  max range skew kurtosis
## X1    1 685 626.28 285.76    607  621.75 309.86   1 1504  1503 0.17    -0.44
##       se
## X1 10.92
## ------------------------------------------------------------ 
## group: treatment
##    vars   n   mean     sd median trimmed    mad min  max range skew kurtosis
## X1    1 744 640.45 287.01    629  634.19 292.07  23 1622  1599 0.23    -0.23
##       se
## X1 10.52
```


``` r
mean_data_time <- summarySE(customer_data_a, measurevar = "time_on_site", 
                            groupvars = c("exp_group"))

#Plot of means
ggplot(mean_data_time, aes(x = exp_group, y = time_on_site)) + 
  geom_bar(position = position_dodge(0.9), fill = "lavenderblush3", stat = "identity", width = 0.50) + 
  geom_errorbar(position = position_dodge(0.9), width = 0.15, aes(ymin = time_on_site - ci, ymax = time_on_site + ci)) + 
  theme_minimal() + labs(x = "Experiment group", y = "Average time on site", title = "Average time on site by group") + 
  theme(plot.title = element_text(hjust = 0.5, color = "#666666"))

#Boxplot
ggplot(customer_data_a, aes(x = exp_group, y = time_on_site)) + geom_boxplot() +
  geom_jitter(alpha = 0.2, color = "lavenderblush4") + 
  labs(x = "Experiment group", y = "Time on site", title = "Boxplot of time on site by group") + 
  theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-17-1.png" width="50%" /><img src="14-rmdIntro_files/figure-html/unnamed-chunk-17-2.png" width="50%" />

There is some difference in average time spent on site, however, we need to conduct a statistical test. We are examining if there is difference in mean time on site between the populations; our formal notation for the null and alternative hypotheses stays the same:
$$H_0: \mu_0 = \mu_1 \\ H_1: \mu_0 \neq \mu_1$$
  
We use the __independent-means t-test__ again:
  
* The dependent variable (time on site) is measured on an ratio scale
* We still have more than 30 observations per group
* The groups are independent


``` r
t.test(time_on_site ~ exp_group, data = customer_data_a)
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  time_on_site by exp_group
## t = -0.93495, df = 1418.3, p-value = 0.35
## alternative hypothesis: true difference in means between group control and group treatment is not equal to 0
## 95 percent confidence interval:
##  -43.92214  15.56805
## sample estimates:
##   mean in group control mean in group treatment 
##                626.2759                640.4530
```

``` r
cohensD(time_on_site ~ exp_group, data = customer_data_a)
```

```
## [1] 0.04949881
```

The test results show that the difference that we observed before is **not statistically significant as p-value is >0.05**. Alternatively, we can see that **the confidence interval around the difference in means includes 0** (which is the value of difference in means from the null hypothesis). Therefore, **we cannot reject the null hypothesis**. The effect is very small.


``` r
ggbetweenstats(
  data = customer_data_a,
  plot.type = "box",
  x = exp_group, #2 groups
  y = time_on_site,
  type = "p", # default
  effsize.type = "d", #display effect size (Cohen's d in output)
  messages = FALSE,
  bf.message = FALSE,
  mean.ci = TRUE,
  title = "Average time on site per customer by group"
)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-19-1.png" width="672" style="display: block; margin: auto;" />

This test revealed that time on site was **slightly higher in the treatment group (Mean = 640.45, SE = 10.52) compared to the control group (Mean = 626.28, SE = 10.92)**. This difference is **not statistically significant: t(1418.3) = 0.93, p > .05 (95% CI = [-15.56; 43.92])**.


Finally, we can conclude from this study that the personalization feature causes users to increase their expenditures, but does not result in increased time spent on the website. If the primary goal of the company is to increase the revenues, this feature might be implemented on the website.  


### Q3
  
  To define the number of users that should be placed in two different conditions, `pwr.t.test()` function should be used. As far as the aim of the experiment is to simply detect *significant difference* between the groups, the sample size definition should be based on *two-sided test*.  

Given the **effect size = 0.1**, **significance level = 0.05**, and **power = 0.8**, sample size for each group will be:

``` r
pwr.t.test(d = 0.1, sig.level = 0.05, power = 0.8, type = c("two.sample"), alternative = c("two.sided"))
```

```
## 
##      Two-sample t test power calculation 
## 
##               n = 1570.733
##               d = 0.1
##       sig.level = 0.05
##           power = 0.8
##     alternative = two.sided
## 
## NOTE: n is number in *each* group
```

To achieve our desired effect size of 0.1, a significance level of 0.5 and a power of 0.8 we would need to include **at least 1,571 customers per group** in the planned experiment.


**Assignment 2b:**

### Q4  
  
**Load data**
  

``` r
customer_data_b <- read.table("https://raw.githubusercontent.com/WU-RDS/MA2022/main/data/data_2.csv", 
                              sep = ",", 
                              header = TRUE) #read in data
#head(customer_data_b)
#str(customer_data_b)
```

Next we want to examine whether the alternative page layout has an effect on the time that a user spends on the website. The null hypothesis here is that *there is no difference in the mean time spend on the website for the same customers between the two page layouts*. Because the observations come from *the same population* of customers (i.e., a within-subject design), we refer to the difference in the means for the same population as $\mu_D$ when stating our hypotheses. The alternative hypothesis states that that *there is a difference* between the time on site variables for the same customers. In mathematical notation this can be written as

$$H_0: \mu_D = 0 \\ H_1: \mu_D \neq 0$$
  
Again, we start with descriptive statistics to get a feel for the data: 

``` r
psych::describe(customer_data_b[!is.na(customer_data_b$time_on_site_2), c("time_on_site_1","time_on_site_2")])
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["vars"],"name":[1],"type":["int"],"align":["right"]},{"label":["n"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["mean"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["sd"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["median"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["trimmed"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["mad"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["min"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["max"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["range"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["skew"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["kurtosis"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[13],"type":["dbl"],"align":["right"]}],"data":[{"1":"1","2":"741","3":"625.2726","4":"281.9098","5":"620","6":"620.0927","7":"289.107","8":"6","9":"1408","10":"1402","11":"0.17601185","12":"-0.3311236","13":"10.35621"},{"1":"2","2":"741","3":"747.5479","4":"300.9633","5":"740","6":"746.3137","7":"311.346","8":"17","9":"1643","10":"1626","11":"0.07594395","12":"-0.3373002","13":"11.05616"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>


We can observe the difference in means from the table above; we can also visualize the data:

``` r
#Plot of means
customer_data_long <- melt(customer_data_b[!is.na(customer_data_b$time_on_site_2), c("time_on_site_1", "time_on_site_2")])
names(customer_data_long) <- c("layout", "time_on_site")

mean_data <- summarySE(customer_data_long, measurevar = "time_on_site", 
                       groupvars = c("layout"))

#Plot of means
ggplot(mean_data, aes(x = layout, y = time_on_site)) + 
  geom_bar(position = position_dodge(0.9), fill = "lavenderblush3", stat = "identity", width = 0.5) + 
  geom_errorbar(position = position_dodge(0.9), width = 0.15, aes(ymin = time_on_site - ci, ymax = time_on_site + ci)) + 
  theme_minimal() + labs(x = "", y = "Average time on site", title = "Average time on site by group") + 
  theme(plot.title = element_text(hjust = 0.5, color = "#666666"))

#Boxplot
ggplot(customer_data_long, aes(x = layout, y = time_on_site)) + geom_boxplot() +
  geom_jitter(alpha = 0.2, color = "lavenderblush4") + 
  labs(x = "", y = "Revenue", title = "Boxplot of revenue by group") + 
  theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-23-1.png" width="50%" /><img src="14-rmdIntro_files/figure-html/unnamed-chunk-23-2.png" width="50%" />
It appears that there is a difference in the means. To test whether it is significant, we need to run a t-test again. However, this time we need a slightly different version of the t-test because *the same customers* are observed for the two page layouts (i.e., the same customers are shown both layouts). This means that we need a __dependent means t-test__, or **paired samples t-test**. The other assumptions are virtually identical to the independent-means t-test. The test can be executed in R by adding ```paired = TRUE``` to the code.   


``` r
t.test(customer_data_b$time_on_site_2, customer_data_b$time_on_site_1, 
       mu = 0, alternative = "two.sided", conf.level = 0.95,
       paired = TRUE)
```

```
## 
## 	Paired t-test
## 
## data:  customer_data_b$time_on_site_2 and customer_data_b$time_on_site_1
## t = 8.0093, df = 740, p-value = 0.000000000000004478
## alternative hypothesis: true mean difference is not equal to 0
## 95 percent confidence interval:
##   92.30401 152.24660
## sample estimates:
## mean difference 
##        122.2753
```

The p-value is again lower than the chosen significance level of 5% (i.e., p < .05), which means that we can reject the null hypothesis that there is no difference in the mean time on site between the two page layouts. The confidence interval confirms the conclusion to reject the null hypothesis since $0$ is not contained in the range of plausible values.

We can now find out how strong this effect is: it is actually rather small.

``` r
cohensD(customer_data_b$time_on_site_1, customer_data_b$time_on_site_2, method = 'paired')
```

```
## [1] 0.2942274
```

Alternatively, you could also use the `ggstatsplot` package to conduct the tests and extract the relevant information from there: 
  

``` r
ggwithinstats(
  data = customer_data_long,
  x = layout,
  y = time_on_site,
  path.point = FALSE,
  path.mean = TRUE,
  title = "Time on site for different page layouts",
  messages = FALSE,
  bf.message = FALSE,
  mean.ci = TRUE,
  effsize.type = "d" # display effect size (Cohen's d in output)
)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-26-1.png" width="672" style="display: block; margin: auto;" />


The results of this experiment show that, on average, **the same users used the service more** when it included the alternative layout **(M = 747.55, SE = 11.06)** compared to the service without the previous personalization feature only **(M = 625.27, SE = 10.36)**. This difference was significant: **t(740) = 8.01, p < .05 (95% CI = [92.30, 152.25]); effect size is small = 0.29**. 

The conclusion from this test would be that the alternative page layout increases the time that users spend on the website and, thus, the alternative layout might be implemented as the new standard. 


**Assignment 2c:**

### Q5  
  
**Load data**
  

``` r
customer_data_c <- read.table("https://raw.githubusercontent.com/WU-RDS/MA2022/main/data/data_3.csv", 
                              sep = ",", 
                              header = TRUE) #read in data
#head(customer_data_c)
#str(customer_data_c)
```

To answer the question of whether the type of advertising has an effect on revenue, we need to formulate a testable null hypothesis. In our case, the null hypothesis is stating that **the average level of sales is equal for all three advertising types**. In mathematical notation this implies:
$$H_0: \mu_1 = \mu_2 = \mu_3 $$
  
The alternate hypothesis is simply that the means are not all equal, i.e., 
$$H_1: \exists {i,j}: {\mu_i \ne \mu_j} $$
or $$H_1: \textrm{Means are not all equal} $$
  
The appropriate test for such a hypothesis is one-way ANOVA since we have a *metric-scaled dependent variable* and a *categorical independent variable with more than two levels*.

First, we need to recode relevant variables into factors and give them more descriptive level names: 

``` r
customer_data_c$retargeting <- factor(customer_data_c$retargeting, levels = c(1,2,3), labels = c("no retargeting", "generic retargeting", "dynamic retargeting"))
```

Next we calculate summary statistics for the data and build an appropriate plot.

``` r
describeBy(customer_data_c$revenue, customer_data_c$retargeting)
```

```
## 
##  Descriptive statistics by group 
## group: no retargeting
##    vars   n    mean     sd median trimmed    mad min  max range skew kurtosis
## X1    1 737 2166.14 791.85   2168 2158.39 796.16 190 4462  4272 0.08    -0.32
##       se
## X1 29.17
## ------------------------------------------------------------ 
## group: generic retargeting
##    vars   n    mean     sd median trimmed    mad min  max range skew kurtosis
## X1    1 777 2299.26 786.85   2289 2291.99 770.95  89 5541  5452 0.15     0.22
##       se
## X1 28.23
## ------------------------------------------------------------ 
## group: dynamic retargeting
##    vars   n    mean     sd median trimmed    mad min  max range skew kurtosis
## X1    1 690 2609.56 826.81   2594 2605.37 836.19 513 5036  4523 0.05    -0.24
##       se
## X1 31.48
```

``` r
#Plot of means
mean_data_2 <- summarySE(customer_data_c, measurevar = "revenue", groupvars = c("retargeting"))
ggplot(mean_data_2, aes(x = retargeting, y = revenue)) + 
  geom_bar(position = position_dodge(1), fill = "lavenderblush3", stat = "identity", width = 0.5) +
  geom_errorbar(position = position_dodge(.9), width = .15, aes(ymin = revenue - ci, ymax = revenue + ci)) +
  theme_minimal() +
  labs(x = "", y = "Average revenue", title = "Average revenue by group")+
  theme(plot.title = element_text(hjust = 0.5, color = "#666666")) 

#Boxplot
ggplot(customer_data_c, aes(x = retargeting, y = revenue)) + 
  geom_boxplot() +
  geom_jitter(colour = "lavenderblush4", alpha = 0.1) +
  theme_minimal() +
  labs(x = "", y = "Revenue")+
  theme(plot.title = element_text(hjust = 0.5, color = "#666666")) 
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-29-1.png" width="50%" /><img src="14-rmdIntro_files/figure-html/unnamed-chunk-29-2.png" width="50%" />

Both the summary statistics and the plots hint at the fact that the means may not be equal. Especially the difference between dynamic retargeting and no retargeting/generic regtargeting seem to be quite high. Before we move to the formal test, we need to see if a series of **assumptions** are met, namely:
  
* Independence of observations
* Distributional assumptions
* Homogeneity of variances

The first assumption is satisfied due to the fact that *the participants were randomly assigned* to the advertisement groups. To see if we need to worry about distributional assumptions we first take a look at the number of observations in each advertising group.


``` r
table(customer_data_c$retargeting) #check number of observations by group
```

```
## 
##      no retargeting generic retargeting dynamic retargeting 
##                 737                 777                 690
```
Due to the fact that there are always *more than 30 observations in each group* we can rely on the central limit theorem to satisfy the distributional assumptions. You can still test this assumption using Shapiro-Wilk normality test and plots:

``` r
#test for normal distribution of variables - no need because n > 30
by(customer_data_c$revenue, customer_data_c$retargeting, shapiro.test)
```

```
## customer_data_c$retargeting: no retargeting
## 
## 	Shapiro-Wilk normality test
## 
## data:  dd[x, ]
## W = 0.99692, p-value = 0.1719
## 
## ------------------------------------------------------------ 
## customer_data_c$retargeting: generic retargeting
## 
## 	Shapiro-Wilk normality test
## 
## data:  dd[x, ]
## W = 0.99705, p-value = 0.1682
## 
## ------------------------------------------------------------ 
## customer_data_c$retargeting: dynamic retargeting
## 
## 	Shapiro-Wilk normality test
## 
## data:  dd[x, ]
## W = 0.99777, p-value = 0.4959
```

``` r
#shapiro.test(customer_data_c[customer_data_c$retargeting == "no retargeting", ]$revenue)
#shapiro.test(customer_data_c[customer_data_c$retargeting == "generic retargeting", ]$revenue)
#shapiro.test(customer_data_c[customer_data_c$retargeting == "dynamic retargeting", ]$revenue)
qqnorm(customer_data_c[customer_data_c$retargeting == "no retargeting", ]$revenue) 
qqline(customer_data_c[customer_data_c$retargeting == "no retargeting", ]$revenue)
qqnorm(customer_data_c[customer_data_c$retargeting == "generic retargeting", ]$revenue) 
qqline(customer_data_c[customer_data_c$retargeting == "generic retargeting", ]$revenue)
qqnorm(customer_data_c[customer_data_c$retargeting == "dynamic retargeting", ]$revenue) 
qqline(customer_data_c[customer_data_c$retargeting == "dynamic retargeting", ]$revenue)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-31-1.png" width="30%" /><img src="14-rmdIntro_files/figure-html/unnamed-chunk-31-2.png" width="30%" /><img src="14-rmdIntro_files/figure-html/unnamed-chunk-31-3.png" width="30%" />


Homogeneity of variances can be checked with *Levene's test* (implemented as ```leveneTest()``` from the ```car``` package). The null hypothesis of this test is that the variances are equal, with the alternative hypothesis being that the variances are not all equal. Note that this step could also be skipped and replaced by the use of the robust ANOVA using the `oneway.test()` function. 

``` r
leveneTest(revenue ~ retargeting, data = customer_data_c)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["Df"],"name":[1],"type":["int"],"align":["right"]},{"label":["F value"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["Pr(>F)"],"name":[3],"type":["dbl"],"align":["right"]}],"data":[{"1":"2","2":"1.145271","3":"0.3183271"},{"1":"2201","2":"NA","3":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

As we can see, we cannot reject the H0 of variances being equal, thus we can proceed with ANOVA. 

``` r
aov <- aov(revenue ~ retargeting, data = customer_data_c)
summary(aov) #if levene's test would be significant, compute the Welch's F-ratio instead
```

```
##               Df     Sum Sq  Mean Sq F value              Pr(>F)    
## retargeting    2   73393103 36696551   57.16 <0.0000000000000002 ***
## Residuals   2201 1412939750   641954                                
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

``` r
lsr::etaSquared(aov)
```

```
##                 eta.sq eta.sq.part
## retargeting 0.04937865  0.04937865
```

``` r
summary(aov)[[1]]$'Sum Sq'[1]/(summary(aov)[[1]]$'Sum Sq'[1] + summary(aov)[[1]]$'Sum Sq'[2]) #another way
```

```
## [1] 0.04937865
```

Or, as was mentioned, you could also run a more robust test with `oneway.test()`:

``` r
oneway.test(revenue ~ retargeting, data = customer_data_c)
```

```
## 
## 	One-way analysis of means (not assuming equal variances)
## 
## data:  revenue and retargeting
## F = 55.412, num df = 2.0, denom df = 1454.6, p-value <
## 0.00000000000000022
```

In both tests, the **p-value is way smaller than 0.05**, which we chose as our significance level, meaning that we **reject the null hypothesis of the means being equal** in the three advertising groups. 

Again, there is an option to show the test results in a graph:

``` r
library(ggstatsplot)
ggbetweenstats(
  data = customer_data_c,
  x = retargeting,
  y = revenue,
  plot.type = "box",
  pairwise.comparisons = TRUE,
  pairwise.annotation = "p.value",
  p.adjust.method = "bonferroni",
  effsize.type = "eta", #if var.equal = FALSE, returns partial eta^2 
  var.equal = TRUE,
  mean.plotting = TRUE, 
  mean.ci = TRUE, 
  mean.label.size = 2.5,
  type = "parametric", 
  k = 3, 
  outlier.label.color = "darkgreen", 
  title = "Comparison of revenues between groups",
  xlab = "Experimental group", 
  ylab = "Revenue", 
  messages = FALSE,
  bf.message = FALSE,
)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-35-1.png" width="576" style="display: block; margin: auto;" />

Next we will briefly inspect the residuals of the ANOVA to see if the assumptions of the test really are justified.

``` r
plot(aov,1)
plot(aov,2)
```

<img src="14-rmdIntro_files/figure-html/figures-side-1.png" width="50%" /><img src="14-rmdIntro_files/figure-html/figures-side-2.png" width="50%" />

The first plot gives us a feel for the distribution of the residuals of the three groups. The residuals seem to be roughly equally distributed, which speaks for the fact that *the homogeneity of variances assumption is fulfilled*. 

The second plot is a QQ-plot of the residuals, meant as a quick visual check to see if the normality assumption is fulfilled. Leading up to the test we only checked if there were more than 30 observations per group to satisfy the normality assumption but despite this being fulfilled it is still important to check the normality of the residuals, as any strange behavior here may indicate problems with the model specification. 

To further confirm that the residuals are roughly normally distributed we employ the **Shapiro-Wilk test**. The null hypothesis is that the distribution of the data is normal, with the alternative hypothesis positing that the data is not normally distributed.


``` r
shapiro.test(resid(aov))
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  resid(aov)
## W = 0.99865, p-value = 0.07655
```

The p-value is above the significance level and thus we cannot reject the null hypothesis of normal distribution, which further implies that *the normality assumption is fulfilled*.

According to the test, the effect of different types of advertising on revenues was detected: **F(2, 2201) = 57.16, p < 0.05, $\eta^2$ = 0.049**.

The ANOVA result only tells us that *the means of the three groups are not equal*, but it does not tell us anything about _which_ pairs of means are unequal. To find this out we need to conduct **post-hoc tests** to check the following null hypotheses for the respective pairwise comparisons:

$$1) H_0: \mu_1 = \mu_2; H_1: \mu_1 \neq \mu_2 \\
2) H_0: \mu_2 = \mu_3; H_1: \mu_2 \neq \mu_3 \\
3) H_0: \mu_1 = \mu_3; H_1: \mu_1 \neq \mu_3 $$

Here we will conduct both the Bonferroni correction as well as Tukey's HSD test, however, either would be sufficient for your homework. Bonferroni's correction conducts multiple pairwise t-tests, with the null hypothesis being that of equal means in each case and the alternative hypothesis stating that the means are unequal.


``` r
#bonferroni
pairwise.t.test(customer_data_c$revenue, customer_data_c$retargeting, data = customer_data_c, p.adjust.method = "bonferroni")
```

```
## 
## 	Pairwise comparisons using t tests with pooled SD 
## 
## data:  customer_data_c$revenue and customer_data_c$retargeting 
## 
##                     no retargeting       generic retargeting
## generic retargeting 0.0038               -                  
## dynamic retargeting < 0.0000000000000002 0.00000000000056   
## 
## P value adjustment method: bonferroni
```


According to the Bonferroni test, we can **reject the null hypotheses in all cases**, which means that the revenue means are significantly different from each other:
dynamic regargeting vs. no retargeting  
dynamic regargeting vs. generig retargeting
generic retargeting vs. no retargeting

Alternatively, you could have also chosen to use Tukey's HSD to conduct the post-hoc test:

``` r
#tukey correction using the mult-comp package
library(multcomp)
tukeys <- glht(aov, linfct = mcp(retargeting = "Tukey"))
summary(tukeys)
```

```
## 
## 	 Simultaneous Tests for General Linear Hypotheses
## 
## Multiple Comparisons of Means: Tukey Contrasts
## 
## 
## Fit: aov(formula = revenue ~ retargeting, data = customer_data_c)
## 
## Linear Hypotheses:
##                                                Estimate Std. Error t value
## generic retargeting - no retargeting == 0        133.12      41.20   3.231
## dynamic retargeting - no retargeting == 0        443.42      42.44  10.447
## dynamic retargeting - generic retargeting == 0   310.30      41.91   7.404
##                                                Pr(>|t|)    
## generic retargeting - no retargeting == 0       0.00355 ** 
## dynamic retargeting - no retargeting == 0       < 0.001 ***
## dynamic retargeting - generic retargeting == 0  < 0.001 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## (Adjusted p values reported -- single-step method)
```
Tukey's correction confirms the conclusion from the Bonferroni test. There seems to be difference in the means of generic retargeting vs. no retargeting, and dynamic retargeting vs. both generic retargeting and no retargeting. 

We can estimate the difference in means with corresponding confidence intervals:

``` r
confint(tukeys)
```

```
## 
## 	 Simultaneous Confidence Intervals
## 
## Multiple Comparisons of Means: Tukey Contrasts
## 
## 
## Fit: aov(formula = revenue ~ retargeting, data = customer_data_c)
## 
## Quantile = 2.3454
## 95% family-wise confidence level
##  
## 
## Linear Hypotheses:
##                                                Estimate lwr      upr     
## generic retargeting - no retargeting == 0      133.1202  36.4945 229.7459
## dynamic retargeting - no retargeting == 0      443.4211 343.8742 542.9680
## dynamic retargeting - generic retargeting == 0 310.3009 212.0008 408.6010
```

``` r
par(mar = c(5,19,4,2)) #the mar parameter changes the margins around created plots. This is done so the labels on the side of the Tukey plot are visible (however, this was not expected)
plot(tukeys)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-39-1.png" width="672" style="display: block; margin: auto;" />

It is clearly visible that none of the CIs cross the 0 bound (it's not even visible), which further indicates that all differences in means are statistically significantly different from 0.

From a reporting standpoint we can say that revenue is higher when using dynamic retargeting vs. no retargeting and generic retargeting; generic retargeting is though also more effective than no retargeting. Managerially, this means that dynamic retargeting helps us to increase sales and should thus be the preferred choice. 

### Q6

For this question we want to examine whether the scores from the NPS measurement are significantly different for the experimental groups (i.e., *three* types of retargeting). Because we are dealing with data on an **ordinal scale**, we can not use ANOVA for this analysis. The non-parametric counterpart is the Kruskal-Wallis test, which tests for differences in medians between more than two groups. Hence, the null hypothesis is that **the medians are equal in each group**, and the alternative hypothesis is that there is a difference in medians. 

$$H_0: \bar{\mu}_1 =  \bar{\mu}_2 = \bar{\mu}_3  \\ H_1: \bar{\mu}_1 \neq \bar{\mu}_2 \neq \bar{\mu}_3 $$

Let's inspect the descriptive statistics first:
  

``` r
# Descriptive statistics for NPS, split by group
describeBy(customer_data_c$nps, customer_data_c$retargeting)
```

```
## 
##  Descriptive statistics by group 
## group: no retargeting
##    vars   n mean   sd median trimmed  mad min max range  skew kurtosis  se
## X1    1 737 6.52 2.72      7    6.64 4.45   2  10     8 -0.17    -1.29 0.1
## ------------------------------------------------------------ 
## group: generic retargeting
##    vars   n mean   sd median trimmed  mad min max range  skew kurtosis   se
## X1    1 777 7.19 2.59      7    7.24 2.97   3  11     8 -0.12    -1.28 0.09
## ------------------------------------------------------------ 
## group: dynamic retargeting
##    vars   n mean   sd median trimmed  mad min max range  skew kurtosis  se
## X1    1 690 8.16 2.58      8     8.2 2.97   4  12     8 -0.15    -1.23 0.1
```

A good way to visualize ordinal data is through a boxplot.

``` r
ggplot(data = customer_data_c, aes(x = retargeting, y = nps)) + 
  geom_boxplot(color = 'lavenderblush4') + 
  geom_jitter(colour="lavenderblush3", alpha = 0.1) +
  theme_minimal() + 
  labs(x = "", y = "Rank")
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-41-1.png" width="528" style="display: block; margin: auto;" />

The descriptive statistics and boxplot seem to indicate that the median NPS without retargeting and with generic retargetng is the same; median NPS for dynamic retargeting is slightly higher. The reason might be, for example, that due to the use of dynamic retargeting, customers spend more money (as was shown in ANOVA), but it doesn't result in higher NPS, possibly because customers are not comfortable with the use of their personal data for advertising purposes.  

The only assumption that we require for this test is that the *dependent variable is at least ordinal*, which is fulfilled for customer ranks. Hence we can move on to performing the test:


``` r
kruskal.test(nps ~ retargeting, data = customer_data_c) 
```

```
## 
## 	Kruskal-Wallis rank sum test
## 
## data:  nps by retargeting
## Kruskal-Wallis chi-squared = 120.93, df = 2, p-value <
## 0.00000000000000022
```


``` r
ggbetweenstats(
  data = customer_data_c,
  plot.type = "box",
  x = retargeting, #3 groups
  y = nps,
  type = "nonparametric",
  pairwise.comparisons = TRUE,
  pairwise.annotation = "p.value",
  p.adjust.method = "bonferroni",
  messages = FALSE,
  title = "Median NPS for different retargeting groups"
)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-43-1.png" width="576" style="display: block; margin: auto;" />


The **p-value is below 0.05 and thus we reject the null hypothesis of equal medians**. This means that the NPS of customers is different for the groups that saw different types of ads, implying that the type of retargeting has an effect on the NPS. Even though the medians of 'no retargeting' and 'generic retargeting' groups are the same, we can see the distribution of NPS for both groups; it is clear that after being exposed to generic retargeting ads instead of no retargeting at all, customers give our website higher scores, which should be considered while making a managerial decision regarding which type of promotion to use.

We should not forget to test for differences between groups using a **post-hoc test**. Nemenyi test for pairwise multiple comparisons of the ranked data can be used:

``` r
library(PMCMRplus)
PMCMRplus::kwAllPairsNemenyiTest(x = customer_data_c$nps,
    g = customer_data_c$retargeting, dist = "Tukey")
```

```
##                     no retargeting    generic retargeting
## generic retargeting 0.000017155029390 -                  
## dynamic retargeting 0.000000000000029 0.000000000175138
```

It appears that the differences between median NPS for "no retargeting vs. generic retargeting", "generic retargeting vs. dynamic retargeting", and "no retargeting vs. dynamic retargeting" are significant.

**Assignment 2d:**

### Q7  
  
**Load data**


``` r
customer_data_d <- read.table("https://raw.githubusercontent.com/WU-RDS/MA2022/main/data/data_4.csv", 
                          sep = ",", 
                          header = TRUE) #read in data
#head(customer_data_d)
#str(customer_data_d)
```

To find out if the new personalization feature has an effect on the conversion rate, we can use a test for proportions instead of a test for mean differences. To test for the equality of proportions (and therefore no difference between them) we can use a **chi-square ($\chi^2$) test**.

Our null hypothesis in this case states that **the proportions of conversion are the same for groups with and without the personalization feature**. Our alternative hypothesis states that these proportions are unequal.

$$H_0: \pi_1 = \pi_2 \\ H_1: \pi_1 \neq \pi_2$$

First, we will recode the relevant variables into factors and give them more descriptive level names:

``` r
customer_data_d$conversion <- factor(customer_data_d$conversion, levels = c(0,1), labels = c("no", "yes"))
customer_data_d$exp_group <- factor(customer_data_d$exp_group, levels = c(0,1), labels = c("control", "treatment"))
```

Don't forget to create a summary plot to get a feeling for the data.


``` r
#conditional relative frequencies
rel_freq_table <- as.data.frame(prop.table(table(customer_data_d$exp_group, customer_data_d$conversion), 1))
names(rel_freq_table) <- c("group", "conversion", "freq") # changing names of the columns
rel_freq_table
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["group"],"name":[1],"type":["fct"],"align":["left"]},{"label":["conversion"],"name":[2],"type":["fct"],"align":["left"]},{"label":["freq"],"name":[3],"type":["dbl"],"align":["right"]}],"data":[{"1":"control","2":"no","3":"0.95899399"},{"1":"treatment","2":"no","3":"0.94791463"},{"1":"control","2":"yes","3":"0.04100601"},{"1":"treatment","2":"yes","3":"0.05208537"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

``` r
library(colorspace)
ggplot(rel_freq_table, aes(x = group, y = freq, fill = conversion)) + #plot data
  geom_col(width = .7) + 
  geom_text(aes(label = paste0(round(freq*100,0), "%")), position = position_stack(vjust = 0.5), size = 4) + #add percentages
  ylab("Proportion of conversions") + xlab("group") + # specify axis labels
  theme_minimal() + 
  scale_fill_discrete_sequential(palette = "Reds 2", nmax = 4, order = 2:4)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-47-1.png" width="576" style="display: block; margin: auto;" />

We see that our conversion seems to be slightly better for the group with the personalization feature, but let´s check whether these proportions are significantly different.


``` r
n1 <- nrow(subset(customer_data_d, exp_group == "control")) #number of observations for control group
n2 <- nrow(subset(customer_data_d, exp_group == "treatment"))  #number of observations for treatment group
n1_conv <- nrow(subset(customer_data_d, exp_group == "control" & conversion == "yes"))  #number of conversions for control group
n2_conv <- nrow(subset(customer_data_d, exp_group == "treatment" & conversion == "yes"))  #number of conversions for treatment group

prop.test(x = c(n1_conv, n2_conv), n = c(n1, n2), conf.level = 0.95, correct = FALSE) #without Yates correction
```

```
## 
## 	2-sample test for equality of proportions without continuity correction
## 
## data:  c(n1_conv, n2_conv) out of c(n1, n2)
## X-squared = 7.3461, df = 1, p-value = 0.006721
## alternative hypothesis: two.sided
## 95 percent confidence interval:
##  -0.019121056 -0.003037661
## sample estimates:
##     prop 1     prop 2 
## 0.04100601 0.05208537
```



``` r
table_1 <- table(customer_data_d$conversion,customer_data_d$exp_group)
chisq.test(table_1, correct = FALSE) #without Yates correction
```

```
## 
## 	Pearson's Chi-squared test
## 
## data:  table_1
## X-squared = 7.3461, df = 1, p-value = 0.006721
```


``` r
test_stat <- chisq.test(table_1, correct = FALSE)$statistic
n <- nrow(customer_data_d)
phi1 <- sqrt(test_stat/n)
phi1
```

```
##  X-squared 
## 0.02633293
```

It can be clearly seen from the test that **p-value is < 0.05**, so the result of the treatment on the conversion rate is **statistically significant**. We also calculated the effect size (*Cohen's d = Cramer's V = 0.026*): it is pretty small.


Finally, we can use `ggbarstats()` for the test results visualization:

``` r
library(ggstatsplot)
library(ghibli)
ggbarstats(data = customer_data_d, x = conversion, y = exp_group,
           title = "Conversion by experiment group", xlab = "Group", correct = TRUE,
           messages = FALSE, bar.proptest = FALSE,
           bf.message = FALSE) + 
  scale_fill_ghibli_d("PonyoLight") +
  theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-51-1.png" width="576" style="display: block; margin: auto;" />

The test (as well as the graph above) shows that **the conversion rate for the treatment group was higher than for the control group by 1 p.p.** This difference is though significant: **$\chi^2$ (1) = 7.35, p < .05 (95% CI = [0.003,0.02])**, but the effect size is rather tiny (Cohen's d = 0.026), so the personalization feature can be considered positive, but not too influential factor for conversion rate increase.


## Assignment 3

**Assignment A: Multiple linear regression**


``` r
library(tidyverse)
library(psych)
library(Hmisc)
library(ggstatsplot)
library(ggcorrplot)
library(car)
library(lmtest)
library(lm.beta)
options(scipen = 999)
set.seed(123)

sales_data <- read.table("https://raw.githubusercontent.com/WU-RDS/MA2022/main/data/assignment4.dat", 
                          sep = "\t", 
                          header = TRUE) #read in data
sales_data$market_id <- 1:nrow(sales_data)
#head(sales_data)
#str(sales_data)
```

### Q1

In a first step, we specify the regression equation. In this case, sales is the **dependent variable** which is regressed on the different types of advertising expenditures that represent the **independent variables** for product *i*. Thus, the regression equation is:

$$Sales_{i}=\beta_0 + \beta_1 * tv\_adspend_{i} + \beta_2 * online\_adspend_{i} + \beta_3 * radio\_adspend_{i} + \epsilon_i$$
This equation will be used later to turn the output of the regression analysis (namely the coefficients: $\beta_0$ - intersect coefficient, and $\beta_1$, $\beta_2$, and $\beta_3$ that represent the unknown relationship between sales and advertising expenditures on TV, online channels and radio, respectively) to the "managerial" form and draw marketing conclusions.  

To save the formula, simply assign it to an object:

``` r
formula <- sales ~ tv_adspend + online_adspend + radio_adspend
```

You can use this formula in the regression formula.

### Q2

The descriptive statistics can be checked using the ```describe()``` function:
  

``` r
psych::describe(sales_data)
```

```
##                vars   n   mean    sd median trimmed    mad min   max range skew
## tv_adspend        1 236 148.65 89.77 141.85  147.45 117.27 1.1 299.6 298.5 0.12
## online_adspend    2 236  25.61 14.33  24.35   24.70  14.53 1.6  74.9  73.3 0.61
## radio_adspend     3 236  27.70 12.57  27.00   27.36  13.34 2.0  63.0  61.0 0.22
## sales             4 236  14.83  5.40  14.15   14.72   5.93 1.4  29.0  27.6 0.16
## market_id         5 236 118.50 68.27 118.50  118.50  87.47 1.0 236.0 235.0 0.00
##                kurtosis   se
## tv_adspend        -1.26 5.84
## online_adspend     0.08 0.93
## radio_adspend     -0.53 0.82
## sales             -0.57 0.35
## market_id         -1.22 4.44
```

Inspecting the correlation matrix reveals that the sales variable is positively correlated with TV advertising and online advertising expenditures. The correlations among the independent variables appear to be low to moderate. 
  

``` r
rcorr(as.matrix(sales_data[,c("sales","tv_adspend","online_adspend","radio_adspend")]))
```

```
##                sales tv_adspend online_adspend radio_adspend
## sales           1.00       0.78           0.54         -0.04
## tv_adspend      0.78       1.00           0.05          0.03
## online_adspend  0.54       0.05           1.00         -0.07
## radio_adspend  -0.04       0.03          -0.07          1.00
## 
## n= 236 
## 
## 
## P
##                sales  tv_adspend online_adspend radio_adspend
## sales                 0.0000     0.0000         0.5316       
## tv_adspend     0.0000            0.4127         0.6735       
## online_adspend 0.0000 0.4127                    0.2790       
## radio_adspend  0.5316 0.6735     0.2790
```

Since we have continuous variables, we use scatterplots to investigate the relationship between sales and each of the predictor variables.


``` r
ggplot(sales_data, aes(x = tv_adspend, y = sales)) + geom_point(shape = 1) + geom_smooth(method = "lm", 
    fill = "gray", color = "lavenderblush3", alpha = 0.1) + theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-56-1.png" width="672" style="display: block; margin: auto;" />

``` r
ggplot(sales_data, aes(x = online_adspend, y = sales)) + geom_point(shape = 1) + geom_smooth(method = "lm", 
    fill = "gray", color = "lavenderblush3", alpha = 0.1) + theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-56-2.png" width="672" style="display: block; margin: auto;" />

``` r
ggplot(sales_data, aes(x = radio_adspend, y = sales)) + geom_point(shape = 1) + geom_smooth(method = "lm", 
    fill = "gray", color = "lavenderblush3", alpha = 0.1) + theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-56-3.png" width="672" style="display: block; margin: auto;" />

The plots including the fitted lines from a simple linear model already suggest that there might be a positive linear relationship between sales and TV- and online-advertising. However, there does not appear to be a strong relationship between sales and radio advertising. 

Further steps include estimate of a multiple linear regression model in order to determine the relative influence of each type of advertising on sales and test of the model's assumptions.

### Q3
                                                                                                                             The estimate the model, we will use the ```lm()``` function:

``` r
linear_model <- lm(formula, data = sales_data) #estimate linear model
#summary(linear_model)
```
                                                                                                                             **Before** we can inspect the results, we need to test if there might be potential problems with our model specification. 

*Outliers*

To check for outliers, we extract the studentized residuals from our model and test if there are any absolute values larger than 3.


``` r
sales_data$stud_resid <- rstudent(linear_model)
plot(1:nrow(sales_data), sales_data$stud_resid, ylim = c(-3.3, 3.3))
abline(h = c(-3, 3), col = "red", lty=2)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-58-1.png" width="672" style="display: block; margin: auto;" />

Since there are no residuals with absolute values larger than 3, we conclude that there are no severe outliers. 

*Influential observations*

To test for influential observations, we use Cook's Distance. You may use the following two plots to verify if any Cook's Distance values are larger than the cutoff of 1.


``` r
plot(linear_model,4)
plot(linear_model,5)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-59-1.png" width="50%" style="display: block; margin: auto;" /><img src="14-rmdIntro_files/figure-html/unnamed-chunk-59-2.png" width="50%" style="display: block; margin: auto;" />
Since all values are well below the cutoff, we conclude that influential observations are not a problem in our model. 
                                                                                                                             *Non-linear relationships*

Next, we test if a linear specification appears feasible. You could test this using the added variable plots:


``` r
avPlots(linear_model, col.lines = palette()[2])
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-60-1.png" width="672" style="display: block; margin: auto;" />

The plots suggest that the linear specification is appropriate. In addition, you could also use the residuals plot to see if the linear specification is appropriate. The red line is a smoothed curve through the residuals plot and if it deviates from the dashed grey horizontal line a lot, this would suggest that a linear specification is not appropriate. 


``` r
plot(linear_model, 1)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-61-1.png" width="672" style="display: block; margin: auto;" />

In this example, the red line is close to the dashed grey line, so the linear specification appears reasonable. 

*Heteroscedasticity*

Next, we test if the residual variance is approximately the same at all levels of the predicted outcome variables (i.e., homoscedasticity). To do this, we use the residuals plot again.


``` r
plot(linear_model, 1)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-62-1.png" width="672" style="display: block; margin: auto;" />

The spread of residuals at different levels of the predicted outcome does not appear to be very different. Thus, we can conclude that heteroscedasticity is unlikely to be a problem. We can also confirm this conclusion by using the Breusch-Pagan test, which shows an insignificant results, meaning that we cannot reject the Null Hypothesis of equal variances.


``` r
bptest(linear_model)
```

```
## 
## 	studentized Breusch-Pagan test
## 
## data:  linear_model
## BP = 1.7583, df = 3, p-value = 0.6241
```

*Non-normally distributed errors*

Next, we test if the residuals are approximately normally distributed using the Q-Q plot from the output:


``` r
plot(linear_model,2)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-64-1.png" width="672" style="display: block; margin: auto;" />

The Q-Q plot does not suggest a severe deviation from a normal distribution. This could also be validated using the Shapiro test (we again can't reject the Null Hypothesis that suggests normal distribution):


``` r
shapiro.test(resid(linear_model))
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  resid(linear_model)
## W = 0.99412, p-value = 0.4875
```

*Correlation of errors*

We actually wouldn't need to test this assumption here since there is not natural order in the data. 

*Multicollinearity*

To test for linear dependence of the regressors, we first test the bivariate correlations for any extremely high correlations (i.e., >0.8).


``` r
rcorr(as.matrix(sales_data[,c("tv_adspend","online_adspend","radio_adspend")]))
```

```
##                tv_adspend online_adspend radio_adspend
## tv_adspend           1.00           0.05          0.03
## online_adspend       0.05           1.00         -0.07
## radio_adspend        0.03          -0.07          1.00
## 
## n= 236 
## 
## 
## P
##                tv_adspend online_adspend radio_adspend
## tv_adspend                0.4127         0.6735       
## online_adspend 0.4127                    0.2790       
## radio_adspend  0.6735     0.2790
```

The results show that the bivariate correlations are low to moderate. This can also be shown in plots:


``` r
plot(sales_data[,c("tv_adspend","online_adspend","radio_adspend")])
ggcorrmat(data = sales_data[,c("tv_adspend", "online_adspend", "radio_adspend")],matrix.type = "upper",colors = c("skyblue4", "white", "palevioletred4")
#title = "Correlalogram of independent variables",
)
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-67-1.png" width="50%" /><img src="14-rmdIntro_files/figure-html/unnamed-chunk-67-2.png" width="50%" />

In the next step, we compute the variance inflation factor for each predictor variable. The values should be close to 1 and values larger than 4 indicate potential problems with the linear dependence of regressors.  


``` r
vif(linear_model)
```

```
##     tv_adspend online_adspend  radio_adspend 
##       1.003873       1.008157       1.006028
```

Here, all VIF values are well below the cutoff, indicating that there are no problems with multicollinearity. 

### Q4

In a next step, we will investigate the results from the model using the ```summary()``` function.


``` r
summary(linear_model)
```

```
## 
## Call:
## lm(formula = formula, data = sales_data)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -5.1113 -1.4161 -0.0656  1.3233  5.5198 
## 
## Coefficients:
##                 Estimate Std. Error t value             Pr(>|t|)    
## (Intercept)     3.604140   0.460057   7.834    0.000000000000169 ***
## tv_adspend      0.045480   0.001491  30.508 < 0.0000000000000002 ***
## online_adspend  0.186859   0.009359  19.965 < 0.0000000000000002 ***
## radio_adspend  -0.011469   0.010656  -1.076                0.283    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.048 on 232 degrees of freedom
## Multiple R-squared:  0.8582,	Adjusted R-squared:  0.8564 
## F-statistic: 468.1 on 3 and 232 DF,  p-value: < 0.00000000000000022
```

For each of the individual predictors, we test the following hypothesis: 

$$H_0: \beta_k=0$$
$$H_1: \beta_k\ne0$$

where k denotes the number of the regression coefficient. In the present example, we reject the null hypothesis for tv_adspend and online_adspend, where we observe a significant effect (i.e., p < 0.05). However, we fail to reject the null for the "radio_adspend" variable (i.e., the effect is insignificant). 

The interpretation of the coefficients is as follows: 

* tv_adspend (&beta;<sub>1</sub>): when TV advertising expenditures increase by 1000 Euro, sales will increase by 45 units;
* online_adspend (&beta;<sub>2</sub>): when online advertising expenditures increase by 1000 Euro, sales will increase by 187 units;
* radio_adspend (&beta;<sub>3</sub>): when radio advertising expenditures increase by 1000 Euro, sales will increase by -11 units (i.e., decrease by 11 units).

You should always provide a measure of uncertainty that is associated with the estimates. You could compute the confidence intervals around the coefficients using the ```confint()``` function.


``` r
confint(linear_model)
```

```
##                      2.5 %     97.5 %
## (Intercept)     2.69771633 4.51056393
## tv_adspend      0.04254244 0.04841668
## online_adspend  0.16841843 0.20529924
## radio_adspend  -0.03246402 0.00952540
```

The results show that, for example, with a 95% probability the effect of online advertising will be between 0.168 and 0.205. 

Although the variables are measured on the same scale, you should still test the relative influence by inspecting the standardized coefficients that express the effects in terms of standard deviations.


``` r
lm.beta(linear_model)
```

```
## 
## Call:
## lm(formula = formula, data = sales_data)
## 
## Standardized Coefficients::
##    (Intercept)     tv_adspend online_adspend  radio_adspend 
##             NA     0.75566632     0.49556807    -0.02668878
```

Here, we conclude that TV advertising has the largest ROI followed by online advertising and radio advertising (that actually has negative effect).

Another significance test is the F-test. It tests the null hypothesis:
$$H_0: R^2=0$$
This is equivalent to the following null hypothesis: 

$$H_0: \beta_1=\beta_2=\beta_3=\beta_k=0$$
The result of the test is provided in the output above (**F-statistic: 468.1 on 3 and 232 DF,  p-value: < 2.2e-16**). Since the p-value is smaller than 0.05, we reject the null hypothesis that all coefficients are zero. 

Regarding the model fit, the R<sup>2</sup> statistic tells us that approximately 86% of the variance can be explained by the model. This can be visualized as follows: 


``` r
sales_data$yhat <- predict(linear_model)
ggplot(sales_data, aes(yhat, sales)) + 
  geom_point(size = 2, shape = 1) +
  scale_x_continuous(name = "predicted values") +
  scale_y_continuous(name = "observed values") +
  geom_abline(intercept = 0, slope = 1) +
  theme_minimal()
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-72-1.png" width="672" style="display: block; margin: auto;" />

Of course, you could have also used the functions included in the ggstatsplot package to report the results from your regression model.


``` r
ggcoefstats(x = linear_model, k = 3, title = "Sales predicted by adspend, airplay, & starpower")
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-73-1.png" width="672" style="display: block; margin: auto;" />

### Q5

Finally, we can predict the outcome for the given marketing mix using the following equation: 
$$\hat{Sales} = \beta_0 + \beta_1*150 + \beta_2*26 + \beta_3*15 $$
The coefficients can be extracted from the summary of the linear model and used for quick sales value prediction as follows:


``` r
summary(linear_model)$coefficients[1,1] + 
  summary(linear_model)$coefficients[2,1]*150 +
  summary(linear_model)$coefficients[3,1]*26 +
  summary(linear_model)$coefficients[4,1]*15
```

```
## [1] 15.11236
```

$$\hat{sales}= 3.6 + 0.045*150 + 0.187*26 + (-0.011)*15 = 15.11$$

This means that given the planned marketing mix, we would expect to sell around 15,112 units. 

Equivalently one can use the `predict` function 


``` r
predict(linear_model, data.frame(tv_adspend = 150,online_adspend =  26,radio_adspend  =  15))
```

```
##        1 
## 15.11236
```

**Assignment B: Logistic regression**


``` r
music_data <- read.csv2("https://raw.githubusercontent.com/WU-RDS/RMA2022/main/data/music_data_group.csv",
                        sep = ";", header = TRUE, dec = ",")
music_data$genre <- as.factor(music_data$genre)
music_data$label <- as.factor(music_data$label)
```

### Q6
                                                                                                                             For this model, we need to consider the logistic function, so the final mathematical representation (with three main predictors of interest so far) would look as follows:
                                                                                                                             $$f(\mathbf{X}) = P(y_i = 1) = \frac{1}{1 + e^{-(\beta_0 + \beta_1 * x_{1,i} + \beta_2 * x_{2,i} +\beta_3 * x_{3,i})}}$$
where $\beta_0$ is the intercept coefficient, and $\beta_1$, $\beta_2$, and $\beta_3$ represent the parameters of our model: weeks in charts, age of song, and label.

We should create the model using `glm()` and have a look at the summary:


``` r
mult_logit_model <- glm(top10 ~ weeks_in_charts + song_age + label, family = binomial (link = 'logit'), data = music_data)
summary(mult_logit_model)
```

```
## 
## Call:
## glm(formula = top10 ~ weeks_in_charts + song_age + label, family = binomial(link = "logit"), 
##     data = music_data)
## 
## Coefficients:
##                         Estimate  Std. Error z value            Pr(>|z|)    
## (Intercept)          -3.78534560  0.03989841  -94.88 <0.0000000000000002 ***
## weeks_in_charts       0.01254730  0.00013573   92.45 <0.0000000000000002 ***
## song_age             -0.00122201  0.00009152  -13.35 <0.0000000000000002 ***
## labelSony Music       0.59344756  0.04967676   11.95 <0.0000000000000002 ***
## labelUniversal Music  0.86912676  0.04284308   20.29 <0.0000000000000002 ***
## labelWarner Music     0.52810825  0.05383487    9.81 <0.0000000000000002 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 43430  on 66795  degrees of freedom
## Residual deviance: 27523  on 66790  degrees of freedom
## AIC: 27535
## 
## Number of Fisher Scoring iterations: 6
```


``` r
confint(mult_logit_model)
```

```
## Waiting for profiling to be done...
```

```
##                             2.5 %       97.5 %
## (Intercept)          -3.864138137 -3.707725224
## weeks_in_charts       0.012282716  0.012814786
## song_age             -0.001404812 -0.001046036
## labelSony Music       0.496029832  0.690783386
## labelUniversal Music  0.785399531  0.953358727
## labelWarner Music     0.422364414  0.633423323
```

From the summary of the model we can see that weeks in charts, age of song, and label can be used to predict if a song will end up in top-10 or not. We can also assess the model fit:


``` r
logisticPseudoR2s <- function(LogModel) {
  dev <- LogModel$deviance
  nullDev <- LogModel$null.deviance
  modelN <- length(LogModel$fitted.values)
  R.l <-  1 -  dev / nullDev
  R.cs <- 1- exp(-(nullDev - dev) / modelN)
  R.n <- R.cs / ( 1 - (exp(-(nullDev / modelN))))
  cat("Pseudo R^2 for logistic regression\n")
  cat("Hosmer and Lemeshow R^2  ", round(R.l, 3), "\n")
  cat("Cox and Snell R^2        ", round(R.cs, 3), "\n")
  cat("Nagelkerke R^2           ", round(R.n, 3),    "\n")
}
#Inspect Pseudo R2s
logisticPseudoR2s(mult_logit_model)
```

```
## Pseudo R^2 for logistic regression
## Hosmer and Lemeshow R^2   0.366 
## Cox and Snell R^2         0.212 
## Nagelkerke R^2            0.443
```

To make conclusions about the effect that predictors have on success, we should convert the log-odds ratios to odds ratios using `exp()` function:


``` r
exp(coef(mult_logit_model))
```

```
##          (Intercept)      weeks_in_charts             song_age 
##           0.02270102           1.01262635           0.99877873 
##      labelSony Music labelUniversal Music    labelWarner Music 
##           1.81021850           2.38482742           1.69572138
```

The results tell us, for example, that when a song is one week older, it is slightly less likely to get to the top-10 chart. If we are concerned about the labels to which the songs belong, we can see that in comparison to rather unknown (independent) labels, songs from Universal are 2.38 times more likely to appear in the top-10 chart.

We should visualize the relationship between IVs and DV:


``` r
ggplot(music_data, aes(weeks_in_charts, top10)) +  
  geom_point(shape = 1) +
  geom_smooth(method = "glm",
              method.args = list(family = "binomial"),
              se = FALSE, color = "lavenderblush3") + theme_minimal()
```

```
## `geom_smooth()` using formula = 'y ~ x'
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-81-1.png" width="672" />

``` r
ggplot(music_data, aes(song_age, top10)) + 
  geom_point(shape = 1) +
  geom_smooth(method = "glm",
              method.args = list(family = "binomial"),
              se = FALSE, color = "lavenderblush3") + theme_minimal()
```

```
## `geom_smooth()` using formula = 'y ~ x'
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-81-2.png" width="672" />

There are several ways of plotting the effect of factor variables. Let's do it as follows to gain a better understanding of predicted values in logistic regression:


``` r
library(forcats)
labels <- as.factor(c("Warner Music", "Sony Music", "Independent", "Universal Music"))
top10_predictions <- data.frame(pred = 
                                  predict(glm(top10 ~ label, data = music_data), 
                                          data.frame(label = labels), type = "response"), 
                                label = labels)
top10_counts <- table(music_data$top10, music_data$label)
top10_share <- prop.table(top10_counts, margin = 2)
data.frame(top10_share) |>
  dplyr::filter(Var1 == 1) |> 
  left_join(top10_predictions, by = c("Var2" = "label")) |>
  dplyr::rename(Share = Freq) |>
  ggplot(aes(fct_reorder(Var2, Share), Share)) +
  geom_bar(stat = 'identity', fill = "lavenderblush3") +
  geom_point(aes(x = Var2, y = pred), color = 'red4') +
  theme_minimal() +
  theme(axis.title.x = element_blank())
```

<img src="14-rmdIntro_files/figure-html/unnamed-chunk-82-1.png" width="672" />

For factor variables, it would be also fine to plot the proportion plots (e.g., using `ggbarstats()` or `prop.table()` functions) as far as when considered separately, factor levels' proportions represent the exact probability of getting the 1 probability of a DV.  

To find out which other variables might have a significant effect on the chart performance, we can either load variables one-by-one manually or use a step-wise approach. For the latter, we basically need a model to start with (usually it's a "null" model, however, we already have a model that works for us, i.e., `mult_logit_model`) and the most loaded model that includes all the variables (we will only drop all character and date variables). Let's create it in the next step (please note that we already drop some variables that potentially might be influenced if a song appears in top-10: streams, sp_popularity, n_regions, etc.)


``` r
music_data$explicit <- factor(music_data$explicit,levels = c(0,1), labels = c("not explicit", "explicit"))
full_model <- glm(top10 ~ weeks_in_charts + song_age + label + #our basic model. Next we add the rest of the variables to it:
                    danceability + energy + speechiness + instrumentalness + liveness + valence + tempo + song_length +
                    explicit + n_playlists + genre, family = binomial(link = 'logit'), data = music_data)
```

Let's have a look at how the fullest model possible works:


``` r
summary(full_model)
```

```
## 
## Call:
## glm(formula = top10 ~ weeks_in_charts + song_age + label + danceability + 
##     energy + speechiness + instrumentalness + liveness + valence + 
##     tempo + song_length + explicit + n_playlists + genre, family = binomial(link = "logit"), 
##     data = music_data)
## 
## Coefficients:
##                          Estimate   Std. Error z value             Pr(>|z|)    
## (Intercept)          -8.234476683  6.600555763  -1.248               0.2122    
## weeks_in_charts       0.012805679  0.000146602  87.350 < 0.0000000000000002 ***
## song_age             -0.001926650  0.000114801 -16.783 < 0.0000000000000002 ***
## labelSony Music       0.309879886  0.053399277   5.803        0.00000000651 ***
## labelUniversal Music  0.499093803  0.048106669  10.375 < 0.0000000000000002 ***
## labelWarner Music     0.258651532  0.057686712   4.484        0.00000733501 ***
## danceability          0.013853338  0.001511801   9.163 < 0.0000000000000002 ***
## energy               -0.005334606  0.001202794  -4.435        0.00000919959 ***
## speechiness          -0.003606707  0.001622321  -2.223               0.0262 *  
## instrumentalness     -0.002757251  0.002982653  -0.924               0.3553    
## liveness              0.005200933  0.001189734   4.372        0.00001233918 ***
## valence               0.001499900  0.000934395   1.605               0.1084    
## tempo                 0.002969109  0.000619852   4.790        0.00000166755 ***
## song_length          -0.290130550  0.026500912 -10.948 < 0.0000000000000002 ***
## explicitexplicit     -0.704911363  0.073710237  -9.563 < 0.0000000000000002 ***
## n_playlists           0.000268906  0.000008005  33.593 < 0.0000000000000002 ***
## genreCountry          6.047536675  6.599669764   0.916               0.3595    
## genreElectro/Dance    4.619610060  6.598946035   0.700               0.4839    
## genreGerman Folk      3.391558357  6.604926105   0.513               0.6076    
## genreHipHop/Rap       4.562287429  6.598559475   0.691               0.4893    
## genreother            5.425089472  6.598558812   0.822               0.4110    
## genrePop              4.004199096  6.598387935   0.607               0.5440    
## genreR&B              5.016578570  6.598943542   0.760               0.4471    
## genreReggae           4.454352459  6.610053417   0.674               0.5004    
## genreRock             4.145180994  6.598981122   0.628               0.5299    
## genreSoundtrack       4.901752648  6.601845142   0.742               0.4578    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 43430  on 66795  degrees of freedom
## Residual deviance: 24891  on 66770  degrees of freedom
## AIC: 24943
## 
## Number of Fisher Scoring iterations: 9
```

We don't really need to go too much in details and apply step-by-step comparisons of the models using the suggested variables, so we can pick five significant factors from the summary above. For example, we can proceed with the model as follows:


``` r
final_model <- glm(top10 ~ weeks_in_charts + song_age + label + #our basic model. Next we add the rest of the variables to it:
danceability + liveness + tempo + song_length + n_playlists,family = binomial(link = 'logit'), data = music_data)
summary(final_model)
```

```
## 
## Call:
## glm(formula = top10 ~ weeks_in_charts + song_age + label + danceability + 
##     liveness + tempo + song_length + n_playlists, family = binomial(link = "logit"), 
##     data = music_data)
## 
## Coefficients:
##                          Estimate   Std. Error z value             Pr(>|z|)    
## (Intercept)          -4.490099261  0.172198935 -26.075 < 0.0000000000000002 ***
## weeks_in_charts       0.012594243  0.000141167  89.215 < 0.0000000000000002 ***
## song_age             -0.001977611  0.000117389 -16.847 < 0.0000000000000002 ***
## labelSony Music       0.441955048  0.050888299   8.685 < 0.0000000000000002 ***
## labelUniversal Music  0.624039605  0.044146953  14.136 < 0.0000000000000002 ***
## labelWarner Music     0.376806825  0.055148947   6.833   0.0000000000083430 ***
## danceability          0.017307850  0.001345825  12.860 < 0.0000000000000002 ***
## liveness              0.008612684  0.001138928   7.562   0.0000000000000397 ***
## tempo                 0.003637005  0.000610442   5.958   0.0000000025536638 ***
## song_length          -0.315709255  0.025965257 -12.159 < 0.0000000000000002 ***
## n_playlists           0.000260104  0.000007804  33.330 < 0.0000000000000002 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 43430  on 66795  degrees of freedom
## Residual deviance: 25856  on 66785  degrees of freedom
## AIC: 25878
## 
## Number of Fisher Scoring iterations: 7
```


``` r
logisticPseudoR2s(final_model)
```

```
## Pseudo R^2 for logistic regression
## Hosmer and Lemeshow R^2   0.405 
## Cox and Snell R^2         0.231 
## Nagelkerke R^2            0.484
```

``` r
exp(coef(final_model))
```

```
##          (Intercept)      weeks_in_charts             song_age 
##           0.01121953           1.01267388           0.99802434 
##      labelSony Music labelUniversal Music    labelWarner Music 
##           1.55574581           1.86645257           1.45762271 
##         danceability             liveness                tempo 
##           1.01745850           1.00864988           1.00364363 
##          song_length          n_playlists 
##           0.72927145           1.00026014
```

``` r
#confint(final_model)
```

The interpretation of odds ratios stays the same (and should be discussed in your solution).
<br>

If we still want to choose a parsimonious model using step-wise comparisons, we can do it as follows: the function below takes the "base" model, adds variables from the fullest model one-by-one to it, and shows the new models' performance:


``` r
step(mult_logit_model, #our base model
     scope = list(upper = full_model), 
     direction = "both",
     test = "Chisq",
     data = music_data)
```

```
## Start:  AIC=27535.11
## top10 ~ weeks_in_charts + song_age + label
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## + n_playlists       1    26335 26349  1187.9 < 0.00000000000000022 ***
## + genre            10    26504 26536  1019.5 < 0.00000000000000022 ***
## + danceability      1    27256 27270   267.1 < 0.00000000000000022 ***
## + song_length       1    27335 27349   187.9 < 0.00000000000000022 ***
## + explicit          1    27376 27390   146.8 < 0.00000000000000022 ***
## + valence           1    27445 27459    77.7 < 0.00000000000000022 ***
## + liveness          1    27480 27494    42.9      0.00000000005728 ***
## + tempo             1    27504 27518    19.4      0.00001085601584 ***
## + speechiness       1    27510 27524    12.9             0.0003209 ***
## + instrumentalness  1    27516 27530     7.2             0.0071563 ** 
## + energy            1    27519 27533     3.8             0.0523575 .  
## <none>                   27523 27535                                  
## - song_age          1    27781 27791   258.3 < 0.00000000000000022 ***
## - label             3    27963 27969   439.7 < 0.00000000000000022 ***
## - weeks_in_charts   1    43159 43169 15635.8 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Step:  AIC=26349.16
## top10 ~ weeks_in_charts + song_age + label + n_playlists
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## + genre            10    25312 25346  1023.2 < 0.00000000000000022 ***
## + song_length       1    26086 26102   248.7 < 0.00000000000000022 ***
## + danceability      1    26112 26128   222.7 < 0.00000000000000022 ***
## + explicit          1    26175 26191   160.3 < 0.00000000000000022 ***
## + valence           1    26240 26256    95.2 < 0.00000000000000022 ***
## + liveness          1    26293 26309    41.7       0.0000000001046 ***
## + tempo             1    26314 26330    21.4       0.0000036320174 ***
## + speechiness       1    26322 26338    13.0             0.0003193 ***
## + instrumentalness  1    26329 26345     6.3             0.0118075 *  
## <none>                   26335 26349                                  
## + energy            1    26334 26350     1.1             0.2954805    
## - label             3    26565 26573   230.1 < 0.00000000000000022 ***
## - song_age          1    27044 27056   708.7 < 0.00000000000000022 ***
## - n_playlists       1    27523 27535  1187.9 < 0.00000000000000022 ***
## - weeks_in_charts   1    40541 40553 14206.0 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Step:  AIC=25345.92
## top10 ~ weeks_in_charts + song_age + label + n_playlists + genre
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## + song_length       1    25133 25169   178.5 < 0.00000000000000022 ***
## + danceability      1    25185 25221   127.3 < 0.00000000000000022 ***
## + explicit          1    25206 25242   106.0 < 0.00000000000000022 ***
## + valence           1    25278 25314    34.4        0.000000004499 ***
## + tempo             1    25301 25337    11.4              0.000753 ***
## + liveness          1    25302 25338     9.8              0.001713 ** 
## <none>                   25312 25346                                  
## + energy            1    25310 25346     1.7              0.195014    
## + instrumentalness  1    25310 25346     1.6              0.202913    
## + speechiness       1    25312 25348     0.0              0.884998    
## - label             3    25474 25502   161.7 < 0.00000000000000022 ***
## - song_age          1    25913 25945   600.6 < 0.00000000000000022 ***
## - genre            10    26335 26349  1023.2 < 0.00000000000000022 ***
## - n_playlists       1    26504 26536  1191.7 < 0.00000000000000022 ***
## - weeks_in_charts   1    39511 39543 14199.3 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Step:  AIC=25169.45
## top10 ~ weeks_in_charts + song_age + label + n_playlists + genre + 
##     song_length
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## + explicit          1    25029 25067   104.2 < 0.00000000000000022 ***
## + danceability      1    25050 25088    83.6 < 0.00000000000000022 ***
## + valence           1    25119 25157    14.6             0.0001309 ***
## + tempo             1    25121 25159    12.6             0.0003769 ***
## + liveness          1    25125 25163     8.1             0.0045244 ** 
## + instrumentalness  1    25131 25169     2.3             0.1276459    
## + energy            1    25131 25169     2.2             0.1340637    
## <none>                   25133 25169                                  
## + speechiness       1    25132 25170     1.4             0.2289231    
## - label             3    25273 25303   139.3 < 0.00000000000000022 ***
## - song_length       1    25312 25346   178.5 < 0.00000000000000022 ***
## - song_age          1    25647 25681   513.9 < 0.00000000000000022 ***
## - genre            10    26086 26102   953.0 < 0.00000000000000022 ***
## - n_playlists       1    26385 26419  1251.7 < 0.00000000000000022 ***
## - weeks_in_charts   1    39507 39541 14373.3 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Step:  AIC=25067.21
## top10 ~ weeks_in_charts + song_age + label + n_playlists + genre + 
##     song_length + explicit
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## + danceability      1    24948 24988    81.3 < 0.00000000000000022 ***
## + valence           1    25016 25056    13.6             0.0002280 ***
## + tempo             1    25017 25057    11.8             0.0005785 ***
## + liveness          1    25022 25062     7.4             0.0067056 ** 
## + energy            1    25026 25066     3.6             0.0574725 .  
## <none>                   25029 25067                                  
## + speechiness       1    25028 25068     1.6             0.2008558    
## + instrumentalness  1    25028 25068     1.3             0.2576454    
## - label             3    25130 25162   100.3 < 0.00000000000000022 ***
## - explicit          1    25133 25169   104.2 < 0.00000000000000022 ***
## - song_length       1    25206 25242   176.7 < 0.00000000000000022 ***
## - song_age          1    25542 25578   513.2 < 0.00000000000000022 ***
## - genre            10    25933 25951   904.0 < 0.00000000000000022 ***
## - n_playlists       1    26278 26314  1248.5 < 0.00000000000000022 ***
## - weeks_in_charts   1    39340 39376 14311.0 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Step:  AIC=24987.94
## top10 ~ weeks_in_charts + song_age + label + n_playlists + genre + 
##     song_length + explicit + danceability
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## + tempo             1    24928 24970    19.6           0.000009785 ***
## + liveness          1    24934 24976    13.5             0.0002356 ***
## + energy            1    24940 24982     8.3             0.0039206 ** 
## + speechiness       1    24945 24987     2.5             0.1106956    
## <none>                   24948 24988                                  
## + valence           1    24947 24989     0.7             0.4151639    
## + instrumentalness  1    24947 24989     0.6             0.4396889    
## - danceability      1    25029 25067    81.3 < 0.00000000000000022 ***
## - explicit          1    25050 25088   101.9 < 0.00000000000000022 ***
## - label             3    25059 25093   111.5 < 0.00000000000000022 ***
## - song_length       1    25081 25119   133.5 < 0.00000000000000022 ***
## - song_age          1    25405 25443   456.7 < 0.00000000000000022 ***
## - genre            10    25804 25824   856.0 < 0.00000000000000022 ***
## - n_playlists       1    26155 26193  1206.9 < 0.00000000000000022 ***
## - weeks_in_charts   1    39182 39220 14233.6 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Step:  AIC=24970.39
## top10 ~ weeks_in_charts + song_age + label + n_playlists + genre + 
##     song_length + explicit + danceability + tempo
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## + liveness          1    24915 24959    13.1             0.0002929 ***
## + energy            1    24917 24961    11.1             0.0008776 ***
## + speechiness       1    24925 24969     3.8             0.0510498 .  
## <none>                   24928 24970                                  
## + instrumentalness  1    24928 24972     0.5             0.4726447    
## + valence           1    24928 24972     0.2             0.6876102    
## - tempo             1    24948 24988    19.6           0.000009785 ***
## - danceability      1    25017 25057    89.0 < 0.00000000000000022 ***
## - explicit          1    25029 25069   100.8 < 0.00000000000000022 ***
## - label             3    25042 25078   113.1 < 0.00000000000000022 ***
## - song_length       1    25061 25101   133.0 < 0.00000000000000022 ***
## - song_age          1    25379 25419   450.2 < 0.00000000000000022 ***
## - genre            10    25771 25793   842.2 < 0.00000000000000022 ***
## - n_playlists       1    26134 26174  1205.9 < 0.00000000000000022 ***
## - weeks_in_charts   1    39149 39189 14220.7 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Step:  AIC=24959.27
## top10 ~ weeks_in_charts + song_age + label + n_playlists + genre + 
##     song_length + explicit + danceability + tempo + liveness
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## + energy            1    24899 24945    16.2            0.00005738 ***
## + speechiness       1    24911 24957     4.2             0.0393970 *  
## <none>                   24915 24959                                  
## + instrumentalness  1    24915 24961     0.6             0.4557895    
## + valence           1    24915 24961     0.0             0.9239797    
## - liveness          1    24928 24970    13.1             0.0002929 ***
## - tempo             1    24934 24976    19.1            0.00001211 ***
## - danceability      1    25010 25052    95.2 < 0.00000000000000022 ***
## - explicit          1    25015 25057    99.8 < 0.00000000000000022 ***
## - label             3    25029 25067   114.2 < 0.00000000000000022 ***
## - song_length       1    25045 25087   129.7 < 0.00000000000000022 ***
## - song_age          1    25363 25405   447.3 < 0.00000000000000022 ***
## - genre            10    25719 25743   803.4 < 0.00000000000000022 ***
## - n_playlists       1    26117 26159  1201.8 < 0.00000000000000022 ***
## - weeks_in_charts   1    39140 39182 14224.6 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Step:  AIC=24945.09
## top10 ~ weeks_in_charts + song_age + label + n_playlists + genre + 
##     song_length + explicit + danceability + tempo + liveness + 
##     energy
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## + speechiness       1    24894 24942     4.7               0.02962 *  
## + valence           1    24896 24944     2.6               0.10756    
## <none>                   24899 24945                                  
## + instrumentalness  1    24898 24946     0.8               0.36187    
## - energy            1    24915 24959    16.2            0.00005738 ***
## - liveness          1    24917 24961    18.2            0.00001954 ***
## - tempo             1    24922 24966    22.5            0.00000212 ***
## - explicit          1    25002 25046   102.5 < 0.00000000000000022 ***
## - danceability      1    25003 25047   104.1 < 0.00000000000000022 ***
## - label             3    25013 25053   113.8 < 0.00000000000000022 ***
## - song_length       1    25028 25072   128.9 < 0.00000000000000022 ***
## - song_age          1    25353 25397   454.3 < 0.00000000000000022 ***
## - genre            10    25711 25737   811.9 < 0.00000000000000022 ***
## - n_playlists       1    26103 26147  1204.0 < 0.00000000000000022 ***
## - weeks_in_charts   1    39113 39157 14214.1 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Step:  AIC=24942.35
## top10 ~ weeks_in_charts + song_age + label + n_playlists + genre + 
##     song_length + explicit + danceability + tempo + liveness + 
##     energy + speechiness
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## + valence           1    24892 24942     2.7               0.10031    
## <none>                   24894 24942                                  
## + instrumentalness  1    24893 24943     1.0               0.31346    
## - speechiness       1    24899 24945     4.7               0.02962 *  
## - energy            1    24911 24957    16.7          0.0000443660 ***
## - liveness          1    24913 24959    18.9          0.0000139497 ***
## - tempo             1    24918 24964    24.0          0.0000009465 ***
## - explicit          1    24997 25043   102.8 < 0.00000000000000022 ***
## - danceability      1    25001 25047   106.3 < 0.00000000000000022 ***
## - label             3    25006 25048   111.4 < 0.00000000000000022 ***
## - song_length       1    25027 25073   132.4 < 0.00000000000000022 ***
## - song_age          1    25353 25399   458.5 < 0.00000000000000022 ***
## - genre            10    25707 25735   813.0 < 0.00000000000000022 ***
## - n_playlists       1    26100 26146  1205.9 < 0.00000000000000022 ***
## - weeks_in_charts   1    39038 39084 14143.7 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Step:  AIC=24941.65
## top10 ~ weeks_in_charts + song_age + label + n_playlists + genre + 
##     song_length + explicit + danceability + tempo + liveness + 
##     energy + speechiness + valence
## 
##                    Df Deviance   AIC     LRT              Pr(>Chi)    
## <none>                   24892 24942                                  
## - valence           1    24894 24942     2.7               0.10031    
## + instrumentalness  1    24891 24943     0.9               0.34466    
## - speechiness       1    24896 24944     4.8               0.02777 *  
## - liveness          1    24910 24958    18.5           0.000016707 ***
## - energy            1    24911 24959    19.4           0.000010799 ***
## - tempo             1    24915 24963    23.0           0.000001661 ***
## - danceability      1    24978 25026    86.0 < 0.00000000000000022 ***
## - explicit          1    24995 25043   102.9 < 0.00000000000000022 ***
## - label             3    25003 25047   111.1 < 0.00000000000000022 ***
## - song_length       1    25018 25066   126.5 < 0.00000000000000022 ***
## - song_age          1    25351 25399   459.3 < 0.00000000000000022 ***
## - genre            10    25694 25724   802.2 < 0.00000000000000022 ***
## - n_playlists       1    26100 26148  1208.5 < 0.00000000000000022 ***
## - weeks_in_charts   1    39018 39066 14126.6 < 0.00000000000000022 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## 
## Call:  glm(formula = top10 ~ weeks_in_charts + song_age + label + n_playlists + 
##     genre + song_length + explicit + danceability + tempo + liveness + 
##     energy + speechiness + valence, family = binomial(link = "logit"), 
##     data = music_data)
## 
## Coefficients:
##          (Intercept)       weeks_in_charts              song_age  
##            -8.250268              0.012811             -0.001929  
##      labelSony Music  labelUniversal Music     labelWarner Music  
##             0.310207              0.500078              0.259754  
##          n_playlists          genreCountry    genreElectro/Dance  
##             0.000269              6.052952              4.617654  
##     genreGerman Folk       genreHipHop/Rap            genreother  
##             3.393965              4.565679              5.429574  
##             genrePop              genreR&B           genreReggae  
##             4.007876              5.019629              4.456428  
##            genreRock       genreSoundtrack           song_length  
##             4.142870              4.896580             -0.289024  
##     explicitexplicit          danceability                 tempo  
##            -0.707333              0.013872              0.002971  
##             liveness                energy           speechiness  
##             0.005182             -0.005303             -0.003541  
##              valence  
##             0.001534  
## 
## Degrees of Freedom: 66795 Total (i.e. Null);  66771 Residual
## Null Deviance:	    43430 
## Residual Deviance: 24890 	AIC: 24940
```
<br>
<br>

-->
