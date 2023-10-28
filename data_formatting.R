library(openxlsx)


csv_to_xls <- function(csv_path, output_folder) {
  # Read the CSV file
  df <- read.csv(csv_path, stringsAsFactors = FALSE)
  
  # Create an XLS file name based on the CSV name
  xls_name <- paste0(tools::file_path_sans_ext(basename(csv_path)), ".xls")
  
  # Write to XLS format
  write.xlsx(df, file.path(output_folder, xls_name))
}

# Specify the directory containing your CSV files
input_folder <- "/Users/charlotteward/Desktop/good samples _ dont delete/samples"

# Specify the directory where you want to save your XLS files
output_folder <- "/Users/charlotteward/Desktop/good samples _ dont delete/xls_Samples"

# Get a list of all CSV files in the directory
csv_files <- list.files(input_folder, pattern = "\\.csv$", full.names = TRUE)

# Convert all CSV files to XLS format
lapply(csv_files, csv_to_xls, output_folder = output_folder)


library(readxl)

library(readxl)
library(openxlsx)

xls_to_xlsx <- function(xls_path, output_folder) {
  # Read the XLS file
  df <- read_excel(xls_path)
  
  # Create an XLSX file name based on the XLS name
  xlsx_name <- paste0(tools::file_path_sans_ext(basename(xls_path)), ".xlsx")
  
  # Write to XLSX format
  write.xlsx(df, file.path(output_folder, xlsx_name))
}

# Specify the directory containing your XLS files
input_folder <- "/Users/charlotteward/Documents/Otolith_Analysis/Session/standards"

# Specify the directory where you want to save your XLSX files
output_folder <- "/Users/charlotteward/Documents/Otolith_Analysis/Session/xlsx standards"

# Get a list of all XLS files in the directory
xls_files <- list.files(input_folder, pattern = "\\.xls$", full.names = TRUE)

# Convert all XLS files to XLSX format
lapply(xls_files, xls_to_xlsx, output_folder = output_folder)

