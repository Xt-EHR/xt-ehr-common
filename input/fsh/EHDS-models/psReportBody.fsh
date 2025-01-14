import os
import re

# Paths
folder_path = "input/fsh/EHDS-models"
output_file = "class_diagram.puml"

# Patterns for extracting information
model_pattern = r"\*\s*(\w+)\s+[\d.]*\.\.[\d.]*\s+(\w+)"  # Matches: * name range Model
aggregation_pattern = r"\*\s*(\w+)\s+[\d.]*\.\.[\d.]*\s+(\w+)"  # Matches references like: * field 1..* Model
logical_parent_pattern = r"Logical:\s*(\w+)\s*Parent:\s*(\w+)"

# Storage for models and relationships
models = set()
parent_relationships = []
aggregations = []

# Helper function for debugging
def debug_message(message):
    print(f"DEBUG: {message}")

# Parse files
debug_message(f"Looking for .fsh files in folder: {folder_path}")
for file_name in os.listdir(folder_path):
    if file_name.endswith(".fsh"):
        file_path = os.path.join(folder_path, file_name)
        debug_message(f"Processing file: {file_path}")
        with open(file_path, "r") as file:
            content = file.read()
            
            # Find models directly referenced (e.g., * allergy 1..* EHDSAllergyIntolerance)
            for match in re.findall(model_pattern, content):
                field_name, model = match
                debug_message(f"Found model reference: {field_name} references {model}")
                if model != "Base":  # Skip 'Base' or abstract placeholders
                    models.add(model)
                    aggregations.append((field_name, model))
            
            # Find logical -> parent relationships
            for match in re.findall(logical_parent_pattern, content):
                logical, parent = match
                debug_message(f"Found logical->parent relationship: {logical} inherits from {parent}")
                parent_relationships.append((logical, parent))

# Generate PlantUML content
debug_message(f"Generating PlantUML diagram in {output_file}")
with open(output_file, "w") as uml_file:
    uml_file.write("@startuml\n\n")
    
    # Define classes
    for model in models:
        uml_file.write(f"class {model} {{}}\n")
    
    uml_file.write("\n")
    
    # Add parent relationships
    for logical, parent in parent_relationships:
        uml_file.write(f"{logical} --|> {parent}\n")
    
    uml_file.write("\n")
    
    # Add aggregations
    for source, target in aggregations:
        uml_file.write(f"{source} -- {target}\n")
    
    uml_file.write("\n@enduml")

print(f"PlantUML class diagram generated: {output_file}")
