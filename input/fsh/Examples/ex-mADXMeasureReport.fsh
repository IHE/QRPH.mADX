Alias: $madx = http://ihe.net/qrph/madx/
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $measure-stratifier-example = http://hl7.org/fhir/measure-stratifier-example
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender

Instance: mADX-MeasureReport-example
InstanceOf: IHEmADXMeasureReport
Usage: #example
* measure = "http://ohie.org/Measure/madx-hiv-indicators-example"
* contained = HealthPost12345
* subject = Reference(HealthPost12345)
* status = #pending
* type = #summary
* reporter = Reference(HealthPost12345)
* period.start = "2018-01-01"
* period.end = "2018-01-31"
* group.code = $madx#QRPH_mADX_ART1_N
* group.population.code = $measure-population#measure-population
* group.population.count = 500
* group.stratifier[0].stratum.measureScore.value = 230
* group.stratifier[=].stratum.component.code = $measure-stratifier-example#gender
* group.stratifier[=].stratum.component.value = $administrative-gender#male
* group.stratifier[+].stratum.measureScore.value = 200
* group.stratifier[=].stratum.component.code = $measure-stratifier-example#gender
* group.stratifier[=].stratum.component.value = $administrative-gender#female
* group.stratifier[+].stratum.measureScore.value = 50
* group.stratifier[=].stratum.component.code = $measure-stratifier-example#gender
* group.stratifier[=].stratum.component.value = $administrative-gender#other
* group.stratifier[+].stratum.measureScore.value = 20
* group.stratifier[=].stratum.component.code = $measure-stratifier-example#gender
* group.stratifier[=].stratum.component.value = $administrative-gender#unknown

Instance: HealthPost12345
InstanceOf: Location
Usage: #inline
* name = "Good Health Post"