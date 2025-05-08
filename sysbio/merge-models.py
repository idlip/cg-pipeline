"""
Python script to merge SBML models. Althought proof of concept with many obstacles.

Better way is to utilize SBML c library or API via python.
"""

from pathlib import Path
import tempfile
import os

from sbmlutils.manipulation import merge_models
from sbmlutils.validation import ValidationOptions


input_dir = Path("./models")

# xml_names = [f for f in os.listdir(input_dir) if f.endswith(".xml")]
xml_names = [ "Makin2013.xml", "BIOMD0000000434_url.xml"]
# xml_files = [os.path.join(input_dir, f) for f in os.listdir(input_dir) if f.endswith(".xml")]
xml_files = [input_dir / file for file in xml_names]

# model_ids = [ ]
model_paths = dict(zip(xml_names, xml_files))

temp_dir = tempfile.TemporaryDirectory()
merge_models(model_paths, output_dir="./models", validate = False, flatten = False)
             # validation_options=ValidationOptions(units_consistency=False))

"""
Help on function merge_models in module sbmlutils.manipulation.merge:

merge_models(model_paths: Dict[str, pathlib.Path], output_dir: pathlib.Path, merged_id: str = 'merged', flatten: bool = True, validate: bool = True, validate_input: bool = True, validation_options: Optional[sbmlutils.validation.ValidationOptions] = None, sbml_level: int = 3, sbml_version: int = 1) -> libsbml.SBMLDocument
    Merge SBML models.

    Merges SBML models given in `model_paths` in the `output_dir`.
    Models are provided as dictionary
    {
        'model1_id': model1_path,
        'model2_id': model2_path,
        ...
    }
    The model ids are used as ids for the ExternalModelDefinitions.
    Relative paths are set in the merged models.

    The created model is either in SBML L3V1 (default) or SBML L3V2.

    :param model_paths: absolute paths to models
    :param output_dir: output directory for merged model
    :param merged_id: model id of the merged model
    :param flatten: flattens the merged model
    :param validate: boolean flag to validate the merged model
    :param validate_input: boolean flag to validate the input models
    :param validation_options: ValidationOptions
    :param sbml_level: SBML Level of the merged model in [3]
    :param sbml_version: SBML Version of the merged model in [1, 2]
    :return: SBMLDocument of the merged models
"""


import libsbml

# Load two SBML models
reader = libsbml.SBMLReader()
doc1 = reader.readSBML('models/BIOMD0000000434_url.xml')
doc2 = reader.readSBML('models/BIOMD0000000247_url.xml')

# Get the models
model1 = doc1.getModel()
model2 = doc2.getModel()

# Merge compartments (add model2 compartments to model1)
for compartment in model2.getListOfCompartments():
    model1.addCompartment(compartment)

# Merge species (add species from model2 to model1)
for species in model2.getListOfSpecies():
    model1.addSpecies(species)

# Merge reactions (add reactions from model2 to model1)
for reaction in model2.getListOfReactions():
    model1.addReaction(reaction)

# Write the merged model to a new SBML file
writer = libsbml.SBMLWriter()
writer.writeSBMLToFile(doc1, 'merged_model.xml')
