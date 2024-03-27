import java.io.*;
import java.net.*;

import com.ubireport.common.util.HttpConnectionImpl;

public class CustomConnection implements HttpConnectionImpl {

	public CustomConnection() {
	}

	public static void main(String[] args) {

		if( args.length < 1 ) {

			System.out.println("Usage: java CustomConnection <url>");
			return;
		}
			 
		try {

			boolean isSsl = false;
			String sUrl = args[0];

			CustomConnection cc = new CustomConnection();

			URLConnection uc = cc.getConnection(sUrl);
			uc.setDoOutput(true);
			uc.setDoInput(true);
			uc.setUseCaches(false);


			StringBuffer sb = new StringBuffer();

			System.out.println("Reading Contents...");
			BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream()));

			int buffSize = 1024 * 8;
			char[] buff;
			int insize = 0;
			while ((insize = in.read(buff = new char[buffSize], 0, buffSize)) != -1) {

				sb.append((new String(buff, 0, insize)));
			}
			String receivestr = sb.toString().trim();

			System.out.println("URL Contects");
			System.out.println("------------------------------------------");
			System.out.println(receivestr);
			System.out.println("------------------------------------------");
		}
		catch(Exception e){

			e.printStackTrace();
		}                    
	}

	public URLConnection getConnection(String url) {

		boolean isImage = false;
		if(url.indexOf("UbiData") >= 0 ) {	// UbiData�� ��� ���� ó��.
		}
		else {	
			isImage = true;
			// �������� �� ���Ǵ� �̹��� URL.
			//
			//System.out.println("url1 : " + url);
			url = url.replace("https://www.ubireport.com", "http://local-hanexplus.com/ubi-svc");
			//System.out.println("url2 : " + url);
		}

		URLConnection uc = null;
		try {
			uc = new URL(url).openConnection();
			if (isImage)
			{
			}
		}
		catch (Exception e) {

			e.printStackTrace();
		}
		return uc;

	}

}
