import java.io.*;

public class simple_io {

	public static void main (String args[]) throws IOException {
		String line;
		BufferedReader r = new BufferedReader( new InputStreamReader(System.in));
		line = r.readLine();
		System.out.println("Did you input? " + line); // traduce al código de caracteres por defecto
		//A “System.out” se puede enviar texto, pero también se puede crear un PrintWriter
	//
	// PrintWriter o = new PrintWriter(System.out); o.flush(); // sin “autoflush”
	// PrintWriter o = new PrintWriter(System.out, true);
	// con “autoflush”
	// o.println("Did you input? " + line);
	}
}

