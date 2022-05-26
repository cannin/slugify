# slugify
## Overview

Takes a string and makes a user friendly and URL valid string. 

**This package has no dependencies and relies on base R functions**

## Installation
```R
library("devtools")
devtools::install_github("cannin/slugify")
```  

## Usage
```R
library(slugify)
slugify("HELLO WORLD!!!") # Returns: "hello_world"
slugify("HELLO+WORLD", non_alphanum_replace="_") # Returns: "hello_world"
```
