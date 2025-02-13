Alias: $madx = http://ihe.net/qrph/madx/
Alias: $madx-example-components = http://ihe.net/qrph/madx-example-components
Alias: $madx-hiv-example-age-group = http://ihe.net/qrph/madx-hiv-example-age-group
Alias: $madx-hiv-example-sex = http://ihe.net/qrph/madx-hiv-example-sex

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
* group.stratifier.stratum.measureScore.value = 5
* group.stratifier.stratum.component[0].code = $madx-example-components#AGE_GROUP
* group.stratifier.stratum.component[=].value = $madx-hiv-example-age-group#P0Y--P1Y
* group.stratifier.stratum.component[+].code = $madx-example-components#SEX
* group.stratifier.stratum.component[=].value = $madx-hiv-example-sex#F

Instance: HealthPost12345
InstanceOf: Location
Usage: #inline
* name = "Good Health Post"