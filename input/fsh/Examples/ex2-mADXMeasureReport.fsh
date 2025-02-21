Alias: $madx = http://ihe.net/qrph/madx/
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $hiv-stratifiers-example = http://ihe.net/qrph/madx/hiv-stratifiers-example
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $ageGroup = http://hl7.org/fhir/us/ndh/CodeSystem/AgeGroupCS
Alias: $TBdiagnosisResult-stratifiers-example = http://ihe.net/qrph/madx/TBdiagnosisResult-stratifiers-example
Alias: $improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation

Instance: mADX-MeasureReport-example2
InstanceOf: IHEmADXMeasureReport
Usage: #example
Description: "Example of MeasureReport compliant with the specifications defined in mADX-Measure-example2, supporting mADX implementation of the IHE mADXMeasureReport profile"
* measure = "http://ohie.org/Measure/madx-hiv-indicators-example2"
* contained = HealthPost6789
* subject = Reference(HealthPost6789)
* status = #pending
* type = #summary
* reporter = Reference(HealthPost6789)
* period.start = "2025-01-01"
* period.end = "2025-01-31"
* improvementNotation = $improvementNotation#increase
* group.code = $madx#QRPH_mADX_ART1_N
* group.population[0].code = $measure-population#denominator
* group.population[0].count = 121000
* group.population[1].code = $measure-population#numerator
* group.population[1].count = 364
// The assumption is that there is a valueSet "hiv-stratifiers-example" which contains the values "ageGroup-gender" and "TBdiagnosisResult"
* group.stratifier[0].code = $hiv-stratifiers-example#ageGroup-gender
* group.stratifier[0].stratum[0].measureScore.value = 23
* group.stratifier[0].stratum[0].component[0].code = $ageGroup#infants
* group.stratifier[0].stratum[0].component[1].code = $administrative-gender#male
* group.stratifier[0].stratum[0].component[0].value = $ageGroup#infants
* group.stratifier[0].stratum[0].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[1].measureScore.value = 24
* group.stratifier[0].stratum[1].component[0].code = $ageGroup#infants
* group.stratifier[0].stratum[1].component[1].code = $administrative-gender#female
* group.stratifier[0].stratum[1].component[0].value = $ageGroup#infants
* group.stratifier[0].stratum[1].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[2].measureScore.value = 3
* group.stratifier[0].stratum[2].component[0].code = $ageGroup#infants
* group.stratifier[0].stratum[2].component[1].code = $administrative-gender#other
* group.stratifier[0].stratum[2].component[0].value = $ageGroup#infants
* group.stratifier[0].stratum[2].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[3].measureScore.value = 33
* group.stratifier[0].stratum[3].component[0].code = $ageGroup#children
* group.stratifier[0].stratum[3].component[1].code = $administrative-gender#male
* group.stratifier[0].stratum[3].component[0].value = $ageGroup#children
* group.stratifier[0].stratum[3].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[4].measureScore.value = 32
* group.stratifier[0].stratum[4].component[0].code = $ageGroup#children
* group.stratifier[0].stratum[4].component[1].code = $administrative-gender#female
* group.stratifier[0].stratum[4].component[0].value = $ageGroup#children
* group.stratifier[0].stratum[4].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[5].measureScore.value = 4
* group.stratifier[0].stratum[5].component[0].code = $ageGroup#children
* group.stratifier[0].stratum[5].component[1].code = $administrative-gender#other
* group.stratifier[0].stratum[5].component[0].value = $ageGroup#children
* group.stratifier[0].stratum[5].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[6].measureScore.value = 43
* group.stratifier[0].stratum[6].component[0].code = $ageGroup#teens
* group.stratifier[0].stratum[6].component[1].code = $administrative-gender#male
* group.stratifier[0].stratum[6].component[0].value = $ageGroup#teens
* group.stratifier[0].stratum[6].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[7].measureScore.value = 45
* group.stratifier[0].stratum[7].component[0].code = $ageGroup#teens
* group.stratifier[0].stratum[7].component[1].code = $administrative-gender#female
* group.stratifier[0].stratum[7].component[0].value = $ageGroup#teens
* group.stratifier[0].stratum[7].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[8].measureScore.value = 7
* group.stratifier[0].stratum[8].component[0].code = $ageGroup#teens
* group.stratifier[0].stratum[8].component[1].code = $administrative-gender#other
* group.stratifier[0].stratum[8].component[0].value = $ageGroup#teens
* group.stratifier[0].stratum[8].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[9].measureScore.value = 51
* group.stratifier[0].stratum[9].component[0].code = $ageGroup#adults
* group.stratifier[0].stratum[9].component[1].code = $administrative-gender#male
* group.stratifier[0].stratum[9].component[0].value = $ageGroup#adults
* group.stratifier[0].stratum[9].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[10].measureScore.value = 53
* group.stratifier[0].stratum[10].component[0].code = $ageGroup#adults
* group.stratifier[0].stratum[10].component[1].code = $administrative-gender#female
* group.stratifier[0].stratum[10].component[0].value = $ageGroup#adults
* group.stratifier[0].stratum[10].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[11].measureScore.value = 4
* group.stratifier[0].stratum[11].component[0].code = $ageGroup#adults
* group.stratifier[0].stratum[11].component[1].code = $administrative-gender#other
* group.stratifier[0].stratum[11].component[0].value = $ageGroup#adults
* group.stratifier[0].stratum[11].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[12].measureScore.value = 21
* group.stratifier[0].stratum[12].component[0].code = $ageGroup#seniors
* group.stratifier[0].stratum[12].component[1].code = $administrative-gender#male
* group.stratifier[0].stratum[12].component[0].value = $ageGroup#seniors
* group.stratifier[0].stratum[12].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[13].measureScore.value = 20
* group.stratifier[0].stratum[13].component[0].code = $ageGroup#seniors
* group.stratifier[0].stratum[13].component[1].code = $administrative-gender#female
* group.stratifier[0].stratum[13].component[0].value = $ageGroup#seniors
* group.stratifier[0].stratum[13].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[14].measureScore.value = 1
* group.stratifier[0].stratum[14].component[0].code = $ageGroup#seniors
* group.stratifier[0].stratum[14].component[1].code = $administrative-gender#other
* group.stratifier[0].stratum[14].component[0].value = $ageGroup#seniors
* group.stratifier[0].stratum[14].component[1].value = $administrative-gender#other
// The assumption is that there is a valueSet "TBdiagnosisResult-stratifiers-example" which contains the values "diagnosedTB" and "TBexcluded"
* group.stratifier[1].code = $hiv-stratifiers-example#TBdiagnosisResult
* group.stratifier[1].stratum[0].measureScore.value = 55
* group.stratifier[1].stratum[0].value = $TBdiagnosisResult-stratifiers-example#diagnosedTB
* group.stratifier[1].stratum[1].measureScore.value = 309
* group.stratifier[1].stratum[1].value = $TBdiagnosisResult-stratifiers-example#TBexcluded

Instance: HealthPost6789
InstanceOf: Location
Usage: #inline
* name = "Good Health Post"