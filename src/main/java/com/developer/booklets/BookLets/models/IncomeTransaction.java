package com.developer.booklets.BookLets.models;

import javax.persistence.*;





@Entity
@Table(name = "income")


public class IncomeTransaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;
    @Column(name = "date")
    public String Date;
    @Column(name = "receivedfrom")
    public String receivedFrom;
    @Column(name = "description")
    public String Description;
    @Column(name = "mode")
    public String Mode;
    @Column(name = "amount")
    public Double Amount;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        Date = date;
    }

    public String getReceivedFrom() {
        return receivedFrom;
    }

    public void setReceivedFrom(String receivedFrom) {
        this.receivedFrom = receivedFrom;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getMode() {
        return Mode;
    }

    public void setMode(String mode) {
        Mode = mode;
    }

    public Double getAmount() {
        return Amount;
    }

    public void setAmount(Double amount) {
        Amount = amount;
    }

    public IncomeTransaction() {
    }

    public IncomeTransaction(String date, String receivedFrom, String description, String mode, Double amount) {
        Date = date;
        this.receivedFrom = receivedFrom;
        Description = description;
        Mode = mode;
        Amount = amount;
    }
}
