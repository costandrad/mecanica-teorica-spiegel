meu-livro/
├── typst.toml                # Configurações do projeto (se aplicável)
├── main.typ                  # Arquivo principal que importa todo o conteúdo
├── template.typ              # Template ou estilo principal do livro
├── metadata.typ              # Título, autor, data, etc.
├── config.typ                # Definições de macros, cores, fontes, etc.
├── frontmatter/
│   ├── capa.typ              # Capa do livro
│   ├── dedicatória.typ       # (Opcional)
│   ├── agradecimentos.typ    # (Opcional)
│   └── sumario.typ           # Geração do sumário
├── chapters/
│   ├── capitulo01.typ
│   ├── capitulo02.typ
│   └── ...
├── appendices/
│   ├── apendiceA.typ
│   └── ...
├── assets/
│   ├── imagens/
│   │   ├── figura1.png
│   │   └── ...
│   ├── fontes/
│   └── dados/                # Arquivos CSV ou dados usados no livro
└── bibliografia.bib          # Arquivo BibTeX se estiver usando citações
