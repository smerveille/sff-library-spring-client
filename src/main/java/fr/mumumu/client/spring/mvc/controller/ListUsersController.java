package fr.mumumu.client.spring.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import fr.mumumu.core.dto.UserDto;
import fr.mumumu.core.service.interfaces.UserService;

public class ListUsersController extends AbstractController {

	private UserService userService;

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		final List<UserDto> users = userService.getAllUsers();

		return new ModelAndView("/pages/list_users", "users", users);
	}

	/**
	 * @param contactService
	 *            the contactService to set
	 */
	public void setContactService(UserService userService) {
		this.userService = userService;
	}

}
