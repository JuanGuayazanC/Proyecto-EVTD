# ========= CARGA ROBUSTA DEL CSV =========

ruta_csv <- "icfes_data.csv"

# Verificar existencia del archivo EN LA CARPETA DE LA APP
if (!file.exists(ruta_csv)) {
  stop(paste0(
    "\n\n❌ ERROR: El archivo '", ruta_csv, "' NO existe en la carpeta donde está tu app.\n",
    "Carpeta actual: ", getwd(), "\n",
    "Coloca icfes_data.csv dentro de: ", getwd(), "\n"
  ))
}

# Intento 1: leer con coma
icfes <- try(readr::read_csv(ruta_csv, show_col_types = FALSE), silent = TRUE)

# Si falló o solo trae 1 columna, leer con ;
if (inherits(icfes, "try-error") || ncol(icfes) == 1) {
  icfes <- readr::read_delim(ruta_csv, delim = ";", show_col_types = FALSE)
}

# Validar que la columna exista
if (!"PUNT_GLOBAL" %in% names(icfes)) {
  stop("❌ ERROR: La columna 'PUNT_GLOBAL' no existe en icfes_data.csv.\nRevisa nombres con: names(icfes)")
}

# Filtrar puntajes válidos
icfes <- subset(icfes, PUNT_GLOBAL > 0 & !is.na(PUNT_GLOBAL))


