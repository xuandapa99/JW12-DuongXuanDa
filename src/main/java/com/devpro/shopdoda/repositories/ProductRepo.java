package com.devpro.shopdoda.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.shopdoda.entities.Product;

@Repository
public interface ProductRepo extends JpaRepository<Product, Integer>{

}