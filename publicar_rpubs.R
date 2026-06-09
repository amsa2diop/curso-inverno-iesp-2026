# Script para publicar os dois tutoriais no RPubs
# Execute este script no RStudio ou via Rscript após autenticar

library(rsconnect)

base_dir <- "C:/Users/Amsatou Diop/OneDrive - LEME LABORATORIO PARA REDUCAO DA VIOLENC/Pessoal/IESP/Curso Inverno"

# --- Tutorial completo (professor) ---
rsconnect::rpubsUpload(
  title       = "Como Trabalhar com Dados Raciais no Brasil — IESP-UERJ 2026",
  contentFile = file.path(base_dir, "tutorial_dados_raciais_iesp.html"),
  originalDoc = file.path(base_dir, "tutorial_dados_raciais_iesp.Rmd")
)

# --- Tutorial do aluno ---
rsconnect::rpubsUpload(
  title       = "Dados Raciais no Brasil — Exercícios (IESP-UERJ 2026)",
  contentFile = file.path(base_dir, "tutorial_dados_raciais_alunos.html"),
  originalDoc = file.path(base_dir, "tutorial_dados_raciais_alunos.Rmd")
)

# Os URLs gerados aparecem no console após a execução.
# Cole-os no README.md do repositório GitHub.
