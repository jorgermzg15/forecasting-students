# Forecasting Models Projectx

This repository contains a Jupyter Notebook focused on forecasting models and time series analysis. The project is designed to help students understand and implement various forecasting techniques.

## Project Overview

The project includes implementation and analysis of various forecasting models and techniques, such as:

- Time Series Analysis
- Forecasting Models
- Predictive Analytics
- Model Evaluation and Selection
- Statistical Analysis

## Project Structure

- `Modelos de Pronósticos - Completo.ipynb`: Main Jupyter notebook containing the forecasting models and analysis
- `requirements.txt`: List of Python packages required for this project

## Tools and Technologies

- Python (3.x recommended)
- Jupyter Notebook
- Data Analysis Libraries:
  - Pandas
  - Plotly
  - Scikit-learn
  - Category Encoders
  - SciPy
  - NumPy

## Installation Instructions

1. Clone this repository:
   ```bash
   git clone https://github.com/jorgermzg15/forecasting.git
   cd forecasting
   ```

2. Create a virtual environment:
   ```bash
   # On macOS/Linux
   python -m venv .venv
   source .venv/bin/activate

   # On Windows
   python -m venv .venv
   .\.venv\Scripts\activate
   ```

3. Install the required packages:
   ```bash
   pip install -r requirements.txt
   ```

4. Launch Jupyter Notebook:
   ```bash
   jupyter notebook
   ```

5. Open `Modelos de Pronósticos - Completo.ipynb` in your browser and start learning!

## Troubleshooting

If you encounter any issues:

1. Make sure your virtual environment is activated (you should see `(.venv)` in your terminal)
2. Try upgrading pip before installing requirements:
   ```bash
   pip install --upgrade pip
   ```
3. If you have problems with any visualization, make sure Plotly is properly installed:
   ```bash
   pip install plotly --upgrade
   ```
4. If you encounter kernel issues in Jupyter:
   ```bash
   python -m ipykernel install --user
   ```

## For Students

This repository is designed to be a learning resource for forecasting and time series analysis. Each section in the notebook is structured to build upon previous concepts. Make sure to:

1. Follow the installation instructions carefully
2. Execute the notebook cells in order
3. Complete any exercises or challenges provided
4. Experiment with the code and parameters to deepen your understanding

## License

This project is available for educational purposes. Feel free to use and learn from it!

## Database Credits

The SQLite databases used in this project are sourced from the [SQLite Databases for Learning Data Science](https://github.com/davidjamesknight/SQLite_databases_for_learning_data_science) repository by David James Knight.