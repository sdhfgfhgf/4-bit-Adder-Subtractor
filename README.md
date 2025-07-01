🔢 APSC 262 – 4-Bit Calculator in Verilog

This repository contains Verilog source files for a simple 4-bit signed calculator. The calculator can perform addition and subtraction using ripple-carry logic and detects overflow conditions. It was developed for Lab 3 in APSC 262 – Digital Logic Design.

⸻

📁 Folder Structure

.
├── Four_bit_adder/four_bit_adder.v   # 4-bit Ripple-Carry Adder
├── Full-adder/FA.v                   # Full Adder module
├── Half-Adder/HA.v                   # Half Adder module
├── Add-Sub.v                 # Top-level 4-bit calculator module (addition + subtraction)

Each module is logically separated for modular design and clarity.

⸻

📦 Files & Descriptions

ha/HA.v
	•	A standard half-adder module.
	•	Takes in two 1-bit inputs and outputs a 1-bit sum and carry.

fa/FA.v
	•	Full-adder module built using two half-adders and an OR gate.
	•	Adds three 1-bit values (A, B, Cin) and outputs a sum and carry-out.

four_bit_adder/four_bit_adder.v
	•	A 4-bit ripple-carry adder composed of four cascaded full-adders.
	•	Adds two 4-bit binary numbers and an optional carry-in bit.

Add-Sub.v
	•	Top-level calculator module that handles both addition and subtraction.
	•	Uses XOR gates to compute the 2’s complement of the second operand for subtraction.
	•	Controlled via a single Add/Sub switch bit:
	•	0 = addition
	•	1 = subtraction

⸻

🛠️ How to Use

➤ Inputs

Use SW[8:0] as follows:
	•	SW[8:5] – Operand A (4-bit signed)
	•	SW[4:1] – Operand B (4-bit signed)
	•	SW[0] – Operation Mode:
	•	0 → A + B
	•	1 → A - B

➤ Outputs
	•	LEDG[3:0] – Result of the operation
	•	Overflow detection may be added using additional logic if needed (not shown here).

⸻

▶️ Simulation & Deployment
	1.	Set up a Quartus II project.
	2.	Place all .v files in the same directory or ensure correct module paths.
	3.	Compile the design and assign the appropriate switches and LEDs for testing on a DE-series FPGA board.
	4.	Recommended test cases:
	•	A = 1111 (−1), B = 0001 (+1), Sub = 0 → Output = 0000
	•	A = 1000 (−8), B = 0001 (+1), Sub = 1 → Output = 0111

⸻

📷 Demonstration

Example case from Lab:

A = 1111, B = 0110, Add/Sub = 1
Output: 1001 → LEDG0 and LEDG3 light up.

<img src="Image/HEIF Image.jpeg" alt="demo" width="50%" />

⸻
