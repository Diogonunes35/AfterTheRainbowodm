class Rainbow {
  color c;

  Rainbow(color c) {
    this.c = c;
  }

  void lines() {
    stroke(c);
  }

  color getColor() {
    return c;
  }
}
