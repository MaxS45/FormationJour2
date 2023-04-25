decennie_a_partir_annee <- function(annee) {
  return(annee - annee %% 10)
}

#' calcul de statistique agrégée au choix
#'
#' @param x : sur laquelle calculer la statistique choisie
#' @param statistique : statistique à calculer
#'
#' @return valeur
#' @export
#'
#' @examples calculer_stat_agregee(rnorm(10))
#' calculer_stat_agregee(rnorm(10), "ecart-type")
#' calculer_stat_agregee(rnorm(10), "variance")

calculer_stat_agregee <- function(x, statistique = "moyenne", ...) {
  if (statistique == "moyenne") {
    stat_agregee <- mean(x, na.rm = TRUE, ...)
  } else if (statistique == "ecart-type" || statistique == "sd") {
    stat_agregee <- sd(x, na.rm = TRUE, ...)
  } else if (statistique == "variance") {
    stat_agregee <- var(x, na.rm = TRUE, ...)
  }
  return(x)
}
