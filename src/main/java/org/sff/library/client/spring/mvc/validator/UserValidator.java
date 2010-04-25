package org.sff.library.client.spring.mvc.validator;

import org.sff.library.client.spring.mvc.command.UserCommand;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class UserValidator implements Validator {

	@SuppressWarnings("unchecked")
	@Override
	public boolean supports(Class clazz) {
		return UserCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "required", "Le champ <nom> est requis.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "required", "Le champ <prénom> est requis.");
	}

}
