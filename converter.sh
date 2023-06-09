#!/bin/bash

# Lista de arquivos PDF a serem convertidos
pdf_files=(arquivo1.pdf arquivo2.pdf... arquivo10.pdf)

# Loop para converter cada arquivo PDF em JPEG
for pdf_file in "${pdf_files[@]}"
do
    echo "Convertendo ${pdf_file} para JPEG..."
    convert -density 300 "${pdf_file}" -quality 90 "${pdf_file%.pdf}.jpg"
done

