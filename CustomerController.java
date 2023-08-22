package com.scb.axessspringboottraining.controller;

 

import java.util.ArrayList;
import java.util.List;

 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

 

import com.scb.axessspringboottraining.model.Customer;
import com.scb.axessspringboottraining.server.CustomerService;

 

@RestController
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/hello")
    public String getMessage() {
        return "Hello Kanha";
        }

    @RequestMapping("/techs")
    public List<String> getTechs(){
        List<String> techs=new ArrayList<>();
        techs.add("java");
        techs.add("react");
        techs.add("postgres");
        return techs;

    }
    @RequestMapping("/customers")
    public List<Customer> getCustomer(){
        return customerService.getCustomer();
    }

    @RequestMapping("/customers/{id}")
    public Customer getCustomerById(@PathVariable int id) {

        return customerService.getCustomerById(id);
    }

    //@RequestMapping(method=RequestMethod.POST,value="/api/customer")
    @PostMapping("/api/customers")
    public void createCustomer(@RequestBody Customer cust) {
        customerService.createCustomer(cust);

    }

    @PutMapping("api/customers/{id}")
    public void updateCustomer(@RequestBody Customer cust, @PathVariable int id) {
        customerService.updateCustomer(cust,id);

    }

    @DeleteMapping("/api/customers/{id}")
    public void deleteCustomer(@PathVariable int id) {
        customerService.deleteCustomer(id);

    }
}

 
