
rd /s /q build
python setup.py build_ext
python setup.py build

python -m q-install build --silent matplotlib.q
move matplotlib.qpkg matplotlib_win64.qpkg
del /s *.pdb
python -m q-install build --silent matplotlib.q
move matplotlib.qpkg matplotlib-nopdb_win64.qpkg

dir *win64.qpkg