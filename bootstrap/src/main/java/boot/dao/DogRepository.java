package boot.dao;


import org.springframework.data.repository.CrudRepository;

import boot.model.Dog;


public interface DogRepository extends CrudRepository<Dog,Integer> {

}


