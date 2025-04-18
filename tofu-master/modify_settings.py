import json
import sys

if len(sys.argv) <= 1:
    print("modify_settings.py requires an argument")
    sys.exit()

vcd_file = str(sys.argv[1]).replace("temp/", "")
replace_fields = {"vcdGlob": vcd_file, "leakageModel": "HammingDistance", "pickleGlob": vcd_file.replace(".vcd", ".pickle"), "traceFileName": vcd_file.replace(".vcd", ".h5")}
settings_file = 'temp/settings_example.json'
modified = False
with open(settings_file) as json_file:
    data = json.load(json_file)
    for key in data:
        if key in replace_fields:
            data[key] = replace_fields[key]
            modified = True

if (modified):
    with open(settings_file, "w") as file:
        json.dump(data, file, indent=4)