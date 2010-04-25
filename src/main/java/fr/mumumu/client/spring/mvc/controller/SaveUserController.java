package fr.mumumu.client.spring.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.scub.foundation.framework.base.mapping.util.MapperDozerBean;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.CancellableFormController;

import fr.mumumu.client.spring.mvc.command.UserCommand;
import fr.mumumu.core.dto.UserDto;
import fr.mumumu.core.service.interfaces.UserService;

public class SaveUserController extends CancellableFormController {

	private MapperDozerBean mapperDozerBean;

	private UserService userService;

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object cmd, BindException errors)
			throws Exception {
		// On récupère le contact saisi dans le formulaire
		final UserCommand userCommand = (UserCommand) cmd;

		try {
			// On le mappe dans un DTO
			final UserDto userDto = mapperDozerBean.map(userCommand,
					UserDto.class);
			// On appelle le service pour sauvegarder le contact
			userService.saveUser(userDto);
		} catch (Exception e) {
			// On intercepte les exceptions levées par le service, pour afficher
			// les messages d'erreurs à l'utilisateur
			errors.reject("coreException", e.getMessage());
			return showForm(request, response, errors);
		}
		// Si la sauvegarde s'est correctement déroulée, on affiche la vue de
		// succès
		return new ModelAndView(getSuccessView());
	}

	/**
	 * Set the contactService value.
	 * 
	 * @param contactService
	 *            the contactService to set
	 */
	public void setContactService(UserService userService) {
		this.userService = userService;
	}

	/**
	 * @param mapperDozerBean
	 *            the mapperDozerBean to set
	 */
	public void setMapperDozerBean(MapperDozerBean mapperDozerBean) {
		this.mapperDozerBean = mapperDozerBean;
	}

}
