package kadai0603.servlet;

public class Untin {
	private int ekiNo;
	private String ekiName;
	private double ekikanKyori;

	public Untin(int ekiNo,String ekiName,double ekikanKyori) {
		this.ekiNo = ekiNo;
		this.ekiName = ekiName;
		this.ekikanKyori = ekikanKyori;
	}

	public int getEkiNo() {
		return this.ekiNo;
	}

	public String getEkiName() {
		return this.ekiName;
	}

	public double getEkiDistance() {
		return this.ekikanKyori;
	}

}
