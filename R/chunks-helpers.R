sections <- function() {
  c("front","body","back","title","doi","categories",
    "authors","keywords",
    "abstract","executive_summary","refs","refs_dois",
    "publisher","journal_meta","article_meta",
    "acknowledgments","permissions","history")
}

get_what <- function(data, what, from){
  if ( any(what == "all") ) what <- sections()
  stats::setNames(lapply(what, function(z){
    switch(z,
           front = front(data, from),
           body = body(data, from),
           back = back(data, from),
           title = title(data, from),
           abstract = abstract(data, from),
           executive_summary = exec_summary(data, from),
           doi = doi(data, from),
           categories = categories(data, from),
           authors = authors(data, from),
           keywords = keywords(data, from),
           refs_dois = refs_dois(data, from),
           refs = refs(data, from),
           publisher = publisher(data, from),
           journal_meta = journal_meta(data, from),
           article_meta = article_meta(data, from),
           acknowledgments = acknowledgments(data, from),
           permissions = permissions(data, from),
           history = history(data, from)
    )
  }), what)
}