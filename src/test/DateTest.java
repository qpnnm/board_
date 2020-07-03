package test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTest {
	public static void main(String[] args) {
		Date date = new Date();
		SimpleDateFormat sdf =new SimpleDateFormat("YYYY년MM월dd일 HH시:mm분:ss");
		System.out.println(sdf.format(date));
	}
}
