package com.codepuran.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.codepuran.model.Products;
import com.codepuran.model.User;

@Component
public class ProductValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Products.class.equals(clazz);
	}

	@Override
	public void validate(Object o, Errors errors) {
		// TODO Auto-generated method stub

		Products p = (Products) o;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "des", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shortdes", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "inStock", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "category", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "type", "NotEmpty");

		if (p.getDes().length() < 10 ) {
			errors.rejectValue("des", "Size.productForm.des");
		}
		
		if (p.getPrice() == 0 ) {
			errors.rejectValue("price", "Size.productForm.price");
		}
		if (p.getDiscount() > 100 ) {
			errors.rejectValue("price", "Size.productForm.discount");
		}

		if (p.getShortdes().length() > 10 ) {
			errors.rejectValue("shortdes", "Size.productForm.shortdes");
		}
		
		if (p.getInStock() == 0 ) {
			errors.rejectValue("inStock", "Size.productForm.inStock");
		}
		
		/*
		 * if (p.getCategory() == null ) { errors.rejectValue("category",
		 * "Null.productForm.category"); }
		 * 
		 * if (p.getType() == null ) { errors.rejectValue("type",
		 * "Null.productForm.type"); }
		 */
	}

}
