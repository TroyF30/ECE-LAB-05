# Lab 05 - Combinatorial Logic



In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name

Troy Fowers & Peter Krahn

## Lab Summary

We first started by finding the K-Maps of two truth tables we were given. Table A was used to find the 
"max-terms" to make the equation for Table A, and we used a K-map of Table B to make the equation for 
Table B. After we did all of this, we wrote the equations into the circuit files, and implemented the 
circuits  into the top.v file. After we did this, we changed the constraints file to allow access to the 
switches and the leds that we are using, so when we go to the Basys3 board or the simulation, the led's 
turn on when we flip certain switches. We then Ran a behavioral simulation, and when the tests passed in 
that, we generated the bitstream and the Basys3 board worked

## Lab Questions

### 1 - Explain the role of the Top Level file.

The role of the top level file is to allow the circuit_a and circuit_b files to connect to each other, 
and to allow the inputs of the switches to turn on the led lights on the Basys3 board. We also use a wire 
to connect the two circuits, because circuit b needs to use the output of circuit a as its first input.

### 2 - Explain the function of the Constraints file.

The function of the constraints file is to allow the top.v file access to the leds and switches on the 
Basys3 board. If we didn't have the constraints file, we would have to manually configure the leds and 
switches. 

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?

The selection wasn't the worst choice, but the Maxterm on circuit_a was probably the wrong choice, as 
the equation could have been simplified to a single OR gate using only the minterms. This would have 
made it A | ~D. The minterm choice for the circuit_b was the correct choice however, due to us being 
able to connect multiple groups of four in the K-Map. So, we would have stuck with the selection that
was given to us. 

