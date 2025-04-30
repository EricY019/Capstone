#include <stdlib.h>
#include <stdio.h>

int main() {
  unsigned int N, i, j, k, l, m, n, v, o, x, y, z, w, sum, centre_square,
    centre, count_i, count_j, count_k, count_l, count_m, count_n, count_x,
    count_y, count_z, count_w, max_root, tmp, remainder;
  int l_square, m_square, n_square, x_square, y_square, z_square, w_square;
  unsigned int* roots;
  short* memory;

  N = 1000;

  // Allocate lots of memory to allow for constant time access.
  memory = malloc(sizeof(short) * N * N * N);
  for (i = 0; i < N * N * N; i += 1) {
    memory[i] = 0;
  }

  // Pre-compute the square roots up to n.
  max_root = N * N;
  roots = malloc(sizeof(unsigned int) * max_root + 1);
  for (i = 0; i < max_root + 1; i += 1) {
    roots[i] = 0;
  }
  for (i = 0; i <= N; i += 1) {
    roots[i * i] = i;
  }
  int iterations = 0;

  printf("Searching up to %d...\n", N);

  // For each 3-combination up to N.
  for (i = 3; i <= N; i += 1) {
    for (j = 2; j < i; j += 1) {
      for (k = 1; k < j; k += 1) {
        sum = i * i + j * j + k * k;

        // If sum isn't divisible by three it can't be a magic square.
        if (sum % 3) {
          continue;
        }

        // The centre square must always be a third of the sum.
        centre_square = sum / 3;

        // Look up the square root of the number in the centre.
        centre = roots[centre_square];

        // There must be an integer root for the centre.
        if (!centre) {
          continue;
        }

        // Remember that {i, j, k} produce this sum.
        count_i = memory[centre_square + i] += 1;
        count_j = memory[centre_square + j] += 1;
        count_k = memory[centre_square + k] += 1;

        // The centre must produce this sum in at least four ways.
        if (memory[centre_square + centre] < 4) {
          continue;
        }

        // At least one of the new numbers must produce this sum in at least two ways.
        if (count_i < 2 && count_j < 2 && count_k < 2) {
          continue;
        }

        // Calculate the values that must appear opposite {i, j, k}.
        l_square = sum - centre_square - i * i;
        m_square = sum - centre_square - j * j;
        n_square = sum - centre_square - k * k;

        // Defensively look up their square roots.
        l = l_square > 0 && l_square <= max_root ? roots[l_square] : 0;
        m = m_square > 0 && m_square <= max_root ? roots[m_square] : 0;
        n = n_square > 0 && n_square <= max_root ? roots[n_square] : 0;

        // Opposites must not be the same number. Nullify them if they are.
        l = i == l ? 0 : l;
        m = j == m ? 0 : m;
        n = k == n ? 0 : n;

        // Look up the number of ways the opposite numbers produce this sum.
        count_l = memory[centre_square + l];
        count_m = memory[centre_square + m];
        count_n = memory[centre_square + n];

        // Opposites must produce this sum in at least two ways. Nullify them if they don't.
        l = count_l < 2 ? 0 : l;
        m = count_m < 2 ? 0 : m;
        n = count_n < 2 ? 0 : n;

        // There must be at least one valid opposite number.
        if (!(l || m || n)) {
          continue;
        }

        // Get the valid number and its opposite.
        // If there's more than one, we pick the last and discover the other(s) in a moment.
        if (l) { v = i; o = l; }
        if (m) { v = j; o = m; }
        if (n) { v = k; o = n; }

        // Ensure v is the smaller of the two numbers.
        if (v > o) { tmp = v; v = o; o = tmp; }

        // Find other ways to produce this sum (3rd and 4th number).
        for (x = 1; x <= N; x += 1) {

          // Skip past the number we've already found and its opposite.
          if (x == v || x == o) {
            continue;
          }

          // Look up the number of ways x produces this sum.
          count_x = memory[centre_square + x];

          // TODO, check for other possible layouts.

          // It must produce this sum in at least two ways to be considered.
          if (count_x < 2) {
            continue;
          }

          // Calculate the value's opposite.
          x_square = x * x;
          y_square = sum - centre_square - x_square;

          // If the value has passed (or is equal to) its opposite, we're done.
          // This ensures the opposite value is always bigger, too.
          if (x_square >= y_square) {
            break;
          }

          // Look up how many ways the opposite produces this sum.
          y = y_square > 0 && y_square <= max_root ? roots[y_square] : 0;
          count_y = memory[centre_square + y];

          // Its opposite must produce this sum in at least two ways.
          if (count_y < 2) {
            continue;
          }

          // Find other ways to produce this sum (5th and 6th number).
          for (z = x + 1; z <= N; z += 1) {

            // Skip past the numbers we've already found and their opposites.
            if (z == v || z == o || z == y) {
              continue;
            }

            // Look up the number of ways z produces this sum.
            count_z = memory[centre_square + z];

            // It must produce this sum in at least two ways to be considered.
            if (count_z < 2) {
              continue;
            }

            // Calculate the value's opposite.
            z_square = z * z;
            w_square = sum - centre_square - z_square;

            // If the value has passed (or is equal to) its opposite, we're done.
            // This ensures the opposite value is always bigger, too.
            if (z_square >= w_square) {
              break;
            }

            // Look up how many ways the opposite produces this sum.
            w = w_square > 0 && w_square <= max_root ? roots[w_square] : 0;
            count_w = memory[centre_square + w];

            // Its opposite must produce this sum in at least two ways.
            if (count_w < 2) {
              continue;
            }

            // When we have six numbers, one of two things can happen:
            //
            // 1) There are three numbers on the same row.
            // 2) The numbers are arranged like this:
            //    x | x | _
            //    x | x | x
            //    _ | x | x
            //
            // This section checks case 1:
            if (v + x + w == sum
             || v + y + z == sum
             || v + y + w == sum
             || o + x + z == sum
             || o + x + w == sum
             || o + y + z == sum) {
              printf("sum=%d, centre=%d\n", sum, centre_square);
              printf("%d, %d\n", v, o);
              printf("%d, %d\n", x, y);
              printf("%d, %d\n", z, w);
              printf("---------------------\n");
            }

            // We can test case 2 by subtracting all the numbers we know from
            // three times the sum and checking we're left with 2/3 of the sum.
            remainder = 3 * sum - v + o + x + y + z + w;
            if (remainder * 3 / 2 == sum) {
              printf("sum=%d, centre=%d\n", sum, centre_square);
              printf("%d, %d\n", v, o);
              printf("%d, %d\n", x, y);
              printf("%d, %d\n", z, w);
              printf("---------------------\n");
            }

            iterations += 1;
          }
        }
      }
    }

    if (i % 1000 == 0) {
      printf("%d\n", i);
    }
  }

  printf("Finished. Reached the final stage %d times.\n", iterations);
  return 0;
}
