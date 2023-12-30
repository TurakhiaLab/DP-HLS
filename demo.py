from alignhls import AHRunner

query = "CCGTAGACCCGAACTTCGCGGTACACCTTCTGAAACCGTCCCTAATCCGACGAGCGCCTTGAGAACG"
reference = "TGAGAACGTAGTCTAGGCGAATCGGCCCTTGTATATCGGGGCCGTAGACCCGAACTTCGCGGTACAC"

# query = "AGTC"
# reference = "TGCC"

penalties = {"match":3, "mismatch":-1, "extend": -1, "open": -1, "linear_gap": -1}

runner = AHRunner()
runner.run(query, reference, penalties)
traceback = runner.get_traceback_path()
print(traceback)
