# Reymon Conceptual Banking System (RCBS)

## Purpose

This software was created for my CV and to demonstrate that I know Cobol.
Secondarily, I am taking advantage of this opportunity so that anyone
interested in learning Cobol can study the code without any inconvenience.

## Compilation Flow

```mermaid
flowchart

db("Library Reymon Database")
core("Library Reymon Core")
main("main.cbl")

db --> cob2.1(cob2) --> ar.1(ar) --> libreydb.a
core --> cob2.2(cob2) --> ar.2(ar) --> libreycore.a
main --> main.o

libreydb.a & libreycore.a & main.o --> cob2.3(cob2) --> rcbs

```

## Operation of the Reymon database library (libreydb)

```mermaid
flowchart

REYDB_INIT("Reymon Database Init Function \(REYDB\-INIT\)")
```