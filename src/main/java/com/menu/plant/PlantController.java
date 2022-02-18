package com.menu.plant;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PlantController {

	private static final Logger logger = LoggerFactory.getLogger(PlantController.class);
	
	@RequestMapping(value = "/plant/search", method = RequestMethod.GET)
	public String plantSearch(HttpServletRequest request, Model model) throws Exception {
		logger.info("plant controller search page");
		return "plant/search" ;
	}
	
	@RequestMapping(value = "/plant/result", method = RequestMethod.POST)
	public Map<String,Object> plantCrawling(HttpServletRequest request, Model model) throws Exception {
		String ult = ServletRequestUtils.getStringParameter(request, "url");
		String URL = "https://www.simpol.co.kr/front/productlist.php?code=003";
		Map<String,Object> dataMap = new HashMap<String,Object>();
		try {
			ArrayList<String> plant = new ArrayList<String>(); 
			ArrayList<String[]> plantList = new ArrayList<String[]>(); 
			Document doc = Jsoup.connect(URL).get();
			Elements elem = doc.select("div[class=\"goods_name txt_limit\"]");
			for(Element element: elem) {
				if(element.hasText()) {
					plant.add( element.text().replaceAll("/", ""));
				}
			 }
			for(int i = 0 ; i < plant.size(); i ++) {
				String[] movieListTmp = plant.get(i).split("/");
				plantList.add(movieListTmp);
			}
			dataMap.put("result","success");
			dataMap.put("list",plantList);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dataMap;
	}
	
}
