Profile:     IHEmADXMeasure
Id:          mADX-Measure
Parent:      Measure
Title:       "IHE mADX profile"
Description: "IHE mADX profile based on HL7 FHIR Measure R4"

* url 1..
* url ^short = "Where the definition of the Measure, and any updated versions, can be found"
* version 1..
* title 1..
* publisher 1..
* description 1..
* subjectCodeableConcept.coding.code 1..
* subjectCodeableConcept ^label = "subject" // Change of label for FHIR "subjectCodeableConcept" element
* relatedArtifact 1..
* relatedArtifact.type = #depends-on (exactly) 
* relatedArtifact.label 1..
* relatedArtifact.url 1..
* group 1..
* group.description 1..
* group.code.coding 1..
* group.stratifier 1..
* group.stratifier.component 1..
* group.stratifier.component.code 1..