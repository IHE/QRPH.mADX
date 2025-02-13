Alias: $madx = http://ihe.net/qrph/madx/
Alias: $madx-example-components = http://ihe.net/qrph/madx-example-components

Instance: madx-hiv-indicators-example
InstanceOf: IHEmADXMeasure
Usage: #example
* url = "http://ohie.org/Measure/madx-hiv-indicators-example"
* identifier.system = "http://ohie.org/Measure/"
* identifier.value = "madx-hiv-indicators-example"
* version = "0.0.0"
* title = "mADX-Measure-example"
* status = #draft
* experimental = true
* publisher = "ohie.org"
* description = "EXAMPLE indicators supporting OpenHIE implementations of the IHE ADX-HIV content profile"
* subjectCodeableConcept.coding.system = "http://hl7.org/fhir/ValueSet/subject-type"
* subjectCodeableConcept.coding.code = #Patient
* date = "2019-08-02"
* relatedArtifact[0].label = "AGE_GROUP"
* relatedArtifact[=].url = "http://ihe.net/qrph/madx-hiv-example-age-groups"
* relatedArtifact[=].type = #depends-on
* relatedArtifact[+].label = "SEX"
* relatedArtifact[=].url = "http://ihe.net/qrph/madx-hiv-example-sex"
* relatedArtifact[=].type = #depends-on
* group.code = $madx#QRPH_mADX_ART1_N
* group.description = "Number of adults and children newly enrolled on antiretroviral therapy (ART)"
* group.stratifier.component[0].code = $madx-example-components#AGE_GROUP
* group.stratifier.component[=].criteria.language = #text/cql
* group.stratifier.component[=].criteria.expression = "Some expression"
* group.stratifier.component[+].code = $madx-example-components#SEX
* group.stratifier.component[=].criteria.language = #text/cql
* group.stratifier.component[=].criteria.expression = "Some expression"