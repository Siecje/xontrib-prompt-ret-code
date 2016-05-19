"""
xontrib-prompt-ret-code
-----
Adds return code info to xonsh prompt.
"""

try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup


setup(
    name='xontrib-prompt-ret-code',
    version='1.0.0',
    description='Adds return code info to xonsh prompt.',
    long_description=__doc__,
    license='MIT',
    url='http://github.com/siecje/xontrib-prompt-ret-code/',
    author='Cody Scott',
    packages=['xontrib'],
    package_dir={'xontrib': 'xontrib'},
    package_data={'xontrib': ['*.xsh']},
    zip_safe=True,
    include_package_data=False,
    platforms='any',
    classifiers=[
        'Environment :: Console',
        'Intended Audience :: End Users/Desktop',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
        'Programming Language :: Python',
        'Topic :: Desktop Environment',
        'Topic :: System :: Shells',
        'Topic :: System :: System Shells',
    ]
)

