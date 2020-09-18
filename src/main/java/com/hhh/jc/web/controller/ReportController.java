package com.hhh.jc.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.apache.cxf.endpoint.Client;
import org.apache.cxf.jaxws.endpoint.dynamic.JaxWsDynamicClientFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hhh.jc.web.model.CustomerBean;

@Controller
@RequestMapping(value = "/report")
public class ReportController {

	private static Client client;
	private static List<CustomerBean> list = new ArrayList();

	/**
	 * 报告查询(调用ws接口)
	 * 
	 * @param org
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView report(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("report/wuxi_report");
		String customer_id = request.getParameter("customer_id");
		String wt_num = request.getParameter("wt_num");
		String usernum = request.getParameter("usernum");
		mv.addObject("customer_id", customer_id);
		mv.addObject("wt_num", wt_num);
		mv.addObject("usernum", usernum);

		if (customer_id != null && wt_num != null && !wt_num.equals("") && !customer_id.equals("")) {
			if (client == null) {
				JaxWsDynamicClientFactory dcf = JaxWsDynamicClientFactory.newInstance();
				client = dcf.createClient("http://www.wxjszjz.com:14909/wxjcdataservice/wxJcDataService?wsdl");
//				client = dcf.createClient("http://localhost:8080/wxJcDataService?wsdl");
			}

			String methodName = "selectJcCoreSampleByPrtnum";
			String arrayjsonString = "";

			String stringjson = "{'customer_id':'" + customer_id + "','wt_num':'" + wt_num + "'}";
			try {
				Object[] o = client.invoke(methodName, new Object[] { stringjson });
				if (o != null) {
					arrayjsonString = o[0].toString();
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(e.getMessage());
			}
			JSONArray jsonarray = JSONArray.fromObject(arrayjsonString);
			mv.addObject("jsonArray", jsonarray);
		}
		return mv;
	}

	/**
	 * 拿到所有customerId
	 * 
	 */
	@RequestMapping(value = "/getAllCustomerId", method = RequestMethod.GET)
	@ResponseBody
	public List<CustomerBean> getAllCustomerId() {
		List<CustomerBean> newlist = new ArrayList();
		if (list.isEmpty()) {
			if (client == null) {
				JaxWsDynamicClientFactory dcf = JaxWsDynamicClientFactory.newInstance();
				client = dcf.createClient("http://www.wxjszjz.com:14909/wxjcdataservice/wxJcDataService?wsdl");
			}

			String methodName = "getAllCustomer";
			String arrayjsonString = "";

			try {
				Object[] o = client.invoke(methodName);
				if (o != null) {
					arrayjsonString = o[0].toString();
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(e.getMessage());
			}
			List<Map> customerList = JSONArray.fromObject(arrayjsonString);
			for (Map map : customerList) {
				CustomerBean c = new CustomerBean();
				c.setCustomerId((String) map.get("customer_id"));
				c.setTitle((String) map.get("org_name"));
				newlist.add(c);
			}
			list = newlist;
		} else {
			newlist = list;
		}

		return newlist;
	}
}
