# Contraste Claro

[English](README.md)

Um tema claro para o VS Code focado em contraste confortável para leitura e em destacar as informações importantes.

- Todas as cores de sintaxe atendem ao padrão WCAG AA (contraste ≥ 4,5:1) em relação ao fundo do editor.
- Erros, avisos, resultados de busca, alterações do git e pares de colchetes recebem destaques fortes e distintos.
- Inclui as cores do terminal integrado.

## Instalação

```bash
./build.sh
```

O script empacota o tema como `.vsix` (sem precisar do `vsce`) e instala com `code --install-extension`. Depois, escolha **Contraste Claro** com `Ctrl+K Ctrl+T`.

## Edição

As cores ficam em `themes/contraste-claro.json`. Aumente a `version` no `package.json` e rode `./build.sh` de novo para aplicar as mudanças.
