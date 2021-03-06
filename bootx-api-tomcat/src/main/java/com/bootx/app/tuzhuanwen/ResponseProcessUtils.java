/**
* Copyright 2018 Huawei Technologies Co.,Ltd.
*
* Licensed under the Apache License, Version 2.0 (the "License"); you may not use
* this file except in compliance with the License.  You may obtain a copy of the
* License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software distributed
* under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
* CONDITIONS OF ANY KIND, either express or implied.  See the License for the
* specific language governing permissions and limitations under the License.
**/
package com.bootx.app.tuzhuanwen;

import com.huawei.ais.sdk.util.HttpClientUtils;
import org.apache.http.HttpResponse;

import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/**
 * Tool used to verify the information returned from service access.
 */
public class ResponseProcessUtils {

	/**
	 *  Write the byte array to the file to support generation of binary files (for example, images).
	 * @param fileName File name
	 * @param data Data
	 * @throws IOException
	 */
	public static void WriteBytesToFile(String fileName, byte[] data) throws IOException{

		FileChannel fc = null;
		try {
			ByteBuffer bb = ByteBuffer.wrap(data);
			fc = new FileOutputStream(fileName).getChannel();
			fc.write(bb);

		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			fc.close();
		}
	}
}


