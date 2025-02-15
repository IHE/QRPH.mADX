Profile:     IHEmADXMeasureReport
Id:          mADX-MeasureReport
Parent:      MeasureReport
Title:       "IHE mADX MeasureReport profile"
Description: "IHE mADX profile based on HL7 FHIR MeasureReport R4"

* subject 1..
* subject ^short =  "A required subject reference."
* group 1..
* group.code.coding.code. 1..
* group.code ^short =  "A required reference for a valid indicator."
* group.stratifier.stratum 1..
* group.stratifier.stratum.measureScore 1..
* group.stratifier.stratum.measureScore.value 1..
* group.stratifier.stratum.measureScore.value ^short =  "A required value for each reported aggregate report."
