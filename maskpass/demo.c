#include <stdio.h>
#include <stdint.h>

void demo(uint32_t *src, uint32_t *dst) {
  uint32_t Aba0, Abe0, Abi0, Abo0, Abu0;
  uint32_t Aba1, Abe1, Abi1, Abo1, Abu1;
  uint32_t Aga0, Age0, Agi0, Ago0, Agu0;
  uint32_t Aga1, Age1, Agi1, Ago1, Agu1;
  uint32_t Aka0, Ake0, Aki0, Ako0, Aku0;
  uint32_t Aka1, Ake1, Aki1, Ako1, Aku1;
  uint32_t Ama0, Ame0, Ami0, Amo0, Amu0;
  uint32_t Ama1, Ame1, Ami1, Amo1, Amu1;
  uint32_t Asa0, Ase0, Asi0, Aso0, Asu0;
  uint32_t Asa1, Ase1, Asi1, Aso1, Asu1;
  uint32_t BCa0, BCe0, BCi0, BCo0, BCu0;
  uint32_t BCa1, BCe1, BCi1, BCo1, BCu1;

  // copyFromSrc(A, src)
  Aba0 = src[0];
  Aba1 = src[1];
  Abe0 = src[2];
  Abe1 = src[3];
  Abi0 = src[4];
  Abi1 = src[5];
  Abo0 = src[6];
  Abo1 = src[7];
  Abu0 = src[8];
  Abu1 = src[9];
  Aga0 = src[10];
  Aga1 = src[11];
  Age0 = src[12];
  Age1 = src[13];
  Agi0 = src[14];
  Agi1 = src[15];
  Ago0 = src[16];
  Ago1 = src[17];
  Agu0 = src[18];
  Agu1 = src[19];
  Aka0 = src[20];
  Aka1 = src[21];
  Ake0 = src[22];
  Ake1 = src[23];
  Aki0 = src[24];
  Aki1 = src[25];
  Ako0 = src[26];
  Ako1 = src[27];
  Aku0 = src[28];
  Aku1 = src[29];
  Ama0 = src[30];
  Ama1 = src[31];
  Ame0 = src[32];
  Ame1 = src[33];
  Ami0 = src[34];
  Ami1 = src[35];
  Amo0 = src[36];
  Amo1 = src[37];
  Amu0 = src[38];
  Amu1 = src[39];
  Asa0 = src[40];
  Asa1 = src[41];
  Ase0 = src[42];
  Ase1 = src[43];
  Asi0 = src[44];
  Asi1 = src[45];
  Aso0 = src[46];
  Aso1 = src[47];
  Asu0 = src[48];
  Asu1 = src[49];

  // prepareTheta
  BCa0 = Aba0 ^ Aga0 ^ Aka0 ^ Ama0 ^ Asa0;
  BCa1 = Aba1 ^ Aga1 ^ Aka1 ^ Ama1 ^ Asa1;
  BCe0 = Abe0 ^ Age0 ^ Ake0 ^ Ame0 ^ Ase0;
  BCe1 = Abe1 ^ Age1 ^ Ake1 ^ Ame1 ^ Ase1;
  BCi0 = Abi0 ^ Agi0 ^ Aki0 ^ Ami0 ^ Asi0;
  BCi1 = Abi1 ^ Agi1 ^ Aki1 ^ Ami1 ^ Asi1;
  BCo0 = Abo0 ^ Ago0 ^ Ako0 ^ Amo0 ^ Aso0;
  BCo1 = Abo1 ^ Ago1 ^ Ako1 ^ Amo1 ^ Aso1;
  BCu0 = Abu0 ^ Agu0 ^ Aku0 ^ Amu0 ^ Asu0;
  BCu1 = Abu1 ^ Agu1 ^ Aku1 ^ Amu1 ^ Asu1;

  // Save the result
  dst[0] = BCa0;
  dst[1] = BCa1;
  dst[2] = BCe0;
  dst[3] = BCe1;
  dst[4] = BCi0;
  dst[5] = BCi1;
  dst[6] = BCo0;
  dst[7] = BCo1;
  dst[8] = BCu0;
  dst[9] = BCu1;
}

int main(int argc, char const *argv[]) {
  uint32_t src[50];
  uint32_t dst[10];
  for (int i = 0; i < 50; ++i) src[i] = i;
  for (int i = 0; i < 10; ++i) dst[i] = 0;
  demo(src, dst);
  for (int i = 0; i < 10; ++i)
    printf("%x\n", dst[i]);
  return 0;
}