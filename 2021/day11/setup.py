from setuptools import setup
from Cython.Build import cythonize
from distutils.extension import Extension

setup(
    ext_modules = [
        Extension(
            name="day11",
            sources=["day11.pyx"],
            extra_compile_args=['O3'],
            language="c++",
        )]
)