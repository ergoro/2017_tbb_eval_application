## 2017_tbb_eval_application

## 1. Project Overview
This research project executes the analyses below using Stata and data collected from applicants to the free mentorship service for applying to scholarships offered by Tu Beca Bolivia (TBB):

## 2. Data Sources and sample
The data source comes from a sample of 241 out of the 890 applicantions submitted to TBB during the 2017 version.

## 3. Structuring and cleaning dataset

This module has two sections.

### Structuring
- Inputs
  - [Data from quetionnaire, "2017_evaluation_application" (.csv file)](https://github.com/cmg777/firm-tfp-convergence-brazil/blob/master/Build_database/Brazil_2003_2009_panel.dta)
- Code
  - [select and keep countries](https://github.com/ergoro/Investment-climate-and-business-performance/blob/master/keep.do)
- Outputs
  - [Dataset ready for generating vars (.dta file)]
  
### Cleaning
- Inputs
  - [Data from Enterprise Surveys, "New_Comprehensive_May_1_2017" (.dta file)]
- Code
  - [select and keep countries](https://github.com/ergoro/Investment-climate-and-business-performance/blob/master/keep.do)
- Outputs
  - [Dataset ready for generating vars (.dta file)]

## 4. Analyze data
 
- [Inputs]
  - [Data from previous step (.dta file)]
- Code:
  - [Estimating relationship](https://github.com/ergoro/Investment-climate-and-business-performance/blob/master/tfp_ic.do)
- [Outputs]
  - [Dataset with analysis results (.dta file)]
  
 ## 5. Main code
 
- [Inputs]
  - [Data from previous step (.dta file)]
- Code:
  - [IV procedure](https://github.com/ergoro/Investment-climate-and-business-performance/blob/master/iv.do)
- [Outputs]
  - [Dataset with final results (.dta file)]
