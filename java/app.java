class app {

    public static void main(String args[]) {
  
      long add = 0;
      long st = System.currentTimeMillis();

      for (int index = 0; index <= 100000000; index++)
      {
          add = add + index;
      }

      long ed = System.currentTimeMillis() - st;

      System.out.printf("==========================\r\n");
      if( args.length == 0)
      {
        System.out.printf("java\r\n");
      }
      else
      {
        System.out.printf("java - %s\r\n", args[0]);
      }
      System.out.printf("%d\r\n", add);
      System.out.printf("0.%d\r\n", ed);
    }
}