package ex0601;

public class Gakusei {
	private String gakusekiNo;
	private String gakuseiName;

	//Javaの標準コーディング規約に基づいた名前でELから参照される
	//規約に反した場合は動作しない可能性がある
	//「ソース(S)」→「setterおよびgetterの自動生成(R)」
	public String getGakusekiNo() {
		return gakusekiNo;
	}
	public void setGakusekiNo(String gakusekiNo) {
		this.gakusekiNo = gakusekiNo;
	}
	public String getGakuseiName() {
		return gakuseiName;
	}
	public void setGakuseiName(String gakuseiName) {
		this.gakuseiName = gakuseiName;
	}
}
