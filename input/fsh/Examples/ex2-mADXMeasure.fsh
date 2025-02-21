Alias: $resource-types = http://hl7.org/fhir/resource-types
Alias: $madx = http://ihe.net/qrph/madx/
Alias: $improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $hiv-stratifiers-example = http://ihe.net/qrph/madx/hiv-stratifiers-example

Instance: madx-hiv-indicator-example2
InstanceOf: IHEmADXMeasure
Usage: #example
* url = "http://ohie.org/Measure/madx-hiv-indicator-example2"
* identifier.system = "http://ohie.org/Measure/"
* identifier.value = "madx-hiv-indicator-example2"
* version = "0.0.1"
* name = "HIVInd21example2"
* title = "mADX-Measure-example2"
* status = #draft
* experimental = true
* publisher = "ohie.org"
* description = "Example of an indicator with 2 stratifiers, one containing 2 dimensions, supporting mADX implementation of the IHE mADXMeasure profile.Having 2 relatedArtifact instances for 'ageGroup-gender' means that the stratifier has 2 dimensions and it depends on 2 valueSets."
* subjectCodeableConcept = $resource-types#Location
* date = "2024-08-02"
* relatedArtifact[0].label = "ageGroup-gender"
* relatedArtifact[0].url = "http://hl7.org/fhir/administrative-gender"
* relatedArtifact[0].type = #depends-on
* relatedArtifact[1].label = "ageGroup-gender"
* relatedArtifact[1].url = "http://hl7.org/fhir/us/ndh/CodeSystem/AgeGroupCS"
* relatedArtifact[1].type = #depends-on
* relatedArtifact[2].label = "TBdiagnosisResult"
* relatedArtifact[2].url = "http://ihe.net/qrph/madx/TBdiagnosisResult-stratifiers-example"
* relatedArtifact[2].type = #depends-on
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
// The assumption is that there is a valueSet "hiv-stratifiers-example" which contains the values "ageGroup-gender" and "TBdiagnosisResult"
* group.stratifier[0].code = $hiv-stratifiers-example#ageGroup-gender
* group.stratifier[1].code = $hiv-stratifiers-example#TBdiagnosisResult