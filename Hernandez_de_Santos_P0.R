#Encuentra (usando librerías especializadas) la secuencia correspondiente de aminoácidos
install.packages("BioStrings")
library(Biostrings)
install.packages("BiocManager")
BiocManager::install("Biostrings")
library(BiocManager)
library(Biostrings)



secuencias <-readRNAStringSet("first (1).fasta")
aa<-translate(secuencias)
aa
#
#PROBLEMAS ROSALIND
#1#Dada la siguiente secuencia(string), devuelve 4 números enteros que correspondan a la cantidad de A,T,G,C en la secuencia
rosa<-c("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
#acá tengo un objeto con la secuencia que me dio un problema de rosalind
nchar(rosa)
#así sé cuántos caracteres tiene el objeto rosa
#el objeto "separado" contiene a los caracteres de rosa separados caracter por caracter, en forma de una lista
#le dije qué objeto y que los separe por "", o sea, por caracter
separado<-strsplit(rosa, "")
separado
#Con strsplit separé caracter por caracter para poder contarlos mediante la creación de una tabla con table
conteo<-table(separado)
#ahora tengo un onjeto que me hizo una tabla a partir de la lista que genéré de los caracteres de la secuencia, 
#es una tabla con la frecuencia de cada caracter
conteo#imprimí la tabla
sum(conteo)
#para comrpobar que sí de 70
#ahora usando librerías especializadas
rosita<-DNAStringSet(rosa)
#está leyendo a rosa (el objeto que hice con la secuencia) como una secuencia de ADN
kuanto<-letterFrequency(rosita, letters = c("A","T","G","C"))
#Acá estoy usando letterFrequency para que me cuente las frecuencias de A,T,G,C en el objeto rosita
kuanto#este objeto contiene las frecuencias de los nucleótidos 




#PROBLEMA 2 ROSALIND
#Dada una secuencia de ADN, su secuencia de ARN transcrita se forma reemplazando todas las apariciones de 'T' con 'U' 
#Dado: Una cadena de ADN que tiene una longitud máxima de 1000 nucleótidos
#Retorno: La cadena de ARN correspondiente

rosenDNA<-("GATGGAACTTGACTACGTAAATT")
#mi secuencia de ADN
rosenRNA<-gsub("T", "U", rosenDNA)
#un nuevo objeto en el que con la función gsub
#voy a sustituír las timinas de mi secuencia de DNA por uracilos 
rosenRNA
#imprimo el objeto anterior que contiene la secuencia de RNA 


