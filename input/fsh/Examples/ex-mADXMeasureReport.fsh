Alias: $madx = http://ihe.net/qrph/madx/
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $measure-stratifier-example = http://hl7.org/fhir/measure-stratifier-example
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $ageGroup = http://hl7.org/fhir/us/ndh/CodeSystem/AgeGroupCS
Alias: $improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation

Instance: mADX-MeasureReport-example
InstanceOf: IHEmADXMeasureReport
Usage: #example
Description: "Example indicator supporting mADX implementation of the IHE mADXMeasureReport profile"
* measure = "http://ohie.org/Measure/madx-hiv-indicators-example"
* contained = HealthPost12345
* subject = Reference(HealthPost12345)
* status = #pending
* type = #summary
* reporter = Reference(HealthPost12345)
* period.start = "2025-01-01"
* period.end = "2025-01-31"
* improvementNotation = $improvementNotation#increase
* group.code = $madx#QRPH_mADX_ART1_N
* group.population[0].code = $measure-population#denominator
* group.population[0].count = 150000
* group.population[1].code = $measure-population#numerator
* group.population[1].count = 500
* group.stratifier[0].code = $measure-stratifier-example#gender
* group.stratifier[0].stratum[0].measureScore.value = 230
* group.stratifier[0].stratum[0].value = $administrative-gender#male
* group.stratifier[0].stratum[1].measureScore.value = 200
* group.stratifier[0].stratum[1].value = $administrative-gender#female
* group.stratifier[0].stratum[2].measureScore.value = 70
* group.stratifier[0].stratum[2].value = $administrative-gender#other
* group.stratifier[1].stratum[0].measureScore.value = 20
* group.stratifier[1].code = $measure-stratifier-example#age
* group.stratifier[1].stratum[0].value = $ageGroup#infants
* group.stratifier[1].stratum[1].measureScore.value = 70
* group.stratifier[1].stratum[1].value = $ageGroup#children
* group.stratifier[1].stratum[2].measureScore.value = 130
* group.stratifier[1].stratum[2].value = $ageGroup#teens
* group.stratifier[1].stratum[3].measureScore.value = 170
* group.stratifier[1].stratum[3].value = $ageGroup#adults
* group.stratifier[1].stratum[4].measureScore.value = 110
* group.stratifier[1].stratum[4].value = $ageGroup#seniors

Instance: HealthPost12345
InstanceOf: Location
Usage: #inline
* name = "Good Health Post"