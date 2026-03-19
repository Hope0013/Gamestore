package com.hope0013.gamestore.Repository;

import org.springframework.data.repository.CrudRepository;

import com.hope0013.gamestore.Model.Game;

public interface GameRepository extends CrudRepository<Game,Integer>{
    
}
