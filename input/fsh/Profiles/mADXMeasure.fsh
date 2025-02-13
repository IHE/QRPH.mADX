Profile:     IHEmADXMeasure
Id:          mADX-Measure
Parent:      crmi-shareableMeasure
Title:       "IHE mADX Measure profile"
Description: "IHE mADX profile based on HL7 FHIR Measure R4"

* publisher 1..
* subjectCodeableConcept 1..
* subjectCodeableConcept.coding.code 1..
* subjectCodeableConcept ^short = "Indicates the base resource in which the indicator is intended to run."
* relatedArtifact 1..
* relatedArtifact ^short = "There should be a related artifact for each dissagregation set defined under group[].stratifier[].component[]."
* relatedArtifact.type = #depends-on (exactly) 
* relatedArtifact.label 1..
* relatedArtifact.label ^short = "The label should match one of the values of group[].stratifier[].component[].code for a disaggregation value set."
* relatedArtifact.url 1..
* relatedArtifact.url ^short = "The URL of a FHIR Valueset that defines the valid values reported in this disaggregation component as cross-referenced by relatedArtifact[].label"
* group 1..
* group ^short =  "There should be a group element for each indicator that can be calculated based on the MDS defined in the Measure. Each group member should have a unique code defined, relative to the Measure."
* group.description 1..
* group.description ^short =  "A narrative description of an indicator."
* group.code.coding 1..
* group.code ^short =  "The “code“ should be a unique code distinguishing the indicator within the Measure."
* group.stratifier 1..
* group.stratifier ^short =  "Contains the disaggregating value sets needed for an indicator."
* group.stratifier.component 1..
* group.stratifier.component ^short =  "There should be a “component” for each set of disaggregators which is linked to a FHIR ValueSet"
* group.stratifier.component.code 1..
* group.stratifier.component.code ^short =  "A code used to reference this disaggregating valueset. There must be a relatedArtifact for each disaggregation set which is a reference to a FHIR Valueset"