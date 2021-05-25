#include <stdio.h>
#include "example1_purple_rpc.h"

#pragma cle def PURPLE {"level":"purple"}

double calc_ewma(double a, double b) {
  const  double alpha = 0.25;
  static double c = 0.0;
  c = alpha * (a + b) + (1 - alpha) * c;
  return c;
}

double get_b() {
#pragma cle begin PURPLE
  static double b = 1.0;
#pragma cle end PURPLE
  b += b;
  return b;
}

int ewma_main() {
#pragma cle begin TAG_RESPONSE_GET_A
  double x;
#pragma cle end TAG_RESPONSE_GET_A
  double y;
#pragma cle begin PURPLE
  double ewma;
#pragma cle end PURPLE
  for (int i=0; i < 10; i++) {
    x = _rpc_get_a();
    y = get_b();
    ewma = calc_ewma(x,y);
    printf("%f\n", ewma);
  }
  return 0;
}

int main(int argc, char **argv) {
  _master_rpc_init();
  return ewma_main();
}
