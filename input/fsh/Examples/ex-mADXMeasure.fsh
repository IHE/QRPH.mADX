Alias: $resource-types = http://hl7.org/fhir/resource-types
Alias: $madx = http://ihe.net/qrph/madx/
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $measure-stratifier-example = http://hl7.org/fhir/measure-stratifier-example
Alias: $improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation

Instance: madx-hiv-indicator-example
InstanceOf: IHEmADXMeasure
Usage: #example
* url = "http://ohie.org/Measure/madx-hiv-indicator-example"
* identifier.system = "http://ohie.org/Measure/"
* identifier.value = "madx-hiv-indicator-example"
* version = "0.0.1"
* name = "HIV.IND.21"
* title = "mADX-Measure-example"
* status = #draft
* experimental = true
* publisher = "ohie.org"
* description = "Example indicator supporting mADX implementation of the IHE mADXMeasure profile"
* subjectCodeableConcept = $resource-types#Location
* date = "2024-08-02"
* relatedArtifact[0].label = "gender"
* relatedArtifact[0].url = "http://hl7.org/fhir/administrative-gender"
* relatedArtifact[0].type = #depends-on
* relatedArtifact[1].label = "age"
* relatedArtifact[1].url = "http://hl7.org/fhir/us/ndh/CodeSystem/AgeGroupCS"
* relatedArtifact[1].type = #depends-on
* improvementNotation = $improvementNotation#increase
* group.code = $madx#QRPH_mADX_ART1_N
* group.description = "% of people newly diagnosed with HIV initiated on ART"
* group.population[0].code = $measure-population#numerator
* group.population[0].description = "Number of people newly diagnosed with HIV and started on ART during the reporting period"
* group.population[0].criteria.language = #text/cql
* group.population[0].criteria.expression = "Numerator_expression"
* group.population[1].code = $measure-population#denominator
* group.population[1].description = "Number of people newly diagnosed with HIV during the reporting period"
* group.population[1].criteria.language = #text/cql
* group.population[1].criteria.expression = "Denominator_expression"
* group.stratifier[0].code = $measure-stratifier-example#gender
* group.stratifier[1].code = $measure-stratifier-example#age