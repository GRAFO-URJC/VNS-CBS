# A variable neighborhood search approach for cyclic bandwidth sum problem <a href="https://doi.org/10.1016/j.knosys.2022.108680"><img src="https://upload.wikimedia.org/wikipedia/commons/1/11/DOI_logo.svg" alt="DOI" width="20"/></a> 

<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=mail" />

[![Elsevier Badge](https://img.shields.io/badge/Elsevier-FF6C00?logo=elsevier&logoColor=fff&style=flat)](https://doi.org/10.1016/j.knosys.2022.108680)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Code](https://img.shields.io/badge/Code-Java_-orange.svg)]()
[![DOI](https://zenodo.org/badge/1126726798.svg)](https://doi.org/10.5281/zenodo.18132028)

## Abstract

In this paper, we tackle the Cyclic Bandwidth Sum Problem (CBSP), consisting in minimizing the sum of the bandwidth of the edges of an input graph computed in a cycle-structured host graph. This problem has been widely studied in the literature due to its multiple real-world applications, such as circuit design, migration of telecommunication networks, or graph drawing, among others. Particularly, we tackle this problem by proposing a multistart procedure (MS-BVNS) whose main components are a new greedy constructive algorithm and an intensification strategy based on the Variable Neighborhood Search metaheuristic. Our algorithmic proposal is evaluated over a set of 40 instances previously studied in the literature and over a new proposed set of 66 well-known instances introduced in this paper. The obtained results have been satisfactory compared with the ones obtained by the best previous algorithm in the state of the art. The statistical tests performed indicate that the differences between the methods are significant.

## Authors

- Sergio Cavero <sup>1,*</sup> <a href="mailto:sergio.cavero@urjc.es" aria-label="Sergio Cavero Email"><img src="https://upload.wikimedia.org/wikipedia/commons/b/b1/Email_Shiny_Icon.svg" alt="email" width="20" style="vertical-align:middle;"/></a> <a href="https://orcid.org/0000-0002-5258-5915"><img src="https://upload.wikimedia.org/wikipedia/commons/0/06/ORCID_iD.svg" alt="ORCID" width="20" style="vertical-align:middle;"/></a>
- Eduardo G. Pardo <sup>1</sup> <a href="mailto:eduardo.pardo@urjc.es" aria-label="Eduardo G. Pardo Email"><img src="https://upload.wikimedia.org/wikipedia/commons/b/b1/Email_Shiny_Icon.svg" alt="email" width="20" style="vertical-align:middle;"/></a> <a href="https://orcid.org/0000-0002-6247-5269"><img src="https://upload.wikimedia.org/wikipedia/commons/0/06/ORCID_iD.svg" alt="ORCID" width="20" style="vertical-align:middle;"/></a>
- Abraham Duarte <sup>1</sup> <a href="mailto:abraham.duarte@urjc.es" aria-label="Abraham Duarte Email"><img src="https://upload.wikimedia.org/wikipedia/commons/b/b1/Email_Shiny_Icon.svg" alt="email" width="20" style="vertical-align:middle;"/></a> <a href="https://orcid.org/0000-0002-4532-3124"><img src="https://upload.wikimedia.org/wikipedia/commons/0/06/ORCID_iD.svg" alt="ORCID" width="20" style="vertical-align:middle;"/></a>
- Eduardo Rodriguez-Tello <sup>2</sup> <a href="mailto:ertello@cinvestav.mx" aria-label="Email"><img src="https://upload.wikimedia.org/wikipedia/commons/b/b1/Email_Shiny_Icon.svg" alt="email" width="20" style="vertical-align:middle;"/></a> <a href="https://orcid.org/0000-0002-0333-0633"><img src="https://upload.wikimedia.org/wikipedia/commons/0/06/ORCID_iD.svg" alt="ORCID" width="20" style="vertical-align:middle;"/></a>

### Affiliations

1. **Universidad Rey Juan Carlos**, Department of Computer Sciences, C/Tulipán s/n, 28903, Madrid, Spain
2. **Cinvestav**, Unidad Tamaulipas, Km. 5.5 Carretera Victoria Soto La Marina, Victoria, 87130, Tamps., Mexico

<sup>*</sup>Corresponding author.

---

## Table of Contents

- [Repository Structure](#repository-structure)
- [Abstract](#abstract)
- [Authors](#authors)
- [Datasets](#datasets)
- [Code Execution](#code-execution)
- [Requirements](#requirements)
- [Results](#results)
- [License](#license)
- [Funding](#funding)
- [Citation](#citation)
- [Acknowledgments](#acknowledgments)
- [Contact](#contact)
---

## Repository Structure

```
.
├── instances/          # Problem instances folder
│   ├── test/          # Small test instances
│   ├── estateOfArt/   # Literature benchmark instances
│   └── newHB/         # New hard instances from Harwell-Boeing collection
├── code/               # Jar and scripts to run the program
│   ├── CBS.jar         # Compiled Java program
│   ├── run.sh          # Script to run the program
│   └── libs/           # Required libraries
├── LICENSE            # License file
└── README.md          # This readme file

```

---



## Datasets

The computational tests are performed over two main sets of instances.

### Instance Format

Each instance is encoded as a plain text file representing a graph:
- The first line contains the number of vertices `n` and edges `m`.
- Each subsequent line contains a pair of integers `u v` representing an edge between vertex `u` and vertex `v`.

### Dataset Statistics

| Dataset | Instances | Description |
|---------|-----------|-------------|
| **Literature Set** | 40 | Includes 16 regular-structured graphs (paths, cycles, wheels, powers of cycles, Cartesian products) and 24 sparse matrices from the Harwell-Boeing collection. |
| **New HB Set** | 66 | A new set of 66 hard instances derived from the Harwell-Boeing collection to further test algorithmic performance. |


## Code Execution

### Running the JAR

#### Using Java directly:

```bash
java -jar CBS.jar [instanceFolder] [outputFolder] [iterations] [reportF] [cutoff]
```

#### Using the run.sh script:

```bash
./run.sh [instanceFolder] [outputFolder] [iterations] [reportF] [cutoff]
```

### Parameters

| Parameter         | Description                                                      | Default value   |
|-------------------|------------------------------------------------------------------|-----------------|
| **instanceFolder**| Folder containing the input instances to process                  | `instances/test`|
| **outputFolder**  | Folder where experiment results will be saved                     | `output/`       |
| **iterations**    | Number of algorithm iterations                                   | `10000`         |
| **reportF**       | Report frequency (how often to generate a report, in iterations) | `100`           |
| **cutoff**        | Time limit in seconds for each instance                          | `15`            |

### Usage Examples

**Example 1: Use default values**
```bash
java -jar CBS.jar
```

**Example 2: Specify instance and output folders**
```bash
java -jar CBS.jar instances/estateOfArt results/
```

**Example 3: Full custom configuration**
```bash
java -jar CBS.jar instances/ output/ 5000 50 30
```

**Example 4: Quick test experiment**
```bash
java -jar CBS.jar instances/test output/ 100 10 5
```

**Example 5: Using the script**
```bash
./run.sh instances/estateOfArt results/ 10000 100 15
```

## Requirements

- Java 11 or higher
- Minimum 4GB RAM recommended for large instances


### Dependencies

The `libs/` folder is essential for running the application. It must contain all required JAR libraries (such as Apache POI, Commons, etc.) alongside `CBS.jar`. These libraries are necessary for the program to execute correctly.

If you are sharing or deploying the project, always include the complete `libs/` directory with all its JAR files. Without these, the application will not run.

Main required libraries include:
- Apache POI
- Apache Commons Collections
- Apache Commons Compress
- XMLBeans

If building from source, dependencies may be managed by Maven, but for running the distributed JAR, the `libs/` folder is mandatory.

## Results

Experimental results are saved in the output folder you specify when running the program (e.g., `output/` or `results/`). If you do not specify an output folder, results will be placed in the default folder (`output/` or `results/` if it exists).

The main output is an Excel (.xlsx) file containing a summary table for each experiment. The columns in the results file include:

| Instance         | 1  | 2  |...| CPU Time (s) | CPU Time Best (s) | Iterations |
|------------------|----|----|--------------|-------------------|------------|
| instance6_6.txt  | 8  | 8  | ...|0.012418     | 0.00702           | 2          |
| instance7_11.txt | 17 | 17 | ...|0.010102     | 0.005035          | 2          |
| instance7_8.txt  | 10 | 10 | ...|0.008747     | 0.00446           | 2          |

Where:
- **Instance**: Name of the input file processed
- **1**, **2**, ...: Solution values obtained in each run
- **CPU Time (s)**: Total CPU time for the run
- **CPU Time Best (s)**: CPU time to reach the best solution
- **Iterations**: Number of iterations performed

Results can be further analyzed using the provided visualization scripts in the `analysis` folder.

## License

This project is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International Public License (CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/).

Summary:
- You may reproduce, share, and adapt the material for non-commercial purposes only.
- You must provide appropriate attribution, indicate changes, and link to the license.
- Adapted material must be licensed under the same or a compatible license.
- No additional restrictions or technological measures may be applied.

Disclaimer: The material is provided as-is, without warranties. For the full legal code, see: https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode

### MIT License Summary

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED.

**Alternative licenses:** If you require a different license for commercial or academic use, please contact the corresponding author.

## Funding

This research has been partially supported by:

* **Ministerio de Ciencia, Innovación y Universidades** (Grants Ref. PGC2018-095322-B-C22, PID2021-1257090A-C22, and FPU19/04098).
* **Comunidad de Madrid and European Regional Development Fund** (Grant Ref. P2018/TCS-4566).

## Citation

If you use this work in your research, please cite our paper:

### Bibtex

```bibtex
@article{Cavero2022,
  title={A variable neighborhood search approach for cyclic bandwidth sum problem},
  author={Cavero, Sergio and Pardo, Eduardo G. and Duarte, Abraham and Rodriguez-Tello, Eduardo},
  journal={Knowledge-Based Systems},
  volume={246},
  pages={108680},
  year={2022},
  publisher={Elsevier},
  doi={10.1016/j.knosys.2022.108680}
}

```

### APA Format

Cavero, S., Pardo, E. G., Duarte, A., & Rodriguez-Tello, E. (2022). A variable neighborhood search approach for cyclic bandwidth sum problem. *Knowledge-Based Systems*, *246*, 108680. https://doi.org/10.1016/j.knosys.2022.108680

## Acknowledgments

We would like to thank E. Rodriguez-Tello et al., authors of the best previous method in the state of the art (DMAB+MA) for sharing their code and their findings with us.

## Contact

For questions, issues, or collaborations, please contact:

* **Sergio Cavero**: [sergio.cavero@urjc.es](mailto:sergio.cavero@urjc.es)
