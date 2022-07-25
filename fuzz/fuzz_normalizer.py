#!/usr/local/bin/python3
import atheris
import sys

with atheris.instrument_imports():
    from bistring import bistr


@atheris.instrument_func
def TestOneInput(data):
    fdp = atheris.FuzzedDataProvider(data)
    s = bistr(fdp.ConsumeString(len(data)))
    s.normalize('NFKD')


# atheris.instrument_all()
atheris.Setup(sys.argv, TestOneInput)
atheris.Fuzz()