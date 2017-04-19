//========================================================================
// Javascript for the Russell's Pizza Web Page
// Last Modified 18 APR 2017
// Modified by Russell Stauffer
//
// Author: Russell Stauffer
// Customer: Tech Academy
//
// Function GetReceipt will print the receipt.
// During testing, it will be used to test individual elements of the code.
//========================================================================

function makeReceipt() {
	
//	var text1 = []; // Set up first text array;
//	var text2 = []; // Set up second text array;
	
	var pizzaTotal = 0;
	var sizeTotal = 0;
	var pSizeArray = document.getElementsByClassName("pSize");
	
	for (var i = 0; i < pSizeArray.length; i++) {
		if(pSizeArray[i].checked) {
			var selectedSize = pSizeArray[i].value;				
		}
	}
	if(selectedSize == "Small"){
		sizeTotal = 6;}
		else if(selectedSize == "Medium"){
			sizeTotal = 10;}
		else if(selectedSize == "Large"){
			sizeTotal = 14;}
		else if(selectedSize == "X-Large"){
		sizeTotal = 16;
	}
	
	pizzaTotal = pizzaTotal + sizeTotal;
	
// Test first line of form receipt output.
	console.log("Size selected: "+selectedSize);
	console.log("Subtotal: $ " +sizeTotal+".00");
	document.getElementById("outSize").innerHTML = selectedSize;
	document.getElementById("outSizePrice").innerHTML = sizeTotal + ".00";

	
getMeats(pizzaTotal);	// Call the meat selection.
}

//====== Function getMeats ===============================================
//
//	This function tallies up the types and cost of the meats (if any) on
//	the pizza. The first meat is free.
//==================================================================+======
function getMeats(pizzaTotal) {
	
	var meatTotal = 0;  // Total cost of meat.
	var MeatCost = 0;
	var selectedMeats = [];
	var stringMeats = "";
	var meatArray = document.getElementsByClassName("pMeats");

	
	for (var j=0; j < meatArray.length; j++){
		if(meatArray[j].checked){
			selectedMeats.push(meatArray[j].value);
			meatTotal = meatTotal + 1;}
	}
		if(meatTotal <= 1){
			meatCost = 0;}
		else {
			meatCost = meatTotal - 1; }
		


	document.getElementById("outMeats").innerHTML = selectedMeats;
	console.log("Selected Meats: ", selectedMeats);
	
	document.getElementById("outMeatsPrice").innerHTML = meatCost+".00";	
	console.log("Charges for Meat: "+ meatTotal+".00");
		
	pizzaTotal = pizzaTotal + meatCost;	
	
	console.log("Subtotal: "+ pizzaTotal);

getCheese(pizzaTotal);	// Call the cheese section.	
}	
//
//	This function will tally up the total on cheese. the only change will
// 	be for extra cheese. (Value = "X Cheese") Add $3.00 for extra cheese. 
//========================================================================
function getCheese(pizzaTotal){
	
	var cheeseTotal = 0;
	var cheeseArray = document.getElementsByClassName("pCheese");
	
	for(var k=0; k < cheeseArray.length; k++) {
		if(cheeseArray[k].checked){
			var selectedCheese = cheeseArray[k].value;

		}
	}
	if(selectedCheese == "X-Cheese"){
		cheeseTotal = (cheeseTotal + 3);
	}
		pizzaTotal = pizzaTotal + cheeseTotal;
		
		console.log("Subtotal: $ " +pizzaTotal +".00");	
		
	document.getElementById("outCheese").innerHTML = selectedCheese;
		console.log("Cheese selected: " +selectedCheese);
		
	document.getElementById("outCheesePrice").innerHTML = cheeseTotal+".00";
		console.log("cheese charge $ "+cheeseTotal +".00");

	getCrust(pizzaTotal);		
};
//===== Function getCrust ================================================
//
//	This function will add $3.00 to the total price if the selected crust
//	is cheese-stuffed. Otherwise, there is no charge.
//========================================================================
function getCrust(pizzaTotal){

	var crustTotal = 0;
	var crustArray = document.getElementsByClassName("pCrust");
	
	for(var k=0; k < crustArray.length; k++) {
		if(crustArray[k].checked){
			var selectedCrust = crustArray[k].value;
		}

	}
	if(selectedCrust ==="Cheese"){
		crustTotal = (crustTotal + 3); // $3 cheese in crust charge
	}

		pizzaTotal = pizzaTotal + crustTotal;
		
	document.getElementById("outCrust").innerHTML = selectedCrust;
	console.log("Crust selected: " +selectedCrust);
	document.getElementById("outCrustPrice").innerHTML = crustTotal+".00";
	console.log("Crust charge $ "+crustTotal +".00");
	console.log("subtotal: $ " +pizzaTotal +".00");	
		
getSauce(pizzaTotal);	

};
//===== Function getSauce ================================================
//
//	This sends the sauce selection to getReceipt. No price changes.
//========================================================================
function getSauce(pizzaTotal){

	var sauceArray = document.getElementsByClassName("pSauce");
	var sauceValue = 0;
	
	for(var k=0; k < sauceArray.length; k++) {
		if(sauceArray[k].checked){
			var selectedSauce = sauceArray[k].value;
		}
		// There are no extra charges for sauce.
	}
		console.log("There are no charges for sauces.");
		console.log("Subtotal: $ " +pizzaTotal +".00");
		
	document.getElementById("outSauce").innerHTML = selectedSauce;
	document.getElementById("outSaucePrice").innerHTML = sauceValue+".00";
		
		getVeggies(pizzaTotal);
};	
//===== Function getVeggies ==============================================
//
//	This will send your selected veggies to getReceipt, and add $1 for
//	each vegetable selected. The first veggie is free.
//========================================================================
function getVeggies(pizzaTotal) {
	
	var veggieTotal = 0;  // Total cost of vegetables.
	var selectedVeggies = [];
	var stringVeggies = "";
	var veggieArray = document.getElementsByClassName("pVeggie");
	
	for (var j=0; j < veggieArray.length; j++){
		if(veggieArray[j].checked){
		selectedVeggies.push(veggieArray[j].value);
		;}
	;}
	
	var veggieCount = (selectedVeggies.length);
	
	if (veggieCount > 1){
		veggieTotal = veggieCount - 1;}
	
	pizzaTotal = (veggieTotal + pizzaTotal);
	
	document.getElementById("outVeggies").innerHTML = selectedVeggies;
	document.getElementById("outVeggiesPrice").innerHTML = veggieTotal+".00";
	document.getElementById("pizzaTotal2").innerHTML = pizzaTotal + ".00";

}

//===== Function resetForm ===============================================
//
//	This clears the form for your next pizza order, or if you screwed up
//	before you ordered this one. Resets the defaults.
//========================================================================
