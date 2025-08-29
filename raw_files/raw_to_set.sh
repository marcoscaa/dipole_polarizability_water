#!/bin/bash

cat << EOF >> rawtoset.py
import numpy as np

np.save ("coord",np.loadtxt("coord.raw").astype(np.float32))
np.save ("box",np.loadtxt("box.raw").astype(np.float32))
np.save ("atomic_polarizability",np.loadtxt("polarizability.raw").astype(np.float32))
np.save ("atomic_dipole",np.loadtxt("dipole.raw").astype(np.float32))
EOF

python rawtoset.py
rm rawtoset.py
mkdir set.000
mv *npy set.000
