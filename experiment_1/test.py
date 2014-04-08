
import unittest
from mydes import (KGen, MyDES)

class BaseTest(unittest.TestCase):

    def test_logical_left_shift(self):
        self.assertListEqual(
            KGen.logical_left_shift([1, 2, 3, 4], 2),
            [3, 4, 1, 2],
        )

    def test_c0_d0(self):
        c0 = [
            57, 49, 41, 33, 25, 17, 9,
            1, 58, 50, 42, 34, 26, 18,
            10, 2, 59, 51, 43, 35, 27,
            19, 11, 3, 60, 52, 44, 36,
        ]
        d0 = [
            63, 55, 47, 39, 31, 23, 15,
            7, 62, 54, 46, 38, 30, 22,
            14, 6, 61, 53, 45, 37, 29,
            21, 13, 5, 28, 20, 12, 4,
        ]
        rc0, rd0 = KGen.get_c0_d0(list(range(1, 65)))
        self.assertListEqual(rc0, c0)
        self.assertListEqual(rd0, d0)

    def test_usage(self):
        plain_text_1 = b'0' * 64
        plain_text_2 = b'1' + b'0' * 63

        key = (b'00000010'
               b'10010110'
               b'01001000'
               b'11000100'
               b'00111000'
               b'00110000'
               b'00111000'
               b'01100100')

        # plain_text_1
        crypto_1 = MyDES.encrypt(plain_text_1, key)
        self.assertEqual(MyDES.decrypt(crypto_1, key), plain_text_1)

        # plain_text_2
        crypto_2 = MyDES.encrypt(plain_text_2, key)
        self.assertEqual(MyDES.decrypt(crypto_2, key), plain_text_2)

        self.assertNotEqual(crypto_1, crypto_2)


if __name__ == '__main__':
    unittest.main()
