Alias: $adx = http://ihe.net/qrph/adx/
Alias: $madx-example-components = http://ihe.net/qrph/madx-example-components
Alias: $adx-hiv-example-age-group = http://ihe.net/qrph/adx-hiv-example-age-group
Alias: $adx-example-components = http://ihe.net/qrph/adx-example-components
Alias: $adx-hiv-example-sex = http://ihe.net/qrph/adx-hiv-example-sex

Instance: 12345-example
InstanceOf: MeasureReport
Usage: #example
* measure = "http://ohie.org/Measure/madx-hiv-indicators-example"
* status = #pending
* type = #summary
* period.start = "2018-01-01"
* period.end = "2018-01-31"
* group.code = $adx#QRPH_ADX_ART1_N
* group.stratifier.stratum.measureScore.value = 5
* group.stratifier.stratum.component[0].code = $madx-example-components#AGE_GROUP
* group.stratifier.stratum.component[=].value = $adx-hiv-example-age-group#P0Y--P1Y
* group.stratifier.stratum.component[+].code = $adx-example-components#SEX
* group.stratifier.stratum.component[=].value = $adx-hiv-example-sex#F