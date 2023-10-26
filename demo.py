from alignhls import AHRunner

query = "CCGTAGACCCGAACTTCGCGGTACACCTTCTGAAACCGTCCCTAATCCGACGAGCGCCTTGAGAACG"
reference = "TGAGAACGTAGTCTAGGCGAATCGGCCCTTGTATATCGGGGCCGTAGACCCGAACTTCGCGGTACAC"

# query = "AGTC"
# reference = "TGCC"

runner = AHRunner()
runner.run(query, reference)
traceback = runner.get_traceback_path()
print(traceback)
