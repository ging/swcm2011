import java.io.*;
class Grep {
	public static void main (String args[]) throws Exception {
		if ((args.length < 1) || (3 < args.length)) // dest y src opcionales
			throw (new Exception ("Syntax: Grep pattern <src> <dest>"));
		BufferedReader i = new BufferedReader (new InputStreamReader(System.in));
		if (args.length > 1) i = new BufferedReader (new FileReader(args[1]));
		PrintWriter o = new PrintWriter(System.out);
		if (args.length == 3) o = new PrintWriter (new FileWriter(args[2]));
		String line;
		while ((line = i.readLine ()) != null)
		{ if (line.matches(args[0])) o.println(line);
			o.flush(); }
			o.close();
			i.close();
	}
}
