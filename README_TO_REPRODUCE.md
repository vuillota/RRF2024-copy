
---
title: "README Template for Reproducibility Packages"
output:
  word_document: default
  html_document: default
---

## Contents

1. [Overview](#overview)
2. [Data Availability](#data-availability)
3. [Instructions for Replicators](#instructions-for-replicators)
4. [List of Exhibits](#list-of-exhibits)
5. [Requirements](#requirements)

The rest of the contents of this README file is highly desirable, but not strictly needed for reproducibility. The points above are needed.

6. [Code Description](#code-description)
7. [Folder Structure](#folder-structure)


## Overview

This package provides data, codes, and R environment to reproduce our work from original data to outputs. Our outputs are included in this package for comparison with outputs reviewer will obtain.

## Data Availability

This section will outline where and how the data supporting the findings of the study can be accessed and used. This is crucial, especially for replicating the results, as only the same data will be able to produce consistent results. Make sure to list all the datasets used and categorize them as follows:

The datatables needed to reproduce our work are :
- treat_status.dta
- TZA_amenity.csv
- TZA_CCT_baseline.dta

All data are publicly available on World Bank MicroData repository https://microdata.worldbank.org/index.php/home


### Data Sources

Provide detailed information about the data sources, whether obtained from public repositories, institutional databases, or other sources. Include instructions on how others can access the data, including where it can be downloaded and the names under which it is cataloged. This is particularly important for replicators to ensure consistent results by using the same datasets. For example, if the package uses the World Bank’s World Development Indicators, ensure to add the URL, variable names, and file names exactly as they appear on the portal, and the year the data was accessed.

You can use the following as a template. Make sure to fill out this information for each of the data files used:

- **Filename 1:** Exact file name as shown on the source website

- **Source:** Name of the source website

- **URL:** Exact downloadable URL of the data used

- **Access year:**  Date when the data was accessed. This is especially important as data can be updated, and replicators should know the exact time when the data was downloaded.

- **Variable names (optional):** This is useful when only data for certain variables is downloaded, such as when using the World Bank’s World Development Indicators data.

- **License (optional):** While this is not mandatory, it is great to know under which license the data is available to understand if it is public or private, or publication limitations.

## Instructions for Replicators

New users should follow these steps to run the package successfully:

  - Download data
- Users must first have access to all data files if they are not included in the reproducibility package. They should go to the mentioned links, download the listed files, and place them in the data folder.

  - `main_dofile.do`
- Run renv::restore() command in the main script (line 9 to uncomment)
- Change path to the data folder (line 36)
- Run the `main_dofile.do` file.

## List of Exhibits

The provided code reproduces:

- [ ] All tables and figures in the paper
- [ ] Selected tables and figures in the paper, as explained and justified below

| Exhibit name | Output filename | Script | Note |
|--------------|-----------------|--------|------|
| Table 1      | summary_table.csv | 03-analyzing-data.R (line 22) | Found in R/Outputs |
| Table 2      | balance_table.csv | 03-analyzing-data.R (line 38) | Found in R/Outputs |
| Table 3      | regression_table.tex | 03-analyzing-data.R (line 59) | Found in R/Outputs |
| Figure 1     | fig1.png   | 03-analyzing-data.R (line 80) | Found in R/Outputs, Image Format: Portable Network Graphic (PNG), Bits Per Pixel: 32, Color: Truecolour with alpha, Dimensions: 970 x 544, Interlaced: Yes, XResolution: 144, YResolution: 144 |
| Figure 2     | fig2.png   | 03-analyzing-data.R (line 115) | Found in R/Outputs, Image Format: Portable Network Graphic (PNG), Bits Per Pixel: 32, Color: Truecolour with alpha, Dimensions: 970 x 544, Interlaced: Yes, XResolution: 144, YResolution: 144 |
| Figure 3     | fig3.png   | 03-analyzing-data.R (line 146) | Found in R/Outputs, Image Format: Portable Network Graphic (PNG), Bits Per Pixel: 32, Color: Truecolour with alpha, Dimensions: 970 x 544, Interlaced: Yes, XResolution: 144, YResolution: 144 |

## Requirements

### Computational Requirements

In this section, specify operating system requirements, software dependencies, environment setup instructions, and any other relevant information essential for replicating the results. Each of these factors plays an important role in ensuring successful replication.

### Software Requirements

List all software requirements, including versions, dependencies, libraries, environment setup, and packages installed. Using different versions of the same software could lead to variations in results. If multiple software are used, include details for all.

Example:

- **Stata version 15**

  - estout
  
  - rdrobust
  
- **Python 3.6.4**

  - pandas 0.24.2
  
  - numpy 1.16.4

### Memory and Runtime and Storage Requirements

Provide consistent information about memory resources for reliable computation. Include runtime information for replicators to assess processing times and detect potential issues with the code. It would be best to describe how much storage is required in addition to the space visible in the typical repository, for instance, because data will be unzipped, data downloaded, or temporary files written.

## Code Description 

Give an overview of the program files and their purposes. Remove redundant or obsolete files from the replication archive. For example, main.do sets file paths, installs necessary ADO packages, and executes all other dofiles. Meanwhile, cleaning.do loads data, handles missing values, and analysis.do performs basic statistical analysis and generate visualizations. 

Make sure to also include any crucial information that replicators should be aware of to facilitate a one-click run of the code.

## Folder Structure

Details about folder structure are crucial because a well-organized layout enables replicators to navigate quickly to the desired files or directories without searching through cluttered or disorganized folders. Include only the files necessary for replication and delete any unnecessary files.

An ideal folder structure for a reproducibility package should look something like this:

```
Data
  ├── Raw
  └── Cleaned
Code
  ├── Main_dofile.do
  ├── 01_cleaning.do
  └── 02_analysis.do
Outputs
  ├── Main
  │   ├── Tables
  │   └── Figures
  └── Annex
      ├── Tables
      └── Manuscript
```
