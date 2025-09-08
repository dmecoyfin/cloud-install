options(repos = c("https://cloud.r-project.org/"))
options(Ncpus = 4)

require("pak")
pak::pkg_install( c("duckdb","duckplyr") )


quit( save="no" )
