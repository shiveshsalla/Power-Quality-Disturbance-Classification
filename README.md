# Classification of Power Quality Disturbances Using Machine Learning Methods

## Overview

Power Quality Disturbances (PQDs), such as voltage sags, swells, interruptions, harmonics, transients, and oscillations, significantly affect the reliability and performance of electrical power systems.

This project focuses on the classification of power quality disturbances using signal processing and machine learning techniques. The Fourier SynchroSqueezing Transform (FSST) is explored for signal preprocessing and time-frequency analysis, followed by machine learning algorithms to classify different disturbance patterns.

Four machine learning algorithms are considered and compared: Support Vector Machine (SVM), Random Forest (RF), Gradient Boosting Machine (GBM), and Logistic Regression (LR).

## Objectives

- Generate different power quality disturbance signals using MATLAB Simulink.
- Apply Fourier SynchroSqueezing Transform (FSST) for signal preprocessing.
- Convert signal representations into numerical formats for machine learning.
- Implement multiple machine learning classification algorithms.
- Evaluate and compare model performance using classification metrics.
- Analyze the effectiveness of different machine learning techniques for power quality disturbance classification.

## Dataset Description

The project uses synthetic power quality disturbance signals generated using MATLAB Simulink.

The study considers eight types of power quality disturbances:

1. Fluctuations
2. Interruptions
3. Notches
4. Transients
5. Voltage Sags
6. Voltage Swells
7. Sinusoidal Signals
8. Oscillatory Signals

### Simulation Parameters

| Parameter | Value |
|---|---|
| Signal Amplitude | 1 |
| Frequency | 50 Hz |
| Sampling Rate | 3200 Hz |
| Number of Disturbance Types | 8 |
| Signals per Class | 50 |
| Total Generated Signals | 400 |

The generated signals are converted into numerical representations and organized into datasets for further processing and analysis.

## Methodology

### 1. Signal Generation

Power quality disturbance signals are generated using MATLAB Simulink. Different disturbance conditions are simulated to obtain representative signal patterns.

### 2. Data Conversion

The generated signal representations are converted into numerical matrix formats and stored as CSV files for machine learning applications.

### 3. Signal Preprocessing Using FSST

The Fourier SynchroSqueezing Transform (FSST) is used as a time-frequency analysis technique.

FSST improves the concentration of frequency components by redistributing time-frequency energy according to instantaneous frequency information. It is particularly useful for analyzing non-stationary signals.

### 4. Machine Learning Classification

Four machine learning algorithms are implemented:

**Support Vector Machine (SVM)**

Uses an optimal decision boundary to distinguish between different classes.

**Random Forest (RF)**

Uses an ensemble of decision trees to improve classification performance and robustness.

**Gradient Boosting Machine (GBM)**

Builds decision trees sequentially, with each new learner attempting to correct the errors of previous learners.

**Logistic Regression (LR)**

Uses a logistic function to estimate class probabilities for classification.

### 5. Model Evaluation

The classification models are evaluated using the following performance metrics:

- Accuracy
- Precision
- Recall
- F1-Score
- Confusion Matrix

Comparative visualizations are used to analyze the performance of the implemented algorithms.

## Technologies Used

| Category | Technologies |
|---|---|
| Programming Languages | Python, MATLAB |
| Machine Learning | Scikit-learn |
| Data Processing | NumPy, Pandas |
| Signal Processing | Fourier SynchroSqueezing Transform (FSST) |
| Visualization | Matplotlib, Seaborn |
| Development Environment | Jupyter Notebook, MATLAB |

## Project Structure

```text
Power-Quality-Disturbance-Classification/
│
├── Code/
│   ├── EEE_code.ipynb
│   └── FSST.m
│
├── Dataset/
│   ├── datasets in csv/
│   ├── Raw/
│   │   └── all_classes.xlsx
│   ├── Processed/
│   │   └── preprocessed_pqd_data.csv
│   └── signals of Classes/
│
├── Results/
│   ├── F1 score
│   ├── precision
│   ├── Recall
│   └── Other result visualizations
│
├── README.md
├── requirements.txt
└── .gitignore
```

## Installation and Execution

### 1. Clone the Repository

```bash
git clone https://github.com/shiveshsalla/Power-Quality-Disturbance-Classification.git
```

### 2. Navigate to the Project Directory

```bash
cd Power-Quality-Disturbance-Classification
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Launch Jupyter Notebook

```bash
jupyter notebook
```

Open the following notebook:

```text
Code/EEE_code.ipynb
```

Execute the notebook cells to explore the data processing, machine learning implementation, and evaluation workflow.

Ensure that dataset paths in the notebook are configured according to your local project directory.

### 5. MATLAB Files

Open the MATLAB `.m` and `.mlx` files in MATLAB to explore the signal generation and preprocessing implementations.

## Results and Analysis

The project includes comparative performance analysis of the four machine learning algorithms.

The reported accuracy values in the project study are:

| Algorithm | Reported Accuracy |
|---|---:|
| Gradient Boosting Machine (GBM) | 99% |
| Random Forest (RF) | 96% |
| Support Vector Machine (SVM) | 91% |
| Logistic Regression (LR) | 90% |

Gradient Boosting Machine achieved the highest reported accuracy among the evaluated algorithms.

The results section also includes visual comparisons of precision, recall, and F1-score.

## Conclusion

This project explores the application of signal processing and machine learning techniques for power quality disturbance classification.

The comparative study highlights the potential of ensemble learning algorithms, particularly Gradient Boosting and Random Forest, for identifying different power quality disturbance patterns.

The project provides a foundation for further exploration of intelligent power quality monitoring and automated disturbance classification.

## Future Scope

- Validate the classification models using real-world power quality datasets.
- Explore deep learning techniques for disturbance classification.
- Improve model robustness against noise and varying operating conditions.
- Investigate real-time power quality monitoring and classification.
- Develop hybrid signal processing and machine learning approaches.
