using my.demo as my from '../db/schema';

service DemoService {
  entity Employees as projection on my.Employees;
  entity Departs as projection on my.Departs;
  entity Orders as projection on my.Orders;
}
