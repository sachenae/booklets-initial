package com.developer.booklets.BookLets.models;

import org.springframework.data.repository.CrudRepository;

public interface ExpenseRepo extends CrudRepository<ExpenseTransaction, Integer> {

}
