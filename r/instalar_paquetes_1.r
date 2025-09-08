options(repos = c("https://cloud.r-project.org/"))
options(Ncpus = 4)

install.packages( "pak",  dependencies= TRUE, INSTALL_opts="--no-multiarch" )
require("pak")

require("bspm")
bspm::disable()
paq1 <- c("data.table", "rpart", "yaml", "httr", "devtools", "yaml", "rlist")
paq2 <- c("magrittr", "stringi", "curl", "openssl", "roxygen2", "ranger")
paq3 <- c("dplyr", "caret", "covr", "lintr", "tidyverse", "tidyr", "shiny")
pag4 <- c("ggplot2", "plotly", "mlflow")

paquetes <-  c( paq1, paq2, paq3, paq4, paq5 )
pak::pkg_install( paquetes )


library( "devtools" )
devtools::install_github("IRkernel/IRkernel", force=TRUE, INSTALL_opts="--no-multiarch" )
devtools::install_github("krlmlr/ulimit", force=TRUE, INSTALL_opts="--no-multiarch" )

quit( save="no" )