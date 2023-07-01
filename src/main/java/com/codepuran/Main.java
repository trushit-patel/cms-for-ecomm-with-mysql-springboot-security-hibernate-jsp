package com.codepuran;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableAsync;

import com.codepuran.model.Products;
import com.codepuran.service.CategoryService;
import com.codepuran.service.ProductsService;
import com.codepuran.service.TypeService;
import com.codepuran.utils.FileUploadUtil;
import com.github.javafaker.Faker;
import org.springframework.mock.web.MockMultipartFile;

@SpringBootApplication
@EnableAsync
public class Main extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(Main.class);
	}

	public static void main(String args[]) {
		SpringApplication.run(Main.class, args);
	}

	@Autowired
	private ProductsService productsService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private TypeService typeService;

//	@Bean
//	@Transactional
//	CommandLineRunner commandLineRunner(){
//		return args -> {
//
//			Faker faker = new Faker(new Locale("en-US"));
//
//			for(int i = 1; i < 593; i++)
//			{
//				Products product = new Products();
//				product.setCategory(categoryService.findById(faker.random().nextInt(4, 7)));
//				product.setName(faker.name().name());
//				product.setPrice(faker.random().nextInt(1000) + 0.99);
//				product.setDiscount(faker.random().nextInt(0, 90));
//				product.setInStock(faker.random().nextInt(100));
//				product.setShortdes(faker.lorem().sentence());
//				product.setDes(faker.lorem().fixedString(254));
//				product.setType(typeService.findById(faker.random().nextInt(2, 5)));
//				
//				product.setImages(i+".jpg");
//
//				Products savedProduct = productsService.save(product);
//
//				String filePath = "C:\\Users\\TrushitPatel\\Downloads\\product photos\\"+i+".jpg";
//
//				// Create a File object from the path
//				File file = new File(filePath);
//
//				// Create an InputStream from the file
//				InputStream inputStream = new FileInputStream(file);
//
//				// Create a MockMultipartFile with the InputStream
//				MockMultipartFile mockMultipartFile = new MockMultipartFile("file", file.getName(), "image/jpg", inputStream);
//
//				String uploadDir = "product-photos/" + savedProduct.getId()+"/";
//				FileUploadUtil.saveFile(uploadDir, savedProduct.getImages(), mockMultipartFile);
//			}
//		};
//	}
}