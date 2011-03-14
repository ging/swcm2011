import java.io.*;

class lineIO {
	public static void main(String args[]) throws IOException {
		String line;
		DataInputStream lineIn =
			new DataInputStream(System.in);
		while (!(line = lineIn.readLine ()).equals("."))
			System.out.println(line);
		System.out.println("END");
	}
}

