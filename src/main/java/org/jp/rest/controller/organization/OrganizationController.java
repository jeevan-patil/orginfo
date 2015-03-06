package org.jp.rest.controller.organization;

import java.util.List;

import org.jp.rest.domain.Organization;
import org.jp.rest.service.organization.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 
 * @author jeevan
 * @date 07-Mar-2015 12:21:17 am
 * @version 
 *
 */
@Controller
public class OrganizationController {

	@Autowired
	private OrganizationService orgService;

	@ResponseBody
	@RequestMapping(value = "/org/list", method = RequestMethod.GET)
	public List<Organization> list() {
		return orgService.list();
	}

	@ResponseBody
	@RequestMapping(value = "/org/create", method = RequestMethod.GET)
	public Boolean create(@RequestBody Organization org) {
		return orgService.create(org);
	}
}
