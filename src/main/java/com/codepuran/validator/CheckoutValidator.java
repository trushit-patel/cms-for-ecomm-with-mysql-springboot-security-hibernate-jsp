package com.codepuran.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.codepuran.model.Checkout;

@Component
public class CheckoutValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Checkout.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Checkout checkout = (Checkout) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "zipCode", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phn", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "orderNote", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "townCity", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "state", "NotEmpty");
		
		

		if(checkout.getFirstName().length() < 2 || checkout.getFirstName().length() > 40)
		{
			errors.rejectValue( "firstName", "Size.checkoutForm.firstName");
		}

		if(checkout.getLastName().length() < 2 || checkout.getLastName().length() > 40)
		{
			errors.rejectValue( "lastName", "Size.checkoutForm.lastName");
		}


		if (!isValidEmail(checkout.getEmail()))
		{
			errors.rejectValue("email", "Email.checkoutForm.invalidFormat");
		}

		if(checkout.getAddress().length() < 10 || checkout.getAddress().length() > 150)
		{
			errors.rejectValue("address", "Size.checkoutForm.address");
		}


		if (!isValidZipCode(checkout.getZipCode())) {
			errors.rejectValue("zipCode", "ZipCode.checkoutForm.invalidFormat");
		}

		
		if (checkout.getPhn().length() != 10) {
			errors.rejectValue("phn", "Size.userForm.number");
		}

		
		if(checkout.getOrderNote().length() < 10 || checkout.getOrderNote().length() > 150)
		{
			errors.rejectValue("orderNote", "Size.checkoutForm.orderNote");
		}
		
		if(checkout.getTownCity().length() < 2 || checkout.getTownCity().length() > 40)
		{
			errors.rejectValue( "townCity", "Size.checkoutForm.townCity");
		}
		if(checkout.getCountry().length() < 2 || checkout.getCountry().length() > 40)
		{
			errors.rejectValue( "company", "Size.checkoutForm.company");
		}
		if(checkout.getState().length() < 2 || checkout.getState().length() > 40)
		{
			errors.rejectValue( "state", "Size.checkoutForm.state");
		}
	}

	/* Method to validate Email-Address */	
	private boolean isValidEmail(String email) 
	{
		// Define a regular expression pattern for email addresses
		String emailPattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}";

		// Check if the email address matches the pattern
		return email.matches(emailPattern);
	}

	/* Method to Validate Zip-Code */
	private boolean isValidZipCode(String zipCode) 
	{
		// Define a regular expression pattern for zip codes
		String zipCodePattern = "^[0-9]{5}(?:-[0-9]{4})?$";

		// Check if the zip code matches the pattern
		return zipCode.matches(zipCodePattern);
	}
}
