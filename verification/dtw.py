import numpy as np
import random

def random_genome_sequence(length: int, alphabet: list = ["A", "T", "C", "G"]):
    """Generate s sequence given the alphabet

    Args:
        length (int): Length of the sequence
        alphabet (list, optional): _description_. Defaults to ["A", "T", "C", "G"].

    Returns:
        np.array: generated sequence
    """
    return np.array([ random.choice(alphabet) for i in range(length) ])

def random_complex_sequence(length: int, magnitude: int):
    """Generate a sequence of complex numbers

    Args:
        length (int): Length of the sequence.
        magnitude (int): The real and imaginary part will be between -mangitude and magnitude

    Returns:
        np.array: The generated complex sequence. 
    """

    real_part = np.random.uniform(-magnitude, magnitude, length)
    imag_part = np.random.uniform(-magnitude, magnitude, length)
    complex_sequence = real_part + 1j * imag_part
    return complex_sequence
