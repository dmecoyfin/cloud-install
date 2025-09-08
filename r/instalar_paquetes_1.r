options(repos = c("https://cloud.r-project.org/"))
options(Ncpus = 4)

install.packages( "pak",  dependencies= TRUE, INSTALL_opts="--no-multiarch" )
require("pak")
pak::pkg_install( "mlflow" )


library( "devtools" )
devtools::install_github("IRkernel/IRkernel", force=TRUE, INSTALL_opts="--no-multiarch" )
devtools::install_github("krlmlr/ulimit", force=TRUE, INSTALL_opts="--no-multiarch" )

quit( save="no" )