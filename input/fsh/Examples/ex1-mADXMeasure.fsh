Alias: $resource-types = http://hl7.org/fhir/resource-types
Alias: $madx = http://ihe.net/qrph/madx/
Alias: $improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $hiv-stratifiers-example = http://ihe.net/qrph/madx/hiv-stratifiers-example

Instance: madx-hiv-indicator-example1
InstanceOf: IHEmADXMeasure
Usage: #example
* url = "http://ohie.org/Measure/madx-hiv-indicator-example1"
* identifier.system = "http://ohie.org/Measure/"
* identifier.value = "madx-hiv-indicator-example1"
* version = "0.0.1"
* name = "HIVInd21example1"
* title = "mADX-Measure-example1"
* status = #draft
* experimental = true
* publisher = "ohie.org"
* description = "Example of an indicator with 1 stratifier, supporting mADX implementation of the IHE mADXMeasure profile"
* subjectCodeableConcept = $resource-types#Location
* date = "2024-08-02"
* relatedArtifact.label = "TBdiagnosisResult"
* relatedArtifact.url = "http://ihe.net/qrph/madx/TBdiagnosisResult-stratifiers-example"
* relatedArtifact.type = #depends-on
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
// The assumption is that there is a valueSet "hiv-stratifiers-example" which contains the value "TBdiagnosisResult"
* group.stratifier.code = $hiv-stratifiers-example#TBdiagnosisResult