library(DataExplorer)
create_report(icfes_20201)

library (dataMaid)
makeDataReport(icfes_20201,
               render = TRUE,
               replace = TRUE,
               smartNum = TRUE,
               addSummaryTable = TRUE)
library (psych)
describe(icfes_20201)
