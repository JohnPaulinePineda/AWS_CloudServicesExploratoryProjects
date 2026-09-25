$notebook = Get-ChildItem -Filter "*.ipynb" | Select-Object -First 1

jupyter nbconvert `
    --to html `
    --output-dir=docs `
    --output=index `
    $notebook.FullName