vmstat 5 10 | awk 'NR > 2 {print NR, $13}' | gnuplot -e "set terminal wxt; plot '-' u 1:2 t 'cpu' w linespoints;"
