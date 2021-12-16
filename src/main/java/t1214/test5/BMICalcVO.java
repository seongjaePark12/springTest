package t1214.test5;

public class BMICalcVO {
	private double lowWeight;
	private double normal;
	private double overWeight;
	private double obesity;
	
	public double getLowWeight() {
		return lowWeight;
	}
	public void setLowWeight(double lowWeight) {
		this.lowWeight = lowWeight;
	}
	public double getNormal() {
		return normal;
	}
	public void setNormal(double normal) {
		this.normal = normal;
	}
	public double getOverWeight() {
		return overWeight;
	}
	public void setOverWeight(double overWeight) {
		this.overWeight = overWeight;
	}
	public double getObesity() {
		return obesity;
	}
	public void setObesity(double obesity) {
		this.obesity = obesity;
	}
	
	public void bmiCalculator(String name, double height, double weight) {
		double h = height / 100;
		double result = weight / (h*h);
		
		System.out.println(name + "의 BMI 지수" + (int) result);
		
		if(result >obesity) {
			System.out.println("당신은 비만입니다");
		}
		else if(result > overWeight) {
			System.out.println("당신은 과체중입니다");
		}
		else if(result > normal) {
			System.out.println("당신은 정상입니다");
		}
		else{
			System.out.println("당신은 저체중입니다");
		}
	}
	
}
