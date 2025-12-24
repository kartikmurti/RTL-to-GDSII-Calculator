# 8-bit Calculator ASIC Design (Sky130)

This project implements a digital 8-bit calculator from RTL to GDSII. 
It uses the SkyWater 130nm Open Source PDK and the OpenLane flow to generate a manufacturing-ready chip layout.

## 📌 Project Overview
* **Process**: SkyWater 130nm CMOS Technology
* **Input**: Verilog RTL (Behavioral Logic)
* **Output**: GDSII Layout (Physical Blueprint)
* **Verification**: Clean DRC (Design Rule Check) and LVS (Layout vs Schematic)

## 🛠️ Technologies & Tools Used
* **OpenLane**: Automated RTL-to-GDSII flow
* **Yosys**: RTL Synthesis
* **OpenROAD**: Floorplanning, Placement, and Routing
* **Magic VLSI**: Layout visualization and DRC
* **Sky130 PDK**: Google-sponsored open-source Process Design Kit

## 📂 Project Files
* `calculator.v`: Main Verilog source code for the 8-bit logic
* `config.json`: OpenLane configuration and timing constraints
* `calculator.gds`: Final physical layout file (822KB)
* `output image1.png`: Final output screenshot of the GDSII layout

## ▶️ How to Run (OpenLane)
1. Mount the OpenLane docker: `make mount`
2. Run the automated flow: `./flow.tcl -design calculator`

## 📤 Output
* **GDSII Layout**: The final chip blueprint is generated in the `results/final/gds/` folder.
* **Physical Visualization**: The design features multiple metal layers (Met1-Met5) and power rails.
* **Status**: 0 DRC violations and successful timing closure.

## 🖼️ Output Example
![Final Layout](output%20image1.png)
![Zoomed View 1](output%20image2.png)
![Zoomed View 2](output%20image3.png)
*Figure 1: Final GDSII layout and zoomed-in views of the 8-bit Calculator.*

## 👤 Author
**Name**: Kartik Murti
**Project Type**: ASIC Physical Design / VLSI
