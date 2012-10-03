public class Main {
	@SuppressWarnings("unused")
	public static void main(String[] args) {
		SSHTunnel connect = new SSHTunnel("polaris.cs.wcu.edu", 22, "cward", 
                          "", "localhost", 3306, "cs453st2", "batmanondrugs");
		connect.getConnection("cs453db2");
		FYHPosLogin login = new FYHPosLogin();
	}
}
