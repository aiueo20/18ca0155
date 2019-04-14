package kadai0301;

public class AccessCounter {
	private static int count = 0;
	public static void main(String[] args) {
	}

	public static int increment() {
		count++;
		return count;
	}
	public static int getCount() {
		return count;
	}
}
