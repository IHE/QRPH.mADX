Alias: $madx = http://ihe.net/qrph/madx/
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $hiv-stratifiers-example = http://ihe.net/qrph/madx/hiv-stratifiers-example
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $ageGroup = http://hl7.org/fhir/us/ndh/CodeSystem/AgeGroupCS
Alias: $TBdiagnosisResult-stratifiers-example = http://ihe.net/qrph/madx/TBdiagnosisResult-stratifiers-example
Alias: $improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation

Instance: mADX-MeasureReport-example1
InstanceOf: IHEmADXMeasureReport
Usage: #example
Description: "Example of MeasureReport compliant with the specifications defined in mADX-Measure-example1, supporting mADX implementation of the IHE mADXMeasureReport profile"
* measure = "http://ohie.org/Measure/madx-hiv-indicators-example1"
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
* group.stratifier.code = $hiv-stratifiers-example#TBdiagnosisResult
* group.stratifier.stratum[0].measureScore.value = 55
* group.stratifier.stratum[0].value = $TBdiagnosisResult-stratifiers-example#diagnosedTB
* group.stratifier.stratum[1].measureScore.value = 445
* group.stratifier.stratum[1].value = $TBdiagnosisResult-stratifiers-example#TBexcluded

Instance: HealthPost12345
InstanceOf: Location
Usage: #inline
* name = "Good Health Post"