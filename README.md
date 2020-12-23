# libasm
The aim of this project is to get familiar with assembly language.

###  Here's the line I use to get one of the nasm builds installed on macOS:

curl https://www.nasm.us/pub/nasm/releasebuilds/2.14.03rc2/macosx/nasm-2.14.03rc2-macosx.zip -o nasm.zip && unzip nasm.zip && rm nasm.zip && mv nasm* nasm && export PATH=~/nasm:$PATH

## SOme ressources :

full tutorials:

https://cs.lmu.edu/~ray/notes/nasmtutorial/

https://www.tutorialspoint.com/assembly_programming/index.htm

others:

https://www.cs.virginia.edu/~evans/cs216/guides/x86.html

http://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf

https://www.cs.uaf.edu/2015/fall/cs301/lecture/09_16_stack.html

https://docs.oracle.com/cd/E26502_01/html/E28388/eoiyg.html

http://www.egr.unlv.edu/~ed/assembly64.pdf

https://www.ic.unicamp.br/~pannain/mc404/aulas/pdfs/Art%20Of%20Intel%20x86%20Assembly.pdf

http://ps-2.kev009.com/wisclibrary/aix52/usr/share/man/info/en_US/a_doc_lib/aixassem/alangref/pseudo_ops_ovrvw.htm

https://medium.com/@jain.sm/invoking-a-system-call-via-assembly-84c9f8832105

https://medium.com/@jain.sm/invoking-a-system-call-via-assembly-84c9f8832105

## Assembly language :

Assembly language is a low-level programming language for a computer, or other programmable device .
A low-level language is a type of programming language that contains basic instructions recognized by a computer.

## Structure of a NASM Program :

NASM is line-based. Most programs consist of directives followed by one or more sections. Lines can have an optional label. Most lines have an instruction followed by zero or more operands.

![structure nasm](https://cs.lmu.edu/~ray/images/nasmstructure.png)

### the data section :

The data section is used for declaring initialized data or constants. This data does not change at runtime. You can declare various constant values, file names, or buffer size, etc., in this section.

### the text section :

The text section is used for keeping the actual code. This section must begin with the declaration global _start, which tells the kernel where the program execution begins.

### the bss section :

The bss section is used for declaring variables.

## Syntax of Assembly Language Statements :

Programs written in assembly language consist of a sequence of source statements. Each source statement consists of a sequence of ASCII characters ending with a carriage return. Each source statement may include up to four fields: a label, an operation (instruction mnemonic or assembler directive), an operand, and a comment.

#### Label field :

Labels mark places in a program which other instructions and directives reference .

#### Instructions Field :

The operation code field / Instructions Field of an assembly language statement identifies the statement as a machine instruction, an assembler directive, or a macro defined by the programmer:

* A machine instruction is indicated by an instruction mnemonic.  An assembly language statement that contains an instruction mnemonic is intended to produce a single executable machine instruction.  The operation and use of each instruction is described in the manufacturer's user manual.

* An assembler directive (or pseudo-op) performs some function during the assembly process.  It doesn't produce any executable code, but it may assign space for data in the program.

* Macros are defined with the .macro directive

check this out https://www.slideshare.net/dattatraygandhmal/assemblers-33585130

#### Operand field 

The operand field's interpretation is dependent on the contents of the operation field The operand field, if required, must follow the operation field, and must be preceded bat least one white-space character. The operand field may contain a symbol, an expressionor a combination of symbols and expressions separated by commas.

##### The Three Kinds of Operands :

* Register Operands :

Register is a temporary storage or working location built into the CPU itself (separate from memory). they are processor components that hold data and address.  

The 16 integer registers are 64 bits wide and are called: click [here](https://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture) for more informations.

R0  R1  R2  R3  R4  R5  R6  R7  R8  R9  R10  R11  R12  R13  R14  R15

RAX RCX RDX RBX RSP RBP RSI RDI

![register use](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fbf260acc-e649-49d7-af6c-0d4ace24afa7%2FScreen_Shot_2020-12-11_at_12.40.51_PM.png?table=block&id=79ef15fd-d49d-4f77-8998-3d2084ed4996&width=2560&userId=&cache=v2)











