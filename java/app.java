class app {

  public static void main(String args[]) {

    long add = 0L;
    long st = System.currentTimeMillis();

    for (int index = 0; index <= 100000000; index++) {
      add = add + index;
    }

    long ed = System.currentTimeMillis() - st;

    System.out.println("==========================");
    System.out.println("java - openjdk");
    System.out.println(add);
    System.out.println((float) ed / 1000.0F);
  }
}