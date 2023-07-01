package com.codepuran.config;

import java.io.IOException;
import java.security.Principal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.codepuran.utils.BaseMethods;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Autowired
	private BaseMethods baseMethods;

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests()
		.antMatchers("/static/**","/resources/**","/assets/**", "/registration","/shop","/",
					 "/product-photos/**","/privacy-policy","/refund-policy","/shipping-policy",
					 "/terms-of-service", "/blogs","/blog","/blog-photos/**","/category-photos/**",
					 "/testimonial-photos/**","/banner/**").permitAll()
		/* .antMatchers("/admin", "/admin/**").hasRole("ADMIN") */
		.antMatchers("/admin", "/admin/**").hasAuthority("ADMIN")
		.anyRequest().authenticated()
		.and()
		.formLogin()
		.loginPage("/login")
		.permitAll()
				/*
				 * .successHandler(new SavedRequestAwareAuthenticationSuccessHandler() {
				 * 
				 * @Override public void onAuthenticationSuccess(HttpServletRequest request,
				 * HttpServletResponse response, Authentication authentication) throws
				 * IOException, ServletException { // run custom logics upon successful login
				 * UserDetails userDetails = (UserDetails) authentication.getPrincipal(); String
				 * username = userDetails.getUsername(); System.out.println("The user " +
				 * username + " has logged in.");
				 * 
				 * baseMethods.setUserCartInSession(username, request);
				 * 
				 * super.onAuthenticationSuccess(request, response, authentication); } })
				 */
		.and()
		.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.logoutSuccessUrl("/")
		.permitAll();
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
	}
}
