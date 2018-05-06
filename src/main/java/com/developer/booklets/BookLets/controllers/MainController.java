package com.developer.booklets.BookLets.controllers;



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


    @RequestMapping("/")
    public ModelAndView doHome_Income(){
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("lists", repoI.findAll());
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

    @RequestMapping(value = "/income_delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete_Income(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/");
        repoI.deleteById(id);
        return mv;
    }


}
