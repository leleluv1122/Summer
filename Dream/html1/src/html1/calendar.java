package html1;

import java.util.Calendar;

public class calendar {

	static void printCalendar(int firstDayOfWeek, int lastDay) {
		int c = lastDay%7;
		int d = lastDay/7;
		if(c>0)
			d+=1;
		for(int i=1;i<=d;++i) {
			for(int j=1;j<=7;++j) {
				if(i==1) {
					if(j<firstDayOfWeek)
						System.out.printf(" ");
					else
						System.out.printf("%d ", j);
				}
				System.out.printf("  ");
			}
		}

	}

	public static void main(String[] args) {
		// 2015년 7월
		int year = 2015, month = 7;

		// 2015년 7월 1일의 요일 구하기
		Calendar calendar = Calendar.getInstance();
		calendar.set(year, month - 1, 1, 0, 0);
		int 요일 = calendar.get(Calendar.DAY_OF_WEEK);

		// 2015년 7월의 마지막 날짜 구하기
		calendar.add(Calendar.MONTH, 1);
		calendar.add(Calendar.DATE, -1);
		int 마지막날 = calendar.get(Calendar.DATE);

		// 달력 출력
		printCalendar(요일, 마지막날);
	}
}
