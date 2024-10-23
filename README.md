# Desafio lógica de programação
Dado um conjunto de caracteres, você precisará extrair os "diamantes" ```<>``` e as "areias" ```.``` da expressão, e no final exibir a quantidade de diamantes extraídos.

Expressão:
```
<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>
```

Requisitos:
* Extrair os diamantes e areias da expressão até que não haja mais o que ser extraído.
* Exibir a quantidade de diamantes extraídos.
* O projeto deve ser disponibilizado em um repositório aberto no GitHub

Dicas:
* O diamante é a junção dos sinais menor < e maior > sem que não haja nada entre eles.
* Areia é o ponto final.
* Considerando a entrada ```<<>>><``` Ao extrair um diamante ```<>```, é formado um novo diamante para ser extraído ```<>><```


# Comandos

### Buildando a imagem
```docker build -t diamond .```

### Rodando o linter
```docker run diamond standard```

### Rodando os testes
```docker run diamond test```