# Project Name: Verilog Implementations - Memory Controller, FIFO, & Hamming Code

## About the Project
This repository contains Verilog-based implementations of key digital design components. Each module is designed to be modular and customizable, suitable for both educational and practical applications.

---

### Key Components

1. **Memory Controller**  
   Manages data flow between the processor and memory, ensuring correct read/write timing and addressing.

   | Feature            | Description                                        |
   |--------------------|----------------------------------------------------|
   | **Data Flow**      | Controls traffic between memory and processor      |
   | **Addressing**     | Manages address handling for read/write operations |
   | **Timing Control** | Adds wait states as required by memory speed       |
   
   - **Example Parameters**:
     | Parameter    | Description                  | Example Value |
     |--------------|------------------------------|---------------|
     | `ADDR_WIDTH`| Width of memory address      | 8            |
     | `DATA_WIDTH`| Width of data bus            | 16           |
   
   - **Diagram**:
    ![image](https://github.com/user-attachments/assets/168e2c8a-e7eb-4ced-a88d-84a302ecd44b)


---

2. **FIFO (First In, First Out)**  
   Implements a queue structure for data buffering, essential for synchronizing data flow when producer and consumer speeds vary.

   | Feature              | Description                                  |
   |----------------------|----------------------------------------------|
   | **Queue Structure**  | Maintains first-in, first-out data sequence  |
   | **Buffering**        | Temporarily stores data for synchronization  |
   | **Overflow Control** | Prevents data overflow and underflow         |
   
   - **Example Parameters**:
     | Parameter      | Description                    | Example Value |
     |----------------|--------------------------------|---------------|
     | `DEPTH`        | Depth of the FIFO buffer       | 16           |
     | `DATA_WIDTH`   | Width of each data entry       | 8            |
   
   - **Diagram**:
   ![image](https://github.com/user-attachments/assets/da93280e-0d31-4466-89a2-100d489cc5f4)


---

3. **Hamming Code (Error Detection & Correction)**  
   Provides single-bit error detection and correction, ensuring data integrity during transmission.

   | Feature                | Description                          |
   |------------------------|--------------------------------------|
   | **Error Detection**    | Identifies single-bit transmission errors |
   | **Error Correction**   | Corrects identified single-bit errors    |
   | **Parity Bits**        | Adds calculated parity bits for data integrity |
   
   - **Example Parameters**:
     | Parameter       | Description                    | Example Value |
     |-----------------|--------------------------------|---------------|
     | `DATA_WIDTH`    | Width of original data         | 4            |
     | `PARITY_BITS`   | Number of parity bits added    | 3            |
   
   
---

## Project Specifications
The following table provides a quick overview of the key specifications of each component:

| Component         | Primary Function                       | Key Features                       | Typical Use Case                    |
|-------------------|----------------------------------------|------------------------------------|-------------------------------------|
| **Memory Controller** | Manages processor-memory communication | Addressing, timing control         | Digital systems with memory modules |
| **FIFO**          | Buffers data with first-in, first-out order | Data buffering, overflow control  | Data stream synchronization         |
| **Hamming Code**  | Detects and corrects single-bit errors | Error detection, parity bits       | Data transmission reliability       |

---


