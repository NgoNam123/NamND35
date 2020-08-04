import java.util.Scanner;

public class Student {

//    static int j = 20;
//
//    public static void main(String argv[]){
//        int i = 10;
//        Student p = new Student();
//        p.amethod(i);
//        System.out.println(i);
//        System.out.println(j);
//    }
//
//    public void amethod(int x){
//        x = x * 2;
//        j = j * 2;
//    }
public static void main(String[] args) {
    int count = 0, sum = 0;
    do{
        if(count % 3 == 0) continue;
        sum += count;
    }
    while(count++< 11);
    System.out.println(sum);
    System.out.println(1+2+4+5+7+8+10+11);
}

}
