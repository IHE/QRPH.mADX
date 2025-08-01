Profile:     IHEmADXMeasureReport
Id:          mADX-MeasureReport
Parent:      MeasureReport
Title:       "IHE mADX MeasureReport profile"
Description: "IHE mADX profile based on HL7 FHIR MeasureReport R4"

* subject 1..
* subject ^short =  "A required subject reference"
* improvementNotation MS
* group 1..
* group.code 1..
* group.code.coding 1..
* group.code.coding.code. 1..
* group.code ^short =  "A required reference for a valid indicator"
* group.population 1..
* group.population.code 1..
* group.population.count 1..
* group.stratifier MS
* group.stratifier.stratum 1..
* group.stratifier.stratum ^short = "Indicates the stratum results"
* group.stratifier.stratum.measureScore 1..
* group.stratifier.stratum.measureScore ^short =  "The value that is reported"
* group.stratifier.stratum.measureScore.value 1..
* group.stratifier.stratum.measureScore.value ^short =  "The numeric value reported in the aggregate report"
* group.stratifier.stratum.component 1..
* group.stratifier.stratum.component.code ^short =  "Represents a disaggregation dimension for the disaggregation criterion reported"
* group.stratifier.stratum.component.value ^short =  "Represents a disaggregation value for the disaggregation dimension reported"
