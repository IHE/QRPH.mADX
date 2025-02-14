Alias: $resource-types = http://hl7.org/fhir/resource-types
Alias: $madx = http://ihe.net/qrph/madx/
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender

Instance: madx-hiv-indicators-example
InstanceOf: IHEmADXMeasure
Usage: #example
* url = "http://ohie.org/Measure/madx-hiv-indicators-example"
* identifier.system = "http://ohie.org/Measure/"
* identifier.value = "madx-hiv-indicators-example"
* version = "0.0.1"
* name = "mADXHivIndicatorsExample"
* title = "mADX-Measure-example"
* status = #draft
* experimental = true
* publisher = "ohie.org"
* description = "EXAMPLE indicators supporting OpenHIE implementations of the IHE ADX-HIV content profile"
* subjectCodeableConcept = $resource-types#Patient
* date = "2019-08-02"
* relatedArtifact.label = "Gender"
* relatedArtifact.url = "http://hl7.org/fhir/administrative-gender"
* relatedArtifact.type = #depends-on
* group.code = $madx#QRPH_mADX_ART1_N
* group.description = "Number of adults newly enrolled on antiretroviral therapy (ART)"
* group.population.code = $measure-population#measure-population
* group.population.criteria.language = #text/cql
* group.population.criteria.expression = "Measure Population"
* group.stratifier.component[0].code = $administrative-gender#male
* group.stratifier.component[=].criteria.language = #text/cql
* group.stratifier.component[=].criteria.expression = "MaleGender_expression"
* group.stratifier.component[+].code = $administrative-gender#female
* group.stratifier.component[=].criteria.language = #text/cql
* group.stratifier.component[=].criteria.expression = "FemaleGender_expression"
* group.stratifier.component[+].code = $administrative-gender#other
* group.stratifier.component[=].criteria.language = #text/cql
* group.stratifier.component[=].criteria.expression = "OtherGender_expression"
* group.stratifier.component[+].code = $administrative-gender#unknown
* group.stratifier.component[=].criteria.language = #text/cql
* group.stratifier.component[=].criteria.expression = "UnknownGender_expression"