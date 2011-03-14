// Las clases FileInputStream y FileOutputStream, derivadas de InputStream
// y OutputStream, permiten acceder a secuencialmente a cualquier fichero

import java.io.*;

class Copy {
	public static void main (String args[]) throws Exception {
		if (args.length != 2)
			throw (new Exception ("Syntax: Copy <src> <dest>"));

		FileInputStream in = new FileInputStream(args[0]);
		FileOutputStream out = new FileOutputStream(args[1]);

		byte buffer[] = new byte[16];
		int n;
		while ((n = in.read (buffer)) > -1)
			out.write(buffer, 0, n);
		out.close(); in.close();
	}
}
