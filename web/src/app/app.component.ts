import { Component } from '@angular/core';
import { Http , Response, RequestOptions, Headers  } from '@angular/http';
import 'rxjs/add/operator/map'

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  account_number:string;
  branch_name:string;
  balance:string;
  newaccount:string;
  newbranch:string;
  newbalance:string;
  title = 'My First Angular App';
  private apiUrl = 'http://localhost:3000/getAccount';
  data: any ={};

  constructor(private http:Http){
    console.log('Hello');
    this.getContacts();
    this.getData();
    
  }


  addAccount(account_number,branch_name,balance) {
    console.log(account_number,branch_name,balance)
    var data = {
      account_number: this.account_number,
      branch_name: this.branch_name,
      balance: this.balance
    };
    console.log(data);
    
    this.AddAccount(data)
    .subscribe(res => {
      this.account_number = "";
      this.branch_name = "";
      this.balance = "";
      console.log(res);
    });
    location.reload();
  }

  updateAccount(newaccount,newbranch_name,newbalance) {
    console.log(this.account_number,newaccount,newbranch_name,newbalance)
    
    var data = {
      account_number: this.account_number,
      newaccount: this.newaccount,
      newbranch: this.newbranch,
      newbalance: this.newbalance
    };
    this.UpdateAccount(data)
      .subscribe(res => {
        this.account_number = "";
        this.newaccount = "";
        this.newbranch = "";
        this.newbalance = "";
        console.log(res);
      });
    location.reload();
  }

  deleteAccount(account_number) {
    console.log(account_number)
    var data = {
      account_number: account_number,
    };
    this.DeleteAccount(data)
      .subscribe(res => {
        this.account_number = "";
        console.log(res);
      });
    location.reload();
  }


  AddAccount(data) {
    console.log(data);
    let headers = new Headers({ "Content-Type": "application/json" });
    let options = new RequestOptions({ headers: headers });
    console.log("ses");
    return this.http.post('http://localhost:3000/InsertAccount', JSON.stringify(data), options)
      .map(res => res.json());  
  }

  UpdateAccount(data) {
    let headers = new Headers({ "Content-Type": "application/json" });
    let options = new RequestOptions({ headers: headers });
    return this.http.put('http://localhost:3000/UpdateAccount', JSON.stringify(data), options)
      .map(res => res.json());
  }


  DeleteAccount(data) {
    let headers = new Headers({ "Content-Type": "application/json" });
    let options = new RequestOptions({ headers: headers });
    return this.http.post('http://localhost:3000/DeleteAccount', JSON.stringify(data), options)
      .map(res => res.json());
  }


  getdataValue(account_number,branch_name,balance){
    this.account_number = account_number;
    this.newaccount = account_number;
    this.newbranch = branch_name;
    this.newbalance = balance;
    console.log(account_number)
  }

  getData(){
    return this.http.get(this.apiUrl)
      .map((res:Response)=>res.json())
  }

  getContacts(){
    this.getData().subscribe(data => {
      console.log(data);
      this.data = data
      console.log(this.data);
    })
  }

}