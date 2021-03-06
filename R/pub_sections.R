#' Sections
#' 
#' The possible sections of an XML article that are supported
#' for retrieval
#' 
#' @export
#' @return character vector
#' @examples
#' pub_sections()
pub_sections <- function() {
  c("front","body","back","title","doi","categories",
    "authors","aff","keywords",
    "abstract","executive_summary","refs","refs_dois",
    "publisher","journal_meta","article_meta",
    "acknowledgments","permissions","history")
}
