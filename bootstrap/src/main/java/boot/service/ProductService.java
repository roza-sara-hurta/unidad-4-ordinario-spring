package boot.service;



import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;


import org.springframework.stereotype.Service;

import boot.dao.ProductRepository;

import boot.model.Product;

@Service @Transactional
public class ProductService {
	private final ProductRepository productRepository;
	
	public ProductService( ProductRepository  productRepository){
		super();
		this. productRepository=  productRepository;
	}
	
	public List < Product> findAll(){
		List< Product>  products = new ArrayList< Product>();
		for( Product  Product :  productRepository.findAll() ){
			 products.add( Product);
		}
		return  products;
	}
	
	
	public void save( Product  product){
		 productRepository.save( product);
	}
	
	
	public void delete(int id){
		 productRepository.delete(id);
	}
	public   Product finOne(int id){
	return  productRepository.findOne(id);
	}
}


