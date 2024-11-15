# Variant Calling Workflow

## Directory Structure
- refIdx/: Reference genome and BWA indices
- mapping/: Read mapping results and scripts

## Analysis Steps
1. Reference Indexing
   - Location: refIdx/
   - Script: bwaIdx.sh
   - Dependencies: BWA v0.7.17

2. Read Mapping
   - Location: mapping/
   - Script: mapping.sh
   - Dependencies: BWA v0.7.17, SAMtools v1.13

## Sample Information
- BT012: Bull Terrier sample 1
- BT134: Bull Terrier sample 2

## Mapping stats 
- Location: mapping/
- Script: flagstat.sh
- Dependencies: SAMtools v1.13

## Key Locations Visualized in IGV
- chr14:5408613 - G/CTT insertion
- chr14:5731405 - T/G variant
- chr14:5822263