package t1214.test4;

public class CalculatorVO {
	private int su1;
	private int su2;
	private CalculatorService calcService = new CalculatorService();
	
	public int getSu1() {
		return su1;
	}
	public void setSu1(int su1) {
		this.su1 = su1;
	}
	public int getSu2() {
		return su2;
	}
	public void setSu2(int su2) {
		this.su2 = su2;
	}

	public void add() {
		calcService.add(su1, su2);
	}
	public void sub() {
		calcService.sub(su1, su2);
	}
	public void mul() {
		calcService.mul(su1, su2);
	}
	public void div() {
		calcService.div(su1, su2);
	}

	
}
