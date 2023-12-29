#!/home/AD.UCSD.EDU/jsliang/alignhls/bin/python
import numpy as np
import multiprocessing

def local_linear_align(sequence1, sequence2, match=2, mismatch=-1, gap_penalty=-2):
    rows, cols = len(sequence1) + 1, len(sequence2) + 1
    score_matrix = np.zeros((rows, cols))
    traceback_matrix = np.zeros((rows, cols), dtype=int)

    for i in range(1, rows):
        for j in range(1, cols):
            match_score = score_matrix[i-1][j-1] + (match if sequence1[i-1] == sequence2[j-1] else mismatch)
            delete_score = score_matrix[i-1][j] + gap_penalty
            insert_score = score_matrix[i][j-1] + gap_penalty
            zero_score = 0

            max_score = max(0, match_score, delete_score, insert_score)
            score_matrix[i][j] = max_score

            if max_score == match_score:
                traceback_matrix[i][j] = 1
            elif max_score == delete_score:
                traceback_matrix[i][j] = 2
            elif max_score == insert_score:
                traceback_matrix[i][j] = 3

    max_score = np.max(score_matrix)
    starting_points = [(i, j) for i in range(1, rows) for j in range(1, cols) if score_matrix[i][j] == max_score]

    return score_matrix, traceback_matrix, starting_points

def global_linear_align(sequence1, sequence2, match=2, mismatch=-1, gap_penalty=-2):
    rows, cols = len(sequence1) + 1, len(sequence2) + 1
    score_matrix = np.zeros((rows, cols))
    traceback_matrix = np.zeros((rows, cols), dtype=int)

    for i in range(1, rows):
        for j in range(1, cols):
            match_score = score_matrix[i-1][j-1] + (match if sequence1[i-1] == sequence2[j-1] else mismatch)
            delete_score = score_matrix[i-1][j] + gap_penalty
            insert_score = score_matrix[i][j-1] + gap_penalty

            max_score = max(match_score, delete_score, insert_score)
            score_matrix[i][j] = max_score

            if max_score == match_score:
                traceback_matrix[i][j] = 1
            elif max_score == delete_score:
                traceback_matrix[i][j] = 2
            else:
                traceback_matrix[i][j] = 3
    
    max_score = np.max(score_matrix)
    starting_points = [(i, j) for i in range(1, rows) for j in range(1, cols) if score_matrix[i][j] == max_score]

    return score_matrix, traceback_matrix, starting_points

def local_affine_align(sequence1, sequence2, match=2, mismatch=-1, gap_open_penalty=-2, gap_extension_penalty=-1):
    rows, cols = len(sequence1) + 1, len(sequence2) + 1
    score_matrix = np.zeros((rows, cols))
    traceback_matrix = np.zeros((rows, cols), dtype=int)

    for i in range(1, rows):
        for j in range(1, cols):
            match_score = score_matrix[i-1][j-1] + (match if sequence1[i-1] == sequence2[j-1] else mismatch)

            delete_open_score = score_matrix[i-1][j] + gap_open_penalty
            delete_extension_score = score_matrix[i-1][j] + gap_extension_penalty

            insert_open_score = score_matrix[i][j-1] + gap_open_penalty
            insert_extension_score = score_matrix[i][j-1] + gap_extension_penalty

            zero_score = 0

            max_score = max(0, match_score, delete_open_score, insert_open_score, delete_extension_score, insert_extension_score)

            score_matrix[i][j] = max_score

            if max_score == match_score:
                traceback_matrix[i][j] = 1
            elif max_score == delete_open_score or max_score == delete_extension_score:
                traceback_matrix[i][j] = 2
            elif max_score == insert_open_score or max_score == insert_extension_score:
                traceback_matrix[i][j] = 3

    max_score = np.max(score_matrix)
    starting_points = [(i, j) for i in range(1, rows) for j in range(1, cols) if score_matrix[i][j] == max_score]

    return score_matrix, traceback_matrix, starting_points

def global_affine_align(sequence1, sequence2, match=2, mismatch=-1, gap_open_penalty=-2, gap_extension_penalty=-1):
    rows, cols = len(sequence1) + 1, len(sequence2) + 1
    score_matrix = np.zeros((rows, cols))
    traceback_matrix = np.zeros((rows, cols), dtype=int)

    for i in range(1, rows):
        for j in range(1, cols):
            match_score = score_matrix[i-1][j-1] + (match if sequence1[i-1] == sequence2[j-1] else mismatch)

            delete_open_score = score_matrix[i-1][j] + gap_open_penalty
            delete_extension_score = score_matrix[i-1][j] + gap_extension_penalty

            insert_open_score = score_matrix[i][j-1] + gap_open_penalty
            insert_extension_score = score_matrix[i][j-1] + gap_extension_penalty

            max_score = max(match_score, delete_open_score, insert_open_score, delete_extension_score, insert_extension_score)
            score_matrix[i][j] = max_score

            if max_score == match_score:
                traceback_matrix[i][j] = 1
            elif max_score == delete_open_score or max_score == delete_extension_score:
                traceback_matrix[i][j] = 2
            else:
                traceback_matrix[i][j] = 3

    max_score = np.max(score_matrix)
    starting_points = [(i, j) for i in range(1, rows) for j in range(1, cols) if score_matrix[i][j] == max_score]

    return score_matrix, traceback_matrix, starting_points

def fixed_banded_local_linear_align(sequence1, sequence2, match=2, mismatch=-1, gap_penalty=-2, band_width=2):
    rows, cols = len(sequence1) + 1, len(sequence2) + 1
    score_matrix = np.zeros((rows, cols))
    traceback_matrix = np.zeros((rows, cols), dtype=int)

    for i in range(1, rows):
        for j in range(max(1, i - band_width), min(cols, i + band_width)):
            match_score = score_matrix[i-1][j-1] + (match if sequence1[i-1] == sequence2[j-1] else mismatch)
            delete_score = score_matrix[i-1][j] + gap_penalty
            insert_score = score_matrix[i][j-1] + gap_penalty
            zero_score = 0

            max_score = max(0, match_score, delete_score, insert_score)
            score_matrix[i][j] = max_score

            if max_score == match_score:
                traceback_matrix[i][j] = 1
            elif max_score == delete_score:
                traceback_matrix[i][j] = 2
            else:
                traceback_matrix[i][j] = 3

    max_score = np.max(score_matrix)
    max_i, max_j = np.unravel_index(np.argmax(score_matrix), score_matrix.shape)

    aligned_sequence1, aligned_sequence2 = [], []
    i, j = max_i, max_j

    while i > 0 and j > 0:
        if traceback_matrix[i][j] == 1:
            aligned_sequence1.append(sequence1[i-1])
            aligned_sequence2.append(sequence2[j-1])
            i -= 1
            j -= 1
        elif traceback_matrix[i][j] == 2:
            aligned_sequence1.append(sequence1[i-1])
            aligned_sequence2.append("-")   # gap 
            i -= 1
        else:
            aligned_sequence1.append("-")   # gap in sequence1
            aligned_sequence2.append(sequence2[j-1])
            j -= 1

    aligned_sequence1 = "".join(reversed(aligned_sequence1))
    aligned_sequence2 = "".join(reversed(aligned_sequence2))

    return score_matrix, aligned_sequence1, aligned_sequence2

