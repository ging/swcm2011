import java.io.*;

class Append {
	public static void main (String args[]) throws Exception {
		if (args.length != 2)
			throw(new Exception("Syntax: Append <src><dest>"));
		FileInputStream in = new FileInputStream(args[0]);
		RandomAccessFile out =
			new RandomAccessFile(args[1],"rw");
		out.seek(out.length());
		byte buffer[] = new byte[16];
		int n;
		while ((n = in.read (buffer)) > -1)
			out.write(buffer, 0, n);
		out.close(); in.close();
	}
}
