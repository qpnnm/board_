package test;

public class ExceptionTest {
	static void test() {
		String numStr = "1.1";
		try {

			int num = Integer.parseInt(numStr);
		} catch (Exception e) {
			System.out.println(" 졸려");

		}
	}

	public static void main(String[] args) {
		test();
	}
}
