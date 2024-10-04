import sys

def process_fasta(input_file, output_file, prefix):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for i, sequence in enumerate(infile, start=1):
            sequence = sequence.strip()
            if sequence:
                outfile.write(f">{prefix}{i}\n{sequence}\n")

def main():
    if len(sys.argv) != 3:
        print("Usage: python process.py <queries_file> <references_file>")
        sys.exit(1)

    queries_file = sys.argv[1]
    references_file = sys.argv[2]

    process_fasta(queries_file, "processed_queries.fasta", "query_")
    process_fasta(references_file, "processed_references.fasta", "ref_")

    print("Processing complete. Output files: processed_queries.fasta and processed_references.fasta")

if __name__ == "__main__":
    main()
