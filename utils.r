### David Ross Hall --- created on 2022-09-02


# Function to add column indicating if molecule obeys Lipinski's rules
is_lipinski <- function(df, h_donor, h_accept, mw, logp){

  df <- df %>%
    mutate(lipinski = case_when(.data[[h_donor]] <= 5 & .data[[h_accept]] <= 10 & .data[[mw]] <= 500 & .data[[logp]] <= 5 ~ TRUE, TRUE ~ FALSE))

  df

}
