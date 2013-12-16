# language: pt
# encoding: utf-8

Funcionalidade: Baralho

  Cenário: Três do mesmo tipo ganha de dois pares

    Dado uma mão com as seguintes cartas
    | valor | naipe |
    | 2 | CORACAO |
    | 2 | ESPADAS |
    | 2 | PAUS |
    | 4 | OUROS |
    | A | CORACAO |

    E outra mão com as seguintes cartas
    | valor | naipe |
    | 2 | CORACAO |
    | 2 | ESPADAS |
    | 4 | PAUS |
    | 4 | OUROS |
    | A | CORACAO |
    
    Então a primeira mão deve ganhar da segunda mão