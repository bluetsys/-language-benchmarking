/* Online Scala Compiler */
object HelloWorld {
   def main(args: Array[String]) {
       
       var add = 0L;
       var index = 0L;
       
       val st = System.currentTimeMillis
       for( index <- 1 to 100000000){
        add = add + index;
       }
       val et = System.currentTimeMillis - st;
       
       println("==========================");
       println("scala");
       println(add);
       println(et / 1000.0f);
   }
}