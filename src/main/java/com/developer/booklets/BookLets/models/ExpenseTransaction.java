package com.developer.booklets.BookLets.models;

import javax.persistence.*;





@Entity
@Table(name = "expense")


public class ExpenseTransaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;
    @Column(name = "date")
    public String Date;
    @Column(name = "paidto")
    public String paidTo;
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

    public String getPaidTo() {
        return paidTo;
    }

    public void setPaidTo(String paidTo) {
        this.paidTo = paidTo;
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

    public ExpenseTransaction() {
    }

    public ExpenseTransaction(String date, String paidTo, String description, String mode, Double amount) {
        Date = date;
        this.paidTo = paidTo;
        Description = description;
        Mode = mode;
        Amount = amount;
    }
}
