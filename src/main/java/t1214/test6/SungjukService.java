package t1214.test6;

public class SungjukService {

	public void getSungjukCalculator(String name, int kor, int eng) {
		int tot;
		double avg;
		String grade;
		
		tot = kor + eng;
		avg = (double) tot /2.0;
		if(avg >= 90) grade = "A";
		else if(avg >= 80) grade = "B";
		else if(avg >= 70) grade = "C";
		else if(avg >= 60) grade = "D";
		else grade = "F";
		
		System.out.println("성명: " + name);
		System.out.println("국어: " + kor);
		System.out.println("영어: " + eng);
		System.out.println("총점: " + tot);
		System.out.println("평균: " + avg);
		System.out.println("학점: " + grade + "학점");
	}

}
