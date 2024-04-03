# Covid Dashboard: Project Overview




# Resources 
**Excel Version:** 16.78<br>
**mySQL Version:** 8.0.32<br>




# Data Collection
Dataset was found on World World in Data under the title [Coronavirus (COVID-19) Deaths](https://ourworldindata.org/covid-deaths).<br>



# Data Cleaning
Since most of the world was less concerned about COVID-19 from 2022 onward, this project only observed data up to the end of 2021. Additionally, the dataset only contained data from the beginning of 2020. For these reasons, the data utilized in this project was confined to 2020 and 2021. <br><br>
Most of the columns in the dataset were scaled versions of other variables or were not relevant to the project. Therefore, only the following columns were kept: Continent, Location, Date, New Cases, New Deaths, and Population. 'Location' usually referred to countries but was sometimes the continent when the 'Continent' cell was null. Mathematical operations were conducted to calculate Total Cases, Total Deaths, Death Percentage, Infection Count, and Population Infected Percentage. <br><br>
The deletion of columns was done in Excel to expedite the import into MySQL Workbench. All other data manipulation was conducted in SQL. <br>




# Dashboard

