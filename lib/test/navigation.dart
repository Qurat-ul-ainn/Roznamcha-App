import 'package:flutter/material.dart';
import 'package:trade/ui_screens/banks_and_accounts.dart';
import 'package:trade/ui_screens/banks_and_accounts_add.dart';
import 'package:trade/ui_screens/banks_and_accounts_edit.dart';
import 'package:trade/ui_screens/change_password.dart';
import 'package:trade/ui_screens/dashboard.dart';
import 'package:trade/ui_screens/employee_access.dart';
import 'package:trade/ui_screens/employee_access_edit.dart';
import 'package:trade/ui_screens/employee_access_new.dart';
import 'package:trade/ui_screens/expence.dart';
import 'package:trade/ui_screens/expence_types.dart';
import 'package:trade/ui_screens/expense_type_add.dart';
import 'package:trade/ui_screens/expense_type_edit.dart';
import 'package:trade/ui_screens/journal_entry.dart';
import 'package:trade/ui_screens/locations.dart';
import 'package:trade/ui_screens/locations_edit.dart';
import 'package:trade/ui_screens/locations_new.dart';
import 'package:trade/ui_screens/login_screens/forgetpassword_screen.dart';
import 'package:trade/ui_screens/login_screens/login_screen.dart';
import 'package:trade/ui_screens/login_screens/registration_screen.dart';
import 'package:trade/ui_screens/onboarding_screen/onBoradScreen.dart';
import 'package:trade/ui_screens/onboarding_screen/onboarding_languages.dart';
import 'package:trade/ui_screens/parties.dart';
import 'package:trade/ui_screens/party_add.dart';
import 'package:trade/ui_screens/party_edit.dart';
import 'package:trade/ui_screens/payment_in.dart';
import 'package:trade/ui_screens/payment_out.dart';
import 'package:trade/ui_screens/product_add.dart';
import 'package:trade/ui_screens/product_edit.dart';
import 'package:trade/ui_screens/products.dart';
import 'package:trade/ui_screens/profile.dart';
import 'package:trade/ui_screens/purchase.dart';
import 'package:trade/ui_screens/sale_invoice_a.dart';
import 'package:trade/ui_screens/sales_invoice_b.dart';
import 'package:trade/ui_screens/services_add.dart';
import 'package:trade/ui_screens/shipping_information.dart';
import 'file:///C:/Users/ar/AndroidStudioProjects/roznamcha_app/lib/ui_screens/onboarding_screen/starting_screen.dart';
import 'package:trade/ui_screens/stock_transfer.dart';
import 'package:trade/ui_screens/transaction_details.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "Starting",
            heroTag: "1",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StartingScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "OnBoardingLanguages",
            heroTag: "2",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnBoardingLanguages()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "OnBoardingScreens",
            heroTag: "3",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnBoardScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "Registration",
            heroTag: "4",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistrationScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "Login",
            heroTag: "5",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "ForgotPassword",
            heroTag: "6",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "Dashboard",
            heroTag: "7",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "BanksAndAccounts",
            heroTag: "8",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BanksAndAccountsScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "BanksAccounts",
            heroTag: "9",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BanksAccountsAddScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "BankAndAccount",
            heroTag: "10",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BankAndAccountEdit()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "Parties",
            heroTag: "11",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>PartiesScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "PartyAdd",
            heroTag: "12",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PartyAddScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "PartyEdit",
            heroTag: "13",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PartyEditScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "Products",
            heroTag: "14",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductsScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "ProductAdd",
            heroTag: "15",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductAddScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "ProductEdit",
            heroTag: "17",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductEditScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "ServicesAdd",
            heroTag: "18",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServicesAddScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "ExpenseTypes",
            heroTag: "19",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpenseTypesScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "ExpenseTypeAdd",
            heroTag: "20",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpenseTypeAddScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "ExpenseTypeEdit",
            heroTag: "21",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpenseTypeEditScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "Locations",
            heroTag: "22",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocationsScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "LocationsNew",
            heroTag: "23",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocationsNewScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "LocationsEdit",
            heroTag: "24",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocationsEditScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "EmployeeAccess",
            heroTag: "25",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmployeeAccessScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: " EmployeeAccessNew",
            heroTag: "26",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmployeeAccessNewScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "EmployeeAccessEdit",
            heroTag: "27",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmployeeAccessEditScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "SaleInvoiceA",
            heroTag: "28",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SaleInvoiceAScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "SaleInvoiceB",
            heroTag: "29",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SaleInvoiceBScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "Purchase",
            heroTag: "30",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PurchaseScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "PaymentIn",
            heroTag: "31",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentInScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "PaymentOut",
            heroTag: "32",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentOutScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "Expense",
            heroTag: "33",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpenseScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "JournalEntry",
            heroTag: "34",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JournalEntryScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "StockTransfer",
            heroTag: "35",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StockTransferScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "Profile",
            heroTag: "36",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.yellow,
            btnTxt: "ChangePassword",
            heroTag: "37",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangePasswordScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.red,
            btnTxt: "ShippingIn",
            heroTag: "38",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShippingInfoScreen()),
              );
            },
          ),
          CustomNavigation(
            btnClr: Colors.green,
            btnTxt: "TransactionDetails",
            heroTag: "39",
            btnFunction: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TransactionDetailsScreen()),
              );
            },
          ),
        ],
      )),
    );
  }
}



class CustomNavigation extends StatelessWidget {
  final btnTxt;
  final btnClr;
  final btnFunction;
  final heroTag;


  const CustomNavigation(
      {Key key, this.btnTxt, this.btnClr, this.btnFunction,this.heroTag})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
      height: 50,
     // color:btnClr ,
      width: MediaQuery.of(context).size.width*1,
      child: FloatingActionButton(
        backgroundColor:btnClr ,
       heroTag: heroTag,
        onPressed: btnFunction,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(
            28.0,
          ),
        ),
        child: Text(
          btnTxt,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}