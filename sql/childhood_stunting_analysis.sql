create database childhood_stunting_analysis;
use childhood_stunting_analysis;

-- ================================================================
-- 1. project setup and data validation
-- ================================================================

select * from child_stunting limit 10;
select count(*) as total_records from child_stunting;
describe child_stunting;


-- ================================================================
-- 2. population overview
-- ================================================================

-- how is the child population distributed by gender?
select gender, count(*) as number_of_children from child_stunting group by gender;

-- how is the child population distributed by stunting risk?
select stunting_risk, count(*) as number_of_children from child_stunting 
group by stunting_risk order by number_of_children desc;


-- ================================================================
-- 3. child age analysis
-- ================================================================

-- how are children distributed across different ages?
select child_age, count(*) as number_of_children from child_stunting 
group by child_age order by child_age;

-- how are children distributed across age groups?
select case 
  when child_age <= 6 then '0-6 months' 
  when child_age <= 12 then '7-12 months' 
  when child_age <= 24 then '13-24 months' 
  when child_age <= 36 then '25-36 months' 
  when child_age <= 48 then '37-48 months' 
  else '49-59 months' end as age_group, count(*) as number_of_children 
  from child_stunting group by age_group order by number_of_children desc;

-- how does stunting risk vary across age groups?
select case 
  when child_age <= 6 then '0-6 months' 
  when child_age <= 12 then '7-12 months' 
  when child_age <= 24 then '13-24 months' 
  when child_age <= 36 then '25-36 months' 
  when child_age <= 48 then '37-48 months' 
  else '49-59 months' end as age_group, stunting_risk, count(*) as number_of_children 
  from child_stunting group by age_group, stunting_risk order by age_group, number_of_children desc;


-- ================================================================
-- 4. maternal education
-- ================================================================

-- what is the distribution of mothers' education levels?
select mother_education, count(*) as number_of_children from child_stunting
group by mother_education order by number_of_children desc;

-- how does stunting risk vary by mother's education level?
select mother_education, stunting_risk, count(*) as number_of_children 
from child_stunting group by mother_education, stunting_risk order by mother_education, number_of_children desc;


-- ================================================================
-- 5. economic level
-- ================================================================

-- how are children distributed across economic levels?
select economic_level, count(*) as number_of_children from child_stunting 
group by economic_level order by number_of_children desc;

-- how does stunting risk vary by economic level?
select economic_level, stunting_risk, count(*) as number_of_children from child_stunting 
group by economic_level, stunting_risk order by economic_level, number_of_children desc;


-- ================================================================
-- 6. living conditions and basic services
-- ================================================================

-- how does stunting risk vary by type of residence?
select residence_type, stunting_risk, count(*) as number_of_children from child_stunting 
group by residence_type, stunting_risk order by residence_type, number_of_children desc;

-- what is the distribution of sanitation facilities?
select sanitation, count(*) as number_of_children from child_stunting 
group by sanitation order by number_of_children desc;

-- how does stunting risk vary by sanitation conditions?
select sanitation, stunting_risk, count(*) as number_of_children from child_stunting
group by sanitation, stunting_risk order by sanitation, number_of_children desc;

-- how does stunting risk vary by drinking water source?
select drinking_water_source, stunting_risk, count(*) as number_of_children from child_stunting 
group by drinking_water_source, stunting_risk order by drinking_water_source, number_of_children desc;


-- ================================================================
-- 7. nutrition and child-care practices
-- ================================================================

-- how does stunting risk vary by exclusive breastfeeding status?
select exclusive_breastfeed, stunting_risk, count(*) as number_of_children from child_stunting 
group by exclusive_breastfeed, stunting_risk order by exclusive_breastfeed, number_of_children desc;

-- how does stunting risk vary by immunization status?
select immunization, stunting_risk, count(*) as number_of_children from child_stunting 
group by immunization, stunting_risk order by immunization, number_of_children desc;

-- how does stunting risk vary by deworming drug consumption?
select deworming_drug_consumption, stunting_risk, count(*) as number_of_children from child_stunting 
group by deworming_drug_consumption, stunting_risk order by deworming_drug_consumption, number_of_children desc;


-- ================================================================
-- 8. child growth measurements
-- ================================================================

-- how do average physical measurements differ across stunting-risk groups?
select stunting_risk, 
  avg(height) as average_height, 
  avg(weight) as average_weight, 
  avg(birth_length) as average_birth_length, 
  avg(birth_weight) as average_birth_weight 
from child_stunting group by stunting_risk;


-- ================================================================
-- 9. healthcare factors
-- ================================================================

-- does average anc attendance differ across stunting-risk groups?
select stunting_risk, avg(anc_visits) as average_anc_visits from child_stunting group by stunting_risk;

-- does average diarrhea frequency differ across stunting-risk groups?
select stunting_risk, avg(diarrhea_frequency) as average_diarrhea_frequency from child_stunting group by stunting_risk;


-- ================================================================
-- 10. targeted questions
-- ================================================================

-- which individual child-age groups contain more than 100 observations?
select child_age, count(*) as number_of_children from child_stunting 
group by child_age having count(*) > 100 order by child_age;

-- which mother's education groups contain more than 300 observations?
select mother_education, count(*) as number_of_children from child_stunting
group by mother_education having count(*) > 300 order by number_of_children desc;

-- what is the stunting-risk distribution among children aged 24 months or younger?
select stunting_risk, count(*) as number_of_children from child_stunting where child_age <= 24 
group by stunting_risk order by number_of_children desc;
