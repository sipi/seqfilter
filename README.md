# Sequence Filter

A standard input filter command based on a sequence of numbers

## SYNOPSIS

seqfilter LAST <br/>
seqfilter FIRST LAST<br/>
seqfilter FIRST INCREMENT LAST

## DESCRIPTION

Filter words given on stdin that doesn't contains a number in the sequence. 

## EXAMPLE

echo p1.jpg p2.jpg p3.jpg p5.jpg p6.jpg p7.jpg | seqfilter 3 6 <br/>
     p3.jpg p5.jpg p6.jpg
