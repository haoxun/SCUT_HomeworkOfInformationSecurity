from mydes import MyDES


# some black magic.
group_adjacent = lambda data: zip(*([iter(data)] * 8))


encrypt_print_template = (
    "Plain Text:   {}\n"
    "Key:          {}\n"
    "Crypto:       {}\n"
    "\n"
)

decrypt_print_template = (
    "Crypto:       {}\n"
    "Key:          {}\n"
    "Decoded Text: {}\n"
    "\n"
)

diff_print_template_1 = (
    "Source 1:     {}\n"
    "Source 2:     {}"
)

diff_print_template_2 = (
    "Diff:         {}\n"
    "Count:        {}\n"
)


def get_formated_bytes(data64):
    items = []
    for byte in group_adjacent(data64):
        text = ''.join(map(chr, byte))
        items.append(text)

    return ' '.join(items)


def meta_print(template, *items):
    text = template.format(
        *list(map(get_formated_bytes, items))
    )
    print(text)


def print_encrypt(plain_text, key, crypto):
    meta_print(encrypt_print_template, plain_text, key, crypto)


def print_decrypt(plain_text, key, crypto):
    meta_print(decrypt_print_template, plain_text, key, crypto)


def count_diff(text_1, text_2):
    text_1 = get_formated_bytes(text_1)
    text_2 = get_formated_bytes(text_2)

    count = 0
    position_mark = []
    for i, j in zip(text_1, text_2):
        if i != j:
            count += 1
            position_mark.append('^')
        else:
            position_mark.append(' ')

    return count, ''.join(position_mark)


def print_diff(source_1, source_2):
    count, diff_text = count_diff(source_1, source_2)
    meta_print(diff_print_template_1, source_1, source_2)
    print(diff_print_template_2.format(diff_text, count))


def question_a():
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

    crypto_1 = MyDES.encrypt(plain_text_1, key)
    crypto_2 = MyDES.encrypt(plain_text_2, key)

    print_encrypt(plain_text_1, key, crypto_1)
    print_encrypt(plain_text_2, key, crypto_2)
    print_diff(crypto_1, crypto_2)


def question_b():
    key_1 = (b'11100010'
             b'11110110'
             b'11011110'
             b'00110000'
             b'00111010'
             b'00001000'
             b'01100010'
             b'11011100')

    key_2 = (b'01100010'
             b'11110110'
             b'11011110'
             b'00110000'
             b'00111010'
             b'00001000'
             b'01100010'
             b'11011100')

    plain_text = (b'01101000'
                  b'10000101'
                  b'00101111'
                  b'01111010'
                  b'00010011'
                  b'01110110'
                  b'11101011'
                  b'10100100')

    crypto_1 = MyDES.encrypt(plain_text, key_1)
    crypto_2 = MyDES.encrypt(plain_text, key_2)

    print_encrypt(plain_text, key_1, crypto_1)
    print_encrypt(plain_text, key_2, crypto_2)
    print_diff(crypto_1, crypto_2)


if __name__ == '__main__':

    print('Question (a)')
    question_a()
    print('Question (b)')
    question_b()
