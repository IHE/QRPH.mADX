Alias: $madx = http://ihe.net/qrph/madx/
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $hiv-stratifiers-example = http://ihe.net/qrph/madx/hiv-stratifiers-example
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $ageGroup = http://ohie.org/CodeSystem/iso-8601-derived-periods
Alias: $TBdiagnosisResult-stratifiers-example = http://ihe.net/qrph/madx/TBdiagnosisResult-stratifiers-example

Instance: mADX-MeasureReport-example
InstanceOf: IHEmADXMeasureReport
Usage: #example
Description: "Example of MeasureReport compliant with the specifications defined in mADX-Measure-example, supporting mADX implementation of the IHE mADXMeasureReport profile"
* measure = "http://ohie.org/Measure/madx-hiv-indicator-example"
* contained = HealthPost1
* subject = Reference(HealthPost1)
* status = #pending
* type = #summary
* reporter = Reference(HealthPost1)
* period.start = "2025-01-01"
* period.end = "2025-01-31"
* group.id = "group-id"
* group.code = $madx#QRPH_mADX_ART1_N
* group.population.id = "group-population-id"
* group.population.code = $measure-population#initial-population
* group.population.count = 426
* group.stratifier[0].id = "group-stratifier1-id"
* group.stratifier[0].stratum[0].measureScore.value = 10
* group.stratifier[0].stratum[0].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[0].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[0].component[0].value = $ageGroup#P0Y--P1Y
* group.stratifier[0].stratum[0].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[1].measureScore.value = 9
* group.stratifier[0].stratum[1].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[1].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[1].component[0].value = $ageGroup#P0Y--P1Y
* group.stratifier[0].stratum[1].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[2].measureScore.value = 0
* group.stratifier[0].stratum[2].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[2].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[2].component[0].value = $ageGroup#P0Y--P1Y
* group.stratifier[0].stratum[2].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[3].measureScore.value = 15
* group.stratifier[0].stratum[3].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[3].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[3].component[0].value = $ageGroup#P5Y--P10Y
* group.stratifier[0].stratum[3].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[4].measureScore.value = 12
* group.stratifier[0].stratum[4].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[4].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[4].component[0].value = $ageGroup#P5Y--P10Y
* group.stratifier[0].stratum[4].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[5].measureScore.value = 0
* group.stratifier[0].stratum[5].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[5].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[5].component[0].value = $ageGroup#P5Y--P10Y
* group.stratifier[0].stratum[5].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[6].measureScore.value = 25
* group.stratifier[0].stratum[6].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[6].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[6].component[0].value = $ageGroup#P10Y--P15Y
* group.stratifier[0].stratum[6].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[7].measureScore.value = 20
* group.stratifier[0].stratum[7].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[7].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[7].component[0].value = $ageGroup#P10Y--P15Y
* group.stratifier[0].stratum[7].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[8].measureScore.value = 1
* group.stratifier[0].stratum[8].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[8].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[8].component[0].value = $ageGroup#P10Y--P15Y
* group.stratifier[0].stratum[8].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[9].measureScore.value = 25
* group.stratifier[0].stratum[9].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[9].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[9].component[0].value = $ageGroup#P15Y--P20Y
* group.stratifier[0].stratum[9].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[10].measureScore.value = 22
* group.stratifier[0].stratum[10].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[10].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[10].component[0].value = $ageGroup#P15Y--P20Y
* group.stratifier[0].stratum[10].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[11].measureScore.value = 2
* group.stratifier[0].stratum[11].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[11].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[11].component[0].value = $ageGroup#P15Y--P20Y
* group.stratifier[0].stratum[11].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[12].measureScore.value = 30
* group.stratifier[0].stratum[12].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[12].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[12].component[0].value = $ageGroup#P20Y--P25Y
* group.stratifier[0].stratum[12].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[13].measureScore.value = 27
* group.stratifier[0].stratum[13].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[13].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[13].component[0].value = $ageGroup#P20Y--P25Y
* group.stratifier[0].stratum[13].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[14].measureScore.value = 5
* group.stratifier[0].stratum[14].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[14].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[14].component[0].value = $ageGroup#P20Y--P25Y
* group.stratifier[0].stratum[14].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[15].measureScore.value = 30
* group.stratifier[0].stratum[15].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[15].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[15].component[0].value = $ageGroup#P30Y--P35Y
* group.stratifier[0].stratum[15].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[16].measureScore.value = 25
* group.stratifier[0].stratum[16].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[16].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[16].component[0].value = $ageGroup#P30Y--P35Y
* group.stratifier[0].stratum[16].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[17].measureScore.value = 4
* group.stratifier[0].stratum[17].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[17].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[17].component[0].value = $ageGroup#P30Y--P35Y
* group.stratifier[0].stratum[17].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[18].measureScore.value = 35
* group.stratifier[0].stratum[18].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[18].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[18].component[0].value = $ageGroup#P35Y--P40Y
* group.stratifier[0].stratum[18].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[19].measureScore.value = 30
* group.stratifier[0].stratum[19].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[19].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[19].component[0].value = $ageGroup#P35Y--P40Y
* group.stratifier[0].stratum[19].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[20].measureScore.value = 3
* group.stratifier[0].stratum[20].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[20].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[20].component[0].value = $ageGroup#P35Y--P40Y
* group.stratifier[0].stratum[20].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[21].measureScore.value = 40
* group.stratifier[0].stratum[21].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[21].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[21].component[0].value = $ageGroup#P40Y--P50Y
* group.stratifier[0].stratum[21].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[22].measureScore.value = 35
* group.stratifier[0].stratum[22].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[22].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[22].component[0].value = $ageGroup#P40Y--P50Y
* group.stratifier[0].stratum[22].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[23].measureScore.value = 2
* group.stratifier[0].stratum[23].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[23].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[23].component[0].value = $ageGroup#P40Y--P50Y
* group.stratifier[0].stratum[23].component[1].value = $administrative-gender#other
* group.stratifier[0].stratum[24].measureScore.value = 33
* group.stratifier[0].stratum[24].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[24].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[24].component[0].value = $ageGroup#P50Y--P9999Y
* group.stratifier[0].stratum[24].component[1].value = $administrative-gender#male
* group.stratifier[0].stratum[25].measureScore.value = 32
* group.stratifier[0].stratum[25].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[25].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[25].component[0].value = $ageGroup#P50Y--P9999Y
* group.stratifier[0].stratum[25].component[1].value = $administrative-gender#female
* group.stratifier[0].stratum[26].measureScore.value = 1
* group.stratifier[0].stratum[26].component[0].code = $hiv-stratifiers-example#ageGroup
* group.stratifier[0].stratum[26].component[1].code = $hiv-stratifiers-example#gender
* group.stratifier[0].stratum[26].component[0].value = $ageGroup#P50Y--P9999Y
* group.stratifier[0].stratum[26].component[1].value = $administrative-gender#other

* group.stratifier[1].id = "group-stratifier2-id"
* group.stratifier[1].stratum[0].measureScore.value = 28
* group.stratifier[1].stratum[0].component[0].code = $hiv-stratifiers-example#TBdiagnosisResult
* group.stratifier[1].stratum[0].component[0].value = $TBdiagnosisResult-stratifiers-example#diagnosedTB
* group.stratifier[1].stratum[1].measureScore.value = 398
* group.stratifier[1].stratum[1].component[0].code = $hiv-stratifiers-example#TBdiagnosisResult
* group.stratifier[1].stratum[1].component[0].value = $TBdiagnosisResult-stratifiers-example#TBexcluded

Instance: HealthPost1
InstanceOf: Location
Usage: #inline
* name = "Good Health Post"