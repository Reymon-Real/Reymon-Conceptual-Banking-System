# Reymon Conceptual Banking System (RCBS)

## Purpose

This software was created for my CV and to demonstrate that I know Cobol.
Secondarily, I am taking advantage of this opportunity so that anyone
interested in learning Cobol can study the code without any inconvenience.

## Operation

```mermaid
flowchart

db("Library Reymon Database")
core("Library Reymon Core")
main("main.cbl")

db --> libreydb.a
core --> libreycore.a
main --> main.o

libreydb.a & libreycore.a & main.o --> cob2 --> rcbs

```