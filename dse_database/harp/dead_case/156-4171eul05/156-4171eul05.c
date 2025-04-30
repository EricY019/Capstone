/* wtok 2015-09-26 */
/* Find the smallest positive integer that is evenly divisible by all the
 * integers from 1 to 20. */
#include <stdio.h>

int main(void)
{
        const int d_max = 20;

        for (int n = 1;; ++n) {
                for (int d = 1; d <= d_max; ++d) {
                        if (n % d != 0) {
                                break;
                        } else if (d == d_max) {
                                printf("%d\n", n);
                                return 0;
                        }
                }
        }

        return 1;
}
