import pytest
import os
from starkware.starknet.testing.starknet import Starknet
import json
import binascii

CAIRO_PRIME = 3618502788666131213697322783095070105623107215331596699973092056135872020481
CAIRO_PRIME_HALF = CAIRO_PRIME//2

def ascii_to_felt(text_in_bytes):
    hexstr = str( binascii.hexlify(text_in_bytes) ,'ascii')
    return int(hexstr, 16)


def felt_to_ascii(felt):
    hexstr = hex(felt)[2:] # remove leading 0x
    bytestr = bytes.fromhex(hexstr)
    return bytestr.decode("utf-8")


## Credit:
## https://stackoverflow.com/questions/1036409/recursively-convert-python-object-graph-to-dictionary
def todict(obj, classkey=None):
    if isinstance(obj, dict):
        data = {}
        for (k, v) in obj.items():
            data[k] = todict(v, classkey)
        return data
    elif hasattr(obj, "_asdict"):
        data = dict([(key, todict(value, classkey))
            for key, value in obj._asdict().items()
            if not callable(value) and not key.startswith('_')])
        if classkey is not None and hasattr(obj, "__class__"):
            data[classkey] = obj.__class__.__name__
        return data
    elif hasattr(obj, "_ast"):
        return todict(obj._ast())
    elif hasattr(obj, "__iter__") and not isinstance(obj, str):
        return [todict(v, classkey) for v in obj]
    else:
        return obj


def cleanup_dict_recursion(obj):
    if isinstance(obj, dict):
        data = {}
        for (k, v) in obj.items():
            data[k] = cleanup_dict_recursion(v)

        for k in data:
            if isinstance(data[k], dict):
                first = list(data[k].keys())[0]
                if 'ele' in first:
                    length = len( list(data[k].keys()) )
                    arr = [ data[k][f'ele{i}'] for i in range(length) ]
                    data[k] = arr
            elif k in ['type', 'version', 'uri', 'name', 'generator']:
                data[k] = felt_to_ascii(data[k])

        key_list = list(data.keys())
        if key_list == ['n','d']:
            return data['n']/data['d']

        return data
    else:
        if obj > CAIRO_PRIME_HALF:
            return obj-CAIRO_PRIME
        return obj


def felt_array_into_hexstring (felt_array):
    hexstring = ''
    last_length = felt_array[-1]
    for felt in felt_array[:-2]:
        hexstr = hex(felt)[2:]
        hexstr = hexstr.rjust(62, '0')
        hexstring += hexstr
    hexstr = hex(felt_array[-2])[2:]
    hexstr = hexstr.rjust(last_length, '0')
    hexstring += hexstr
    return hexstring


@pytest.mark.asyncio
async def test_box():
    starknet = await Starknet.empty()
    print()

    contract = await starknet.deploy ('axies_generated.cairo')
    print(f'> axies_generated.cairo deployed.')

    bin_contracts = []
    for i in range(8):
        c = await starknet.deploy (f'axies_bin_contract_{i}.cairo')
        bin_contracts.append(c)
        print(f'> axies_bin_contract_{i}.cairo deployed.')

    ret = await contract.retrieve_gltf().call()
    gltf = ret.result.gltf

    ## convert object to dictionary
    gltf_dict = todict(gltf)

    ## clean up gltf_dict to be gltf compliant
    gltf_clean = cleanup_dict_recursion(gltf_dict)

    # print()
    # print(
    #     json.dumps(
    #         gltf_clean,
    #         sort_keys=False, indent=4
    #     )
    # )

    ## export as json format (.gltf)
    with open('axies_generated_recovered.gltf', 'w') as fp:
        json.dump(gltf_clean, fp)
    print(f'> axies_generated_recovered.gltf exported.')

    # get the associated binary file and export as .bin
    hexstring = ""
    for i in range(8):
        ret = await bin_contracts[i].retrieve_bin().call()
        arr = ret.result.z
        hexstr = felt_array_into_hexstring(arr)
        hexstring += hexstr
        print(f'> retrieved bin parts from axies_bin_contract_{i}.cairo')

    # export the bin
    bin_name = 'axies.bin' ## TODO: should use the name decoded from gltf dictionary
    with open(bin_name, 'wb') as fout:
        fout.write( binascii.unhexlify(hexstring) )
    print(f'> {bin_name} exported.')

