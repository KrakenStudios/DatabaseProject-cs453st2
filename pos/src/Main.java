public class Main {
	@SuppressWarnings("unused")
	public static void main(String[] args) {
		SSHTunnel connect = new SSHTunnel("polaris.cs.wcu.edu", 22, "cward", 
                          "", "localhost", 3306, "dbuname", "dbpass");
		connect.getConnection("dbname");
		FYHPosLogin login = new FYHPosLogin();
	}
}
