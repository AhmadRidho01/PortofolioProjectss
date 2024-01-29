

-- Data that we are going to be using

SELECT
	rgn11nm,
	population_2011,
	job_density_flag,
	key_stage_2_attainment_school_year_2007_to_2008,
	key_stage_4_attainment_school_year_2012_to_2013,
	level_2_at_age_18,
	level_3_at_age_18,
	activity_at_age_19_full_time_higher_education,
	activity_at_age_19_sustained_further_education,
	activity_at_age_19_appprenticeships,
	activity_at_age_19_employment_with_earnings_above_0,
	activity_at_age_19_employment_with_earnings_above_10_000,
	activity_at_age_19_out_of_work
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1



-- Proportion of pupils that achieved level 4 or above (expected level) in key stage 2 in English and Maths in the 2007 to 2008 school year

SELECT rgn11nm, population_2011, key_stage_2_attainment_school_year_2007_to_2008
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1



-- Proportion of pupils that achieved 5 GCSE or more, including English and Maths, with grades A*-C in the 2012 to 2013 school year

SELECT rgn11nm, population_2011, key_stage_4_attainment_school_year_2012_to_2013
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1



-- Proportion of the town/city's 2012/13 key stage 4 cohort that achieved level 2 qualifications at the age 18.

SELECT rgn11nm, population_2011, level_2_at_age_18
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1



-- Proportion of the town/city's 2012/13 key stage 4 cohort that achieved level 3 qualifications at the age 18.

SELECT rgn11nm, population_2011, level_3_at_age_18
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1



-- Proportion of the town/city's 2012/13 key stage 4 cohort in full time higher education at the age 19.

SELECT rgn11nm, population_2011, activity_at_age_19_full_time_higher_education
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1



-- Proportion of the town/city's 2012/13 key stage 4 cohort in sustained further education at the age 19.

SELECT rgn11nm, population_2011, activity_at_age_19_sustained_further_education
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1



-- Proportion of the town/city's 2012/13 key stage 4 cohort in an apprenticeship at the age 19.

SELECT rgn11nm, population_2011, activity_at_age_19_appprenticeships
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1



-- Proportion of the town/city's 2012/13 key stage 4 cohort in sustained employment at the age 19.

SELECT rgn11nm, population_2011, activity_at_age_19_employment_with_earnings_above_0
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1



-- Proportion of the town/city's 2012/13 key stage 4 cohort in sustained employment earning £10,000 or above at the age 19.

SELECT rgn11nm, population_2011, activity_at_age_19_employment_with_earnings_above_10_000
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1



-- Proportion of the town/city's 2012/13 key stage 4 cohort claiming out-of-work benefits at the age 19.

SELECT rgn11nm, population_2011, activity_at_age_19_out_of_work
FROM [2_eenglish]
WHERE rgn11nm is not null
ORDER BY 1