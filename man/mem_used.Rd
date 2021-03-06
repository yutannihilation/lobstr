% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mem.R
\name{mem_used}
\alias{mem_used}
\title{How much memory is currently used by R?}
\usage{
mem_used()
}
\description{
\code{mem_used()} wraps around \code{gc()} and returns the exact number of bytes
currently used by R. Note that changes will not match up exactly to
\code{\link[=obj_size]{obj_size()}} as session specific state (e.g. \link{.Last.value}) adds minor
variations.
}
\examples{
prev_m <- 0; m <- mem_used(); m - prev_m

x <- 1:1e6
prev_m <- m; m <- mem_used(); m - prev_m
obj_size(x)

rm(x)
prev_m <- m; m <- mem_used(); m - prev_m

prev_m <- m; m <- mem_used(); m - prev_m
}
