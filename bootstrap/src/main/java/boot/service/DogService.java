package boot.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;


import org.springframework.stereotype.Service;

import boot.dao.DogRepository;
import boot.model.Dog;


@Service @Transactional
public class DogService {
	private final DogRepository dogRepository;
	
	public DogService(DogRepository dogRepository){
		super();
		this.dogRepository= dogRepository;
	}
	
	public List <Dog> findAll(){
		List<Dog> dogs = new ArrayList<Dog>();
		for(Dog dog : dogRepository.findAll() ){
			dogs.add(dog);
		}
		return dogs;
	}
	
	
	public void save(Dog dog){
		dogRepository.save(dog);
	}
	
	
	public void delete(int id){
		dogRepository.delete(id);
	}
	public  Dog finOne(int id){
	return dogRepository.findOne(id);
	}
}
