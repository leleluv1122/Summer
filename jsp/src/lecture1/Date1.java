package lecture1;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Date1 {

    public static void main(String[] args) {
        Date today = new Date();

        SimpleDateFormat f1 = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
        //원하는 형태로 출력하려면 필요하다.
        String s1 = f1.format(today); //정해진 format대로 Date객체를...
        System.out.println(s1);

        SimpleDateFormat f2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String s2 = f2.format(today);
        System.out.println(s2);

        SimpleDateFormat f3 = new SimpleDateFormat("yy-M-d H:m:s");
        String s3 = f3.format(today);
        System.out.println(s3);

        SimpleDateFormat f4 = new SimpleDateFormat("yyyy년 M월 d일 E요일 H시 m분 s초");
        String s4 = f4.format(today);
        System.out.println(s4);
    }
}
