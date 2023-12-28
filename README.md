# 8086 Assembly Code for Seven Segment Display

This assembly code takes a single-digit numeric input from the user (between 1 and 9) and displays the corresponding 8-bit binary representation in the format of a seven-segment display.

## Seven Segment Table

The binary values for each digit (0-9) in seven-segment format are defined as follows:

- `seven0`: 01111110
- `seven1`: 00110000
- `seven2`: 01101101
- `seven3`: 01111001
- `seven4`: 00110011
- `seven5`: 01011011
- `seven6`: 01011111
- `seven7`: 01110000
- `seven8`: 01111111
- `seven9`: 01111011

## Getting Started

To run this code, you can use an 8086 emulator. We recommend using the [8086 Emulator Web](https://yjdoc2.github.io/8086-emulator-web/compile) for a convenient online platform.

1. Open the [8086 Emulator Web](https://yjdoc2.github.io/8086-emulator-web/compile).
2. Copy and paste the provided assembly code into the editor.
3. Compile and run the code.

## How It Works

1. The program prompts the user to input a single-digit number.
2. It validates the input to ensure it is between 1 and 9.
3. Based on the input, it jumps to the corresponding section of the code to load the binary value for the seven-segment display.
4. The binary value is then displayed on the screen in seven-segment format using BIOS interrupts.

## Error Handling

If the user enters an invalid input (not between 1 and 9), an error message is displayed:

- `input error`

## Equal Values

The equal values for each segment in the seven-segment display are:

- `a`: Bit 7
- `b`: Bit 6
- `c`: Bit 5
- `d`: Bit 4
- `e`: Bit 3
- `f`: Bit 2
- `g`: Bit 1
- `dot`: Bit 0

## Additional Information

For more details on the 8086 assembly language and BIOS interrupts, you can refer to the [8086 Emulator GitHub repository](https://github.com/YJDoc2/8086-Emulator).

Feel free to experiment with different inputs and explore the behavior of the seven-segment display in this emulator.