def fixed_banded_local_affine_align(sequence1, sequence2, match=2, mismatch=-1, gap_open_penalty=-2, gap_extension_penalty=-1, band_width=2):
    rows, cols = len(sequence1) + 1, len(sequence2) + 1
    score_matrix = np.zeros((rows, cols))
    traceback_matrix = np.zeros((rows, cols), dtype=int)

    for i in range(1, rows):
        for j in range(max(1, i - band_width), min(cols, i + band_width)):
            match_score = score_matrix[i-1][j-1] + (match if sequence1[i-1] == sequence2[j-1] else mismatch)
            delete_open_score = score_matrix[i-1][j] + gap_open_penalty
            delete_extension_score = score_matrix[i-1][j] + gap_extension_penalty
            insert_open_score = score_matrix[i][j-1] + gap_open_penalty
            insert_extension_score = score_matrix[i][j-1] + gap_extension_penalty

            max_score = max(match_score, delete_open_score, insert_open_score, delete_extension_score, insert_extension_score)
            score_matrix[i][j] = max_score

            if max_score == match_score:
                traceback_matrix[i][j] = 1  # Diagonal
            elif max_score == delete_open_score or max_score == delete_extension_score:
                traceback_matrix[i][j] = 2  # Up
            else:
                traceback_matrix[i][j] = 3  # Left

    # Find the maximum score and its position
    max_score = np.max(score_matrix)
    max_i, max_j = np.unravel_index(np.argmax(score_matrix), score_matrix.shape)

    # Perform traceback starting from the maximum score position
    aligned_sequence1, aligned_sequence2 = [], []
    i, j = max_i, max_j

    while i > 0 and j > 0:
        if traceback_matrix[i][j] == 1:  # Diagonal
            aligned_sequence1.append(sequence1[i-1])
            aligned_sequence2.append(sequence2[j-1])
            i -= 1
            j -= 1
        elif traceback_matrix[i][j] == 2:  # Up
            aligned_sequence1.append(sequence1[i-1])
            aligned_sequence2.append("-")  # Gap in sequence2
            i -= 1
        else:
            aligned_sequence1.append("-")  # Gap in sequence1
            aligned_sequence2.append(sequence2[j-1])
            j -= 1

    # Reverse the sequences as traceback was performed from the end
    aligned_sequence1 = "".join(reversed(aligned_sequence1))
    aligned_sequence2 = "".join(reversed(aligned_sequence2))

    return score_matrix, aligned_sequence1, aligned_sequence2


def x_drop_align(sequence1, sequence2, match=2, mismatch=-1, gap=-2, x_drop=10):
    rows, cols = len(sequence1) + 1, len(sequence2) + 1
    score_matrix = np.zeros((rows, cols))
    traceback_matrix = np.zeros((rows, cols), dtype=int)

    max_score = 0
    max_i, max_j = 0, 0

    for i in range(1, rows):
        for j in range(1, cols):
            match_score = score_matrix[i-1][j-1] + (match if sequence1[i-1] == sequence2[j-1] else mismatch)
            delete_score = score_matrix[i-1][j] + gap
            insert_score = score_matrix[i][j-1] + gap

            max_score = max(0, match_score, delete_score, insert_score)
            score_matrix[i][j] = match_score
            if max_score == match_score:
                traceback_matrix[i][j] = 1
            elif max_score == delete_score:
                traceback_matrix[i][j] = 2
            elif max_score == insert_score:
                traceback_matrix[i][j] = 3

            if max_score > x_drop:
                max_i, max_j = i, j
            elif max_i > 0 and max_j > 0:
                return score_matrix, traceback_matrix, (max_i, max_j)
            
    return score_matrix, traceback_matrix, None

def main():
    input_file = "/home/AD.UCSD.EDU/swalia/data/pbsim2/paper/dataset_10k/ont/0.95/ont_xact_common.fa"
    with open(input_file, 'r') as file:
        lines = file.readlines()

    reference_sequence = ""
    query_sequence = ""
    is_reading_reference = False
    is_reading_query = False
    pair_num = 0

    for line in lines:
        if is_reading_reference:
            reference_sequence = line
            is_reading_reference = False
        elif is_reading_query:
            query_sequence = line
            is_reading_query = False
        elif line.startswith('>r'):
            is_reading_reference = True
            pair_num = line[2:]
        elif line.startswith('>q'):
            is_reading_query = True

        if reference_sequence and query_sequence:
            score_matrix, aligned_sequence1, aligned_sequence2 = local_linear_align(reference_sequence, query_sequence)

            print("Pair", pair_num, "alignment results")
            # print("Reference sequence:", reference_sequence)
            # print("Query sequence:", query_sequence)
            print("Alignment score:", score_matrix[-1][-1])
            print("Aligned sequence1:", aligned_sequence1)
            print("Aligned sequence2:", aligned_sequence2)

            reference_sequence = ""
            query_sequence = ""

if __name__ == "__main__":
    main()
