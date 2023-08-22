package com.scb.axessspringboottraining.server;

 

import java.util.ArrayList;
import java.util.List;

 

import org.springframework.stereotype.Service;

 

import com.scb.axessspringboottraining.model.Customer;

 

@Service
public class CustomerService {
    public List<Customer> customers;

    public CustomerService() {
        Customer c1=new Customer(1,"bvs","rao", true,"bvsrao@sc.com","9897987");
        Customer c2=new Customer(2,"bv","ao", false,"bvsao@sc.com","9837987");
        Customer c3=new Customer(3,"b","ro", true,"bvo@sc.com","9297987");
        customers= new ArrayList<>();
        customers.add(c1);
        customers.add(c2);
        customers.add(c3);
    }

    public List<Customer> getCustomer(){
        return customers;
    }

    public Customer getCustomerById(int id) {
        for(Customer customer:customers) {
            if(customer.getId()==id) {
                return customer;
            }
        }
        return null;
    }

 

    public void createCustomer(Customer cust) {
        // TODO Auto-generated method stub
        customers.add(cust);

    }

 

    public void updateCustomer(Customer cust, int id) {
        // TODO Auto-generated method stub
        for(int i=0;i<customers.size();i++) {
            Customer c=customers.get(i);
            if(c.getId()==id) {
                customers.set(i,cust);
                return;
            }

        }
    }

 

    public void deleteCustomer(int id) {
        // TODO Auto-generated method stub
        for(Customer customer:customers) {
            if(customer.getId()==id) {
            customers.remove(customer);

            }
        }
    }
}
