# Projeto ULA - Portas Lógicas, Half Adder e ALU em VHDL

Este projeto foi desenvolvido como parte da disciplina de Arquitetura de Computadores e tem como objetivo a implementação de blocos fundamentais de uma ULA (Unidade Lógica e Aritmética) utilizando a linguagem VHDL.

## Estrutura do Projeto

```
projeto/
├── And_Gate/
│   ├── and_gate.vhdl
│   ├── and_gate_tb.vhdl
│   └── .vscode/tasks.json
│
├── Half_Adder/
│   ├── half_adder.vhdl
│   ├── half_adder_tb.vhdl
│   └── .vscode/tasks.json
│
├── Arithmetic_Logic_Unit/
│   ├── alu.vhdl
│   ├── alu_tb_1bit.vhdl
│   ├── alu_tb_4bit.vhdl
│   └── .vscode/tasks.json
```

## Parte 1 – Porta AND

A porta AND recebe duas entradas binárias (a, b) e produz a saída y = a AND b.

Arquivos:
- `and_gate.vhdl`: implementação da porta AND
- `and_gate_tb.vhdl`: testbench para simulação

## Parte 2 – Meio Somador (Half Adder)

O meio somador realiza a soma de dois bits (a, b).

Entradas: a, b  
Saídas:
- y = a XOR b
- carry_o = a AND b

Arquivos:
- `half_adder.vhdl`: implementação do meio somador
- `half_adder_tb.vhdl`: testbench para simulação

## Parte 3 – ULA de 1 e 4 bits

A ALU realiza operações lógicas e aritméticas de 1 bit, podendo ser instanciada para formar uma ALU de 4 bits.

Operações suportadas (definidas por um seletor de 2 bits):
- "00": AND
- "01": ADD (com carry_in)
- "10": SUB (com carry_in)
- "11": OR

Arquivos:
- `alu.vhdl`: implementação da ALU de 1 bit
- `alu_tb_1bit.vhdl`: testbench da ALU de 1 bit
- `alu_tb_4bit.vhdl`: testbench da ALU de 4 bits

## Simulação com GHDL e GTKWave

Execute os comandos na pasta do componente a ser testado.

1. Analisar os arquivos VHDL:

```
ghdl -a arquivo.vhdl
```

2. Elaborar o testbench:

```
ghdl -e nome_do_testbench
```

3. Executar a simulação e gerar arquivo VCD:

```
ghdl -r nome_do_testbench --vcd=wave.vcd
```

4. Visualizar no GTKWave:

```
gtkwave wave.vcd
```

## Autores

- Nome do Autor 1
- Nome do Autor 2
