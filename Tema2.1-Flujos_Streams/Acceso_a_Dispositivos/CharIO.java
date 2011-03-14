import java.io.*;

class CharIO {
	public static void main(String args[]) throws IOException {
		int charRead;
		while ((charRead = System.in.read ()) != 46) // es el ‘.’
			System.out.write(charRead);
		System.out.println("FIN");
	}
}

