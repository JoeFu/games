void shuffCards (int[] a) {
  for (int k=0; k < a.length; k++) {
    // Goal: swap the value at pos k with a rnd value at pos x.
    // save current value from pos/index k into temp
    int temp = a[k];
    // make rnd index x
    int x = (int)random(0, a.length);   
    // overwrite value at current pos k with value at rnd index x
    a[k]=a[x];
    // finish swapping by giving the old value at pos k to the
    // pos x.
    a[x]=temp;
  }
}
