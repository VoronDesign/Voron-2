#!/usr/bin/python3
import subprocess, re, os, sys, getopt

def read_param(text, parameter):
    matches = re.search("(" + parameter + ")\s+\:\s+(\d+)", text)
    #print(matches)
    if matches:
        # The decimal group
        return int(matches.group(2))
    else:
        # Uh oh, no match
        print ("Could not find {0}".format(parameter))
        exit(1)

def assert_param_threshold(result, parameter, threshold):
    param_val = read_param(result, parameter)
    if param_val > threshold:
        print ("!! Detected \"{0}\" value of {1}".format(parameter, param_val))
        exit(1)
    #else:
        #print ("{0} value OK".format(parameter))

def process_stl(filename):
    cmd = "admesh \"{0}\"".format(filename)
    print ("Validating STL {0}".format(filename))
    result = subprocess.run(cmd, shell=True, check=True, stdout=subprocess.PIPE)
    output = str(result.stdout)

    assert_param_threshold(output, "Edges fixed", 0)
    assert_param_threshold(output, "Backwards edges", 0)
    assert_param_threshold(output, "Degenerate facets", 0)
    assert_param_threshold(output, "Facets removed", 0)
    assert_param_threshold(output, "Facets added", 0)
    assert_param_threshold(output, "Facets reversed", 0)
    
def process_markdown(filename):    
    cmd = "remark -u validate-links --no-stdout --frail \"{0}\"".format(filename)
    print ("Validating Markdown {0}".format(filename))
    subprocess.run(cmd, shell=True, check=True)  
    
def main(argv):
    argument = " ".join(sys.argv[1:])

    if argument.lower().endswith(".stl"):
      process_stl(argument)

if __name__ == "__main__":
   main(sys.argv[1:])
