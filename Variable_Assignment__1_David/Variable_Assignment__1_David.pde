int n = 0;
int f = 700;
void setup() {
  size(1000, 1000);
}

void draw() { 
  square(n, 0, 100);
  n = n + 1;
  
  square(100, f, 100);
  f = f - 1;
  
}
