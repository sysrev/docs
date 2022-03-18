
#' render the ontox-dev static site
#' @param title the title to give the site
render_site = function(title="Ontox-Dev") {
  # rmarkdown::render_site()

  pkgdown::build_home_index()

  # root = xml2::read_html("./docs/index.html")

  # m_text <- function(node,text){ xml2::xml_text(node) <- text }           # modify node text
  # m_att  <- function(node,att,value){ xml2::xml_attr(node,att) <- value } # modify attribute

  # # copy_html    <- function(){ # each article should live in a folder w/ an index.html
  # #   inputs  = list.files("_posts",pattern="*.html",recursive = T,full.names = F)
  # #   outputs = inputs |> map_chr(glue::glue)
  # # }

  # update_title <- function(){
  #   xml2::xml_find_all(root,"//title") |> m_text(title)
  #   xml2::xml_find_all(root,"//meta[@property='og:title']") |> m_att("content",title)
  #   xml2::xml_find_all(root,"//meta[@property='twitter:title']") |> m_att("content",title)
  # }

  # update_title()
  # xml2::write_xml(root, "./docs/index.html")
}

render_article = function(pkg = ".", title, input, path){
  pkg      <- pkgdown:::as_pkgdown(".")
  filename <- fs::path_abs(input)
  body     <- pkgdown:::markdown_body(filename, strip_header=TRUE, pkg=pkg)
  data     <- list(pagetitle=title, body=body, filename=filename, source=NULL)

  cli::cat_line("Rendering ", pkgdown:::src_path(fs::path_rel(filename, pkg$src_path)))
  render_page(pkg,"title-body",data=data,path=path)
}

render_page <- function (pkg = ".", name, data, path = "", depth = NULL, quiet = FALSE){
  pkg   <- as_pkgdown(pkg)
  depth <- if (is.null(depth)){ length(strsplit(path, "/")[[1]]) - 1L}else{depth}
  html  <- render_page_html(pkg, name = name, data = data, depth = depth)

  pkgdown:::tweak_page(html, name, pkg = pkg)
  pkgdown:::activate_navbar(html, data$output_file %||% path, pkg)

  rendered <- as.character(html, options = character())
  pkgdown:::write_if_different(pkg, rendered, path, quiet = quiet)
}

render_page_html <- function (pkg, name, data = list(), depth = 0L){
  data                 <- utils::modifyList(data_template(pkg, depth = depth), data)
  pieces               <- c("head", "in-header", "before-body", "navbar", "content", "footer", "after-body")
  templates            <- purrr::map_chr(pieces, pkgdown:::find_template, name = name,pkg = pkg)
  components           <- purrr::map(templates, pkgdown:::render_template, data = data)
  components           <- purrr::set_names(components, pieces)
  components$template  <- name
  components$lang      <- pkg$lang
  components$translate <- data$translate
  template             <- pkgdown:::find_template("layout", name, pkg = pkg)
  rendered             <- pkgdown:::render_template(template, components)
  xml2::read_html(rendered, encoding = "UTF-8")
}
