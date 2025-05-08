"""
Init to build a systems mathematical model
"""

from pathlib import Path
# cobrapy
from cobra.io import read_sbml_model, write_sbml_model, load_model
# import logging
import pandas as pd

# copasi
import basico as cp

data_dir = Path("./models").resolve()

adipo = read_sbml_model(data_dir / "MODEL1402200001_url.xml")
model1 = read_sbml_model(data_dir / "DiCamillo2016.xml")

solution = adipo.optimize()

# init_list = adipo.metabolites[200:250]

for index in range(300, 350):
    print(adipo.metabolites[index].summary())

for index in range(10, 200):
    print()

metabol = adipo.metabolites
meta_names = [id.name for id in metabol]

df = pd.DataFrame(list(zip(metabol, meta_names)), columns=["Metabolite ID", "Compound/Gene/ID"])

chol = cp.load_model("models/BIOMD0000000434_url.xml")

chol_sps = cp.get_species()

adipo = cp.load_model("models/MODEL1402200001_url.xml")

recon = cp.load_model("models/Recon3D.xml")
