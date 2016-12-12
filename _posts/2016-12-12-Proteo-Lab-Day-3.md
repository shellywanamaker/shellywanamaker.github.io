---
layout: post
title: Lab day 3 - Protein Quantification via BCA Assay
---

## Today I determined the concentration of proteins in my samples. This was done via the [Thermo Scientific - 23225 - BCA PROTEIN ASSAY KIT](http://www.neobits.com/thermo_scientific_23225_bca_protein_assay_kit_p3603906.html?atc=gbp&gclid=Cj0KEQiAsrnCBRCTs7nqwrm6pcYBEiQAcQSznHtJg64JQ_2Yg0xR93tmvHoRrUJ9yZC9SsSKMQCGi3IaAiOJ8P8HAQ), following the [protein prep protocol](https://github.com/sr320/LabDocs/blob/master/protocols/ProteinprepforMSMS.md) and [Rhonda Elliott's recent lab notebook entry](https://ellior2.github.io/BCA-assay/). 

Thanks to Rhonda Elliott for doing much of the heavy lifting to determine volumes needed for reagents! 

### **Step 1: make reagents:** 
NOTE: Yaamini & I worked together, so the volumes of solutions outlined below are for 22 samples (11 per person)
  * **BCA Working reagent**
    - Volume needed: (8 standards + 22 samples)*(3 replicates each)*200ul of working reagent per well = 18,000ul = 18ml  
    - Required ratio is 50:1  BCA reagent A:BCA reagent B respectively  
    - To make: Use large pipette to **add 20ml of Reagent A** to a falcon tube, then add **400ul of Reagent B**. Vortex. Total volume made: 20.4ml
  * **50mM NH4HCO3 (Ammonium Bicarbonate)**
   - Volume needed: (22ul per sample)*(22 samples)  
   - MW of NH4HCO3 is 79.06 g/mol, therefore:
      * (79.06g/mol)x(1mol/1,000mmol)x(50mM/1L)x(1L/1,000ml)x 10ml = need 0.03953g of NH4HCO3 in 10 ml.
   - To make: **add 5ml nanopure** to falcon tube; **add 0.03953g of NH4HCO3** and vortex to dissolve. Add solution to graduated cylinder and **top off with nanopure to 10ml**. Pour back into falcon tube, vortex.
  * **Lysis Buffer**
     - Volume neded: 2.2 mL 
     - MW: of Urea is 60.06g/ml, therefore: 
       * (60.06g/mol)x(6mol/L)x(1L/1000ml)x 4ml = 1.44g Urea to add to 4 ml of 50mM NH4HCO3
     - **Add 4ml of the recently made 50mM NH4HCO3** to falcon tube. **Add 1.44g Urea** to make the 6M solution, Vortex to dissolve. Add to graduated cylinder, **top off with nanopure to 6ml total**. Pour back in falcon tube, vortex. 
 
### **Step 2: Make BCA Standards**
  - Label 8 1.5mL centrifuge tubes letters A-I
  - Open a stock BSA (aka albumin standard) glass ampule by holding it with a kimwipe and breaking the top off. 
  - Beginning with Vials B & C mix the standards at the ratios outlined below. 
  - Vortex each standard after making. 
    * **Vial B** (1.5ug/ml BSA concentration): Add 125ul of Lysis Buffer to 375ul stock BSA
    * **Vial C** (1.0ug/ml BSA concentration): Add 325ul of Lysis Buffer to 325ul stock BSA
    * **Vial D** (0.75ug/ml BSA concentration): Add 175ul of Lysis Buffer to 175ul Vial B dilution
    * **Vial E** (0.5ug/ml BSA concentration): Add 325ul of Lysis Buffer to 325ul Vial C dilution
    * **Vial F** (0.25ug/ml BSA concentration): Add 325ul of Lysis Buffer to 325 Vial E dilution
    * **Vial G** (0.125ug/ml BSA concentration): Add 325ul of Lysis Buffer to 325ul Vial F dilution
    * **Vial H** (0.025ug/ml BSA concentration): Add 400ul of Lysis Buffer to 100ul Vial G dilution
    * **Vial I** (0.000ug/ml BSA concentration): Add 500ul of lysis buffer

**Step 3: Pipette standards and samples into microplate** 
Obtained 22 samples out of the -80C. Each sample has 11ul.

2) Added 22ul of 50mM NH4HCO3 to each sample for a total volume of 33ul. Vortexed to mix. Then centrifuged down.

3) Made three replicates for each BCA standard. Pipetted 10ul for each replicate into the corresponding microplate wells (see table).

4) Created three replicates for each sample. Pipetted 10ul for each replicate into the correspondeing microplate wells (see table).

5) Added 200ul of working reagent to each well.


Microplate arrangement: Samples begin @ C1; G=Geoduck O=Oyster

|   | 1          | 2         | 3         | 4        | 5         | 6         | 7       | 8       | 9       | 10      | 11     | 12     |
|---|------------|-----------|-----------|----------|-----------|-----------|---------|---------|---------|---------|--------|--------|
| A | B1         | B2        | B3        | C1       | C2        | C3        | D1      | D2      | D3      | E1      | E2     | E3     |
| B | F1         | F2        | F3        | G1       | G2        | G3        | H1      | H2      | H3      | I1      | I2     | I3     |
| C | G10 1      | G10 2     | G10 3     | G18 1    | G18 2     | G18 3     | G48 1   | G48 2   | G48 3   | G58 1   | G58 2  | G58 3  |
| D | G68 1      | G68 2     | G68 3     | G77 1    | G77 2     | G77 3     | G92 1   | G92 2   | G92 3   | G97 1   | G97 2  | G97 3  |
| E | G119 1     | G119 2    | G119 3    | G131 1   | G131 2    | G131 3    | O07 1   | O07 2   | O07 3   | O15 1   | O15 2  | O15 3  |
| F | O37 1      | O37 2     | O37 3     | O47 1    | O47 2     | O47 3     | O55 1   | O55 2   | O55 3   | O77 1   | O77 2  | O77 3  |
| G | O107 1     | O107 2    | O107 3    | O119 1   | O119 2    | O119 3    | O127 1  | O127 2  | O127 3  | O142 1  | O142 2 | O142 3 |
| H | GBlank 1   | GBlank 2  | GBlank 3  | OBlank 1 | OBlank 2  | OBlank 3  |         |         |         |         |        |        |
BCA assay microplate protocol:

..... etc. 

6) Covered plate and brought it over to the Genome Sciences building.



--- Inserted microplate into spectrophotometer; which measured the absorbance at 540nm.

8) Subtracted the average absorbance for the Blank Standard Replicates from the average absorbances of all the other standards and sample replicates.

9) Prepared standard curve by plotting average Blank-corrected 562nm measurements for each BSA standard vs. it’s concentration in ug/ml. Used standard curve to determine protein concentration of each unknown sample.
