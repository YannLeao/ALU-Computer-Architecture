# Projeto ULA - Porta AND e Half Adder em VHDL

Este projeto faz parte da disciplina **Arquitetura de Computadores** e consiste na implementação de duas unidades funcionais básicas de uma ULA (Unidade Lógica e Aritmética) utilizando a linguagem **VHDL**:

- **Porta AND**: recebe duas entradas lógicas (`a` e `b`) e gera uma saída `y` que representa a conjunção lógica das entradas.
- **Half Adder**: circuito combinacional que soma dois bits (`a` e `b`) e gera duas saídas:
  - `y` (soma dos bits, operação XOR)
  - `carry_o` (transporte ou carry, operação AND)

## Estrutura do projeto

- `and_gate.vhdl` — definição da porta AND
- `halfAdder.vhdl` — definição do Half Adder
- `and_gate_tb.vhdl` — testbench para a porta AND (opcional)
- `halfAdder_tb.vhdl` — testbench para o Half Adder
- `.vscode/tasks.json` — arquivo para automatizar a simulação no VSCode (opcional)

## Como simular

Para simular os circuitos com o GHDL e visualizar as formas de onda com o GTKWave, siga os comandos:

```bash
# Analisar os arquivos VHDL
ghdl -a and_gate.vhdl
ghdl -a halfAdder.vhdl
ghdl -a halfAdder_tb.vhdl

# Elaborar o testbench
ghdl -e halfAdder_tb

# Rodar a simulação gerando arquivo VCD
ghdl -r halfAdder_tb --vcd=wave.vcd

# Visualizar o arquivo VCD no GTKWave
gtkwave wave.vcd
