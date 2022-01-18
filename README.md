# Taskell-bachelor-thesis
Bachelor thesis on my programming language Taskell. Written in LuaLatex.

Built using vscode extension LaTeX Workshop.
Settings.json for building:

``` JSON
{
    "latex-workshop.view.pdf.viewer": "tab",
    "latex-workshop.latex.recipe.default": "first",
    "latex-workshop.latex.recipes":[
        {
            "name": "lualatex->biber->lualatex",
            "tools": ["lualatex", "biber","lualatex"]
        }
    ],
    "latex-workshop.latex.tools": [
        {
            "name": "lualatex",
            "command": "lualatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "-shell-escape",
                "%DOC%"
            ]
        },
        {
            "name": "biber",
            "command": "biber",
            "args": ["%DOC%"]
        },
	]
}
```