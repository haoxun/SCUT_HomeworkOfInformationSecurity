
"""
This Script implemented a simple DES.

"""


def extract_key(table, key):
    new_key = []
    for index in table:
        new_key.append(key[index])
    return new_key


class KGen:

    table_c0_d0 = [
        56, 48, 40, 32, 24, 16, 8,
        0, 57, 49, 41, 33, 25, 17,
        9, 1, 58, 50, 42, 34, 26,
        18, 10, 2, 59, 51, 43, 35,
        62, 54, 46, 38, 30, 22, 14,
        6, 61, 53, 45, 37, 29, 21,
        13, 5, 60, 52, 44, 36, 28,
        20, 12,  4, 27, 19, 11, 3,
    ]

    table_ci_di_to_ki = [
        13, 16, 10, 23, 0, 4, 2, 27,
        14, 5, 20, 9, 22, 18, 11, 3,
        25, 7, 15, 6, 26, 19, 12, 1,
        40, 51, 30, 36, 46, 54, 29, 39,
        50, 44, 32, 47, 43, 48, 38, 55,
        33, 52, 45, 41, 49, 35, 28, 31,
    ]

    table_shift_size = [
        1, 1,
        2, 2, 2, 2, 2, 2,
        1,
        2, 2, 2, 2, 2, 2,
        1,
    ]

    @classmethod
    def logical_left_shift(cls, data, size):
        return data[size:] + data[:size]

    @classmethod
    def generate_k16rounds(cls, key64):
        """
        :param key64: a list contains 64 element, each element hold either True
        or False.
        """

        k16rounds = []

        c, d = cls.get_c0_d0(key64)
        for i in range(16):
            shift_size = cls.table_shift_size[i]

            c = cls.logical_left_shift(c, shift_size)
            d = cls.logical_left_shift(d, shift_size)
            k = cls.gen_ki_from_ci_di(c, d)

            k16rounds.append(k)
        return k16rounds

    @classmethod
    def get_c0_d0(cls, key64):
        transformed_key56 = extract_key(cls.table_c0_d0, key64)
        return transformed_key56[:28], transformed_key56[28:]

    @classmethod
    def gen_ki_from_ci_di(cls, ci, di):
        key56 = ci + di
        return extract_key(cls.table_ci_di_to_ki, key56)


class SBox:

    table_s = [
        # S1
        [14, 4, 13, 1, 2, 15, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7,
         0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, 11, 9, 5, 3, 8,
         4, 1, 14, 8, 13, 6, 2, 11, 15, 12, 9, 7, 3, 10, 5, 0,
         15, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, 14, 10, 0, 6, 13],

        # S2
        [15, 1, 8, 14, 6, 11, 3, 4, 9, 7, 2, 13, 12, 0, 5, 10,
         3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, 11, 5,
         0, 14, 7, 11, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15,
         13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9],

        # S3
        [10, 0, 9, 14, 6, 3, 15, 5, 1, 13, 12, 7, 11, 4, 2, 8,
         13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, 14, 12, 11, 15, 1,
         13, 6, 4, 9, 8, 15, 3, 0, 11, 1, 2, 12, 5, 10, 14, 7,
         1, 10, 13, 0, 6, 9, 8, 7, 4, 15, 14, 3, 11, 5, 2, 12],

        # S4
        [7, 13, 14, 3, 0, 6, 9, 10, 1, 2, 8, 5, 11, 12, 4, 15,
         13, 8, 11, 5, 6, 15, 0, 3, 4, 7, 2, 12, 1, 10, 14, 9,
         10, 6, 9, 0, 12, 11, 7, 13, 15, 1, 3, 14, 5, 2, 8, 4,
         3, 15, 0, 6, 10, 1, 13, 8, 9, 4, 5, 11, 12, 7, 2, 14],

        # S5
        [2, 12, 4, 1, 7, 10, 11, 6, 8, 5, 3, 15, 13, 0, 14, 9,
         14, 11, 2, 12, 4, 7, 13, 1, 5, 0, 15, 10, 3, 9, 8, 6,
         4, 2, 1, 11, 10, 13, 7, 8, 15, 9, 12, 5, 6, 3, 0, 14,
         11, 8, 12, 7, 1, 14, 2, 13, 6, 15, 0, 9, 10, 4, 5, 3],

        # S6
        [12, 1, 10, 15, 9, 2, 6, 8, 0, 13, 3, 4, 14, 7, 5, 11,
         10, 15, 4, 2, 7, 12, 9, 5, 6, 1, 13, 14, 0, 11, 3, 8,
         9, 14, 15, 5, 2, 8, 12, 3, 7, 0, 4, 10, 1, 13, 11, 6,
         4, 3, 2, 12, 9, 5, 15, 10, 11, 14, 1, 7, 6, 0, 8, 13],

        # S7
        [4, 11, 2, 14, 15, 0, 8, 13, 3, 12, 9, 7, 5, 10, 6, 1,
         13, 0, 11, 7, 4, 9, 1, 10, 14, 3, 5, 12, 2, 15, 8, 6,
         1, 4, 11, 13, 12, 3, 7, 14, 10, 15, 6, 8, 0, 5, 9, 2,
         6, 11, 13, 8, 1, 4, 10, 7, 9, 5, 0, 15, 14, 2, 3, 12],

        # S8
        [13, 2, 8, 4, 6, 15, 11, 1, 10, 9, 3, 14, 5, 0, 12, 7,
         1, 15, 13, 8, 10, 3, 7, 4, 12, 5, 6, 11, 0, 14, 9, 2,
         7, 11, 4, 1, 9, 12, 14, 2, 0, 6, 10, 13, 15, 3, 5, 8,
         2, 1, 14, 7, 4, 10, 8, 13, 15, 12, 9, 0, 3, 5, 6, 11],
    ]

    @classmethod
    def decimal_to_array(cls, num):
        array = []
        for c in bin(num)[2:]:
            if c == '1':
                array.append(True)
            else:
                array.append(False)
        # insert '0' prefix.
        array4 = [False] * (4 - len(array)) + array
        return array4

    @classmethod
    def component_to_coordinate(cls, component):
        """
        :param component: list of 6 boolean values.
        """
        x = 2 * int(component[0]) + int(component[5])
        y = 8 * int(component[1]) + 4 * int(component[2])\
            + 2 * int(component[3]) + int(component[4])
        return x, y

    @classmethod
    def substitute(cls, data48):
        """
        :param data64: list of 64 boolean values.
        """

        data32 = []
        # split to 8 components, each has 6 boolean values.
        for index in range(8):
            component = data48[index*6: (index+1)*6]
            x, y = cls.component_to_coordinate(component)

            num = cls.table_s[x][y]
            array4 = cls.decimal_to_array(num)

            data32.extend(array4)
        return data32


class MyDES:

    table_ip = [
        57, 49, 41, 33, 25, 17, 9, 1,
        59, 51, 43, 35, 27, 19, 11, 3,
        61, 53, 45, 37, 29, 21, 13, 5,
        63, 55, 47, 39, 31, 23, 15, 7,
        56, 48, 40, 32, 24, 16, 8, 0,
        58, 50, 42, 34, 26, 18, 10, 2,
        60, 52, 44, 36, 28, 20, 12, 4,
        62, 54, 46, 38, 30, 22, 14, 6,
    ]
    table_fp = [
        39, 7, 47, 15, 55, 23, 63, 31,
        38, 6, 46, 14, 54, 22, 62, 30,
        37, 5, 45, 13, 53, 21, 61, 29,
        36, 4, 44, 12, 52, 20, 60, 28,
        35, 3, 43, 11, 51, 19, 59, 27,
        34, 2, 42, 10, 50, 18, 58, 26,
        33, 1, 41, 9, 49, 17, 57, 25,
        32, 0, 40, 8, 48, 16, 56, 24,
    ]
    table_expansion = [
        31, 0, 1, 2, 3, 4,
        3, 4, 5, 6, 7, 8,
        7, 8, 9, 10, 11, 12,
        11, 12, 13, 14, 15, 16,
        15, 16, 17, 18, 19, 20,
        19, 20, 21, 22, 23, 24,
        23, 24, 25, 26, 27, 28,
        27, 28, 29, 30, 31, 0,
    ]
    table_p = [
        15, 6, 19, 20, 28, 11, 27, 16,
        0, 14, 22, 25, 4, 17, 30, 9,
        1, 7, 23, 13, 31, 26, 2, 8,
        18, 12, 29, 5, 21, 10, 3, 24,
    ]

    @classmethod
    def meta_operation(cls, data, key, reverse):
        # get data64, key64.
        data64 = cls.transform_bytes_to_array(data)
        key64 = cls.transform_bytes_to_array(key)

        # get l0, r0.
        data64 = cls.initial_permutation(data64)
        l, r = cls.get_l0_r0(data64)

        # get keys for encryption or decryption.
        k16rounds = KGen.generate_k16rounds(key64)
        if reverse:
            k16rounds = list(reversed(k16rounds))
        assert len(k16rounds) == 16

        # 16 rounds operations.
        for k in k16rounds:
            # set next l. bak_l is stored for generating r.
            bak_l = l
            l = r
            # expansion ri.
            expended_r = cls.expansion_from_32_to_48(r)
            r_k_mixin = cls.array_xor(expended_r, k)
            # sbox.
            sbox_val = SBox.substitute(r_k_mixin)
            permutated_val = cls.permutate(sbox_val)
            # generate next r.
            r = cls.array_xor(bak_l, permutated_val)

        # exchange l and r.
        l, r = r, l
        # get final permutation.
        result = cls.final_permutation(l + r)

        # finally, transform boolean array to bytes.
        return cls.transform_array_to_bytes(result)

    @classmethod
    def encrypt(cls, data, key):
        """
        :param data64: bytes with length of 64.
        :param key64: bytes with length of 64.
        """
        return cls.meta_operation(data, key, False)

    @classmethod
    def decrypt(cls, data, key):
        """
        :param data64: bytes with length of 64.
        :param key64: bytes with length of 64.
        """
        return cls.meta_operation(data, key, True)

    @classmethod
    def transform_bytes_to_array(cls, data):
        array = []
        for c in data:
            if chr(c) == '1':
                array.append(True)
            else:
                array.append(False)
        return array

    @classmethod
    def transform_array_to_bytes(cls, array):
        container = []
        for flag in array:
            if flag:
                container.append(b'1')
            else:
                container.append(b'0')
        return b''.join(container)

    @classmethod
    def initial_permutation(cls, data64):
        return extract_key(cls.table_ip, data64)

    @classmethod
    def final_permutation(cls, data64):
        return extract_key(cls.table_fp, data64)

    @classmethod
    def get_l0_r0(cls, data64):
        """
        :param data64: list of 64 boolean values which has been processed by
        initial_permutation.
        """
        return data64[:32], data64[32:]

    @classmethod
    def expansion_from_32_to_48(cls, data32):
        return extract_key(cls.table_expansion, data32)

    @classmethod
    def permutate(cls, data32):
        return extract_key(cls.table_p, data32)

    @classmethod
    def array_xor(cls, array_a, array_b):
        assert len(array_a) == len(array_b)
        new_array = []
        for i, j in zip(array_a, array_b):
            # XOR operation
            new_array.append(i ^ j)
        return new_array
