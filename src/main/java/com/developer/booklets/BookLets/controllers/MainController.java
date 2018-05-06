package com.developer.booklets.BookLets.controllers;



import com.developer.booklets.BookLets.models.ExpenseRepo;
import com.developer.booklets.BookLets.models.ExpenseTransaction;
import com.developer.booklets.BookLets.models.IncomeRepo;
import com.developer.booklets.BookLets.models.IncomeTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MainController {

    @Autowired
    IncomeRepo repoI;

    @Autowired
    ExpenseRepo repoE;


    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("lists", repoI.findAll());
        mv.addObject("elists", repoE.findAll());
        return mv;
    }





    @RequestMapping(value = "/income_save", method = RequestMethod.POST)
    public ModelAndView doSave_Income(@RequestParam("date")String Date, @RequestParam("receivedfrom") String receivedFrom, @RequestParam("description")String Description, @RequestParam("mode")String Mode, @RequestParam("amount")Double Amount){
        ModelAndView mv = new ModelAndView("redirect:/");
        IncomeTransaction new_entry = new IncomeTransaction();
        new_entry.setDate(Date);
        new_entry.setReceivedFrom(receivedFrom);
        new_entry.setDescription(Description);
        new_entry.setMode(Mode);
        new_entry.setAmount(Amount);
        repoI.save(new_entry);
        return mv;
    }

    @RequestMapping(value = "/expense_save", method = RequestMethod.POST)
    public ModelAndView doSave_Expense(@RequestParam("date")String Date, @RequestParam("paidto") String paidTo, @RequestParam("description")String Description, @RequestParam("mode")String Mode, @RequestParam("amount")Double Amount){
        ModelAndView mv = new ModelAndView("redirect:/");
        ExpenseTransaction new_entry = new ExpenseTransaction();
        new_entry.setDate(Date);
        new_entry.setPaidTo(paidTo);
        new_entry.setDescription(Description);
        new_entry.setMode(Mode);
        new_entry.setAmount(Amount);
        repoE.save(new_entry);
        return mv;
    }

    @RequestMapping(value = "/income_delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete_Income(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/");
        repoI.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/expense_delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete_Expense(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/");
        repoE.deleteById(id);
        return mv;
    }


}
