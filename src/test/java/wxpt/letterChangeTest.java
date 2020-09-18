package wxpt;

public class letterChangeTest {
	/**
	 * 字符串中字母大小写转换
	 * 
	 * @param b
	 * @return
	 */
/*	public static String change(String str) {
		char letters[] = new char[str.length()];
		for (int i = 0; i < str.length(); i++) {
			char letter = str.charAt(i);
			if (letter >= 'a' && letter <= 'z')
				letter = (char) (letter - 32);
			letters[i] = letter;
		}
		return new String(letters);
	}*/
	
	public static String change(String str) {
		char letters[] = new char[str.length()];
		for (int i = 0; i < str.length(); i++) {
			char letter = str.charAt(i);
			if (letter >= 'a' && letter <= 'z')//小写转大写
				letter = (char) (letter - 32);
			else if (letter >= 'A' && letter <= 'Z')//大写转小写
				letter = (char) (letter + 32);
			letters[i] = letter;
		}
		return new String(letters);
	}
	
	public static void main(String args[]){
		String str1="lkimgm565dfd";
		String str2=change(str1);
		System.out.println(str2);
	}
}
