Profile:     IHEmADXMeasure
Id:          mADX-Measure
Parent:      crmi-shareableMeasure
Title:       "IHE mADX Measure profile"
Description: "IHE mADX profile based on HL7 FHIR Measure R4"

* publisher 1..
* subjectCodeableConcept 1..
* subjectCodeableConcept.coding.code 1..
* subjectCodeableConcept ^short = "Indicates the base resource in which the indicator is intended to run"
* relatedArtifact MS
* relatedArtifact ^short = "There should be a related artifact for each dissagregation set defined under group[].stratifier[]"
* relatedArtifact.type 1..
* relatedArtifact.type = #depends-on (exactly) 
* relatedArtifact.label 1..
* relatedArtifact.label ^short = "The label should match one of the values of group[].stratifier[].code for a disaggregation value set"
* relatedArtifact.url 1..
* relatedArtifact.url ^short = "The URL of a FHIR Valueset that defines the valid values reported in this disaggregation criterion as cross-referenced by relatedArtifact[].label"
* improvementNotation 1..
* improvementNotation ^short = "The change in measured values that is indicative of an improvement for the indicator"
* group 1..
* group ^short =  "There should be a group element for each indicator that can be calculated in the Measure. Each group member should have a unique code defined, relative to the Measure"
* group.code 1..
* group.code.coding 1..
* group.code ^short =  "The code should be a unique code distinguishing the indicator within the Measure"
* group.description 1..
* group.description ^short =  "A narrative description of an indicator"
* group.population 1..
* group.population.code 1..
* group.population.code ^short =  "A required population code for a valid indicator. This code should be “numerator” if the reported indicator is a number (not a proportion). A proportion should have a numerator population and a denominator population"
* group.stratifier MS
* group.stratifier ^short =  "Contains the disaggregating value sets needed for an indicator"
* group.stratifier.code MS
* group.stratifier.code ^short =  "There should be a code used to reference this disaggregating valueset. There must be a relatedArtifact for each disaggregation set which is a reference to a FHIR Valueset"