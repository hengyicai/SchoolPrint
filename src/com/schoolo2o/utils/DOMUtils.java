package com.schoolo2o.utils;

import java.io.File;
import java.io.IOException;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.poi.POIXMLDocument;
import org.apache.poi.xwpf.usermodel.XWPFDocument;

/**
 * 文档工具类
 * 
 * @author hengyi
 * 
 */
public class DOMUtils {

	/**
	 * PDF页数
	 * 
	 * @param filepath
	 * @return
	 */
	public static int getPageCountPDF(String filepath) {
		try {
			PDDocument doc = PDDocument.load(new File(filepath));
			return doc.getNumberOfPages();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return 0;
	}

	/**
	 * word文档页数
	 * 
	 * @param filepath
	 * @return
	 */
	public static int getPageCountWord(String filepath) {
		try {
			XWPFDocument doc = new XWPFDocument(
					POIXMLDocument.openPackage(filepath));
			return doc.getProperties().getExtendedProperties()
					.getUnderlyingProperties().getPages();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return 0;
	}

}