1. truffle console --network development
2. let s = await shop.deployed() // for deploy shop contract
3. let L = await Logistics.deployed()   // for deploy Logistics contract

// for Set Product
4. s.Setproducts(1,"phone")
   s.Setproducts(2,"Laptop")

5. now open shop.html file in local host
    put 1 and click selling item to see the item 
    put 1 or 2 in buy section and click buy and confirm it in Matamask
    noe click on coustomer and copy the coustomer address

6. L.SetCoustomer("coustomer address") // for set coustomer
    L.setCustoms(accounts[5],accounts[6])  // for set custom address
    L.setDeliveryHub(accounts[7])  // for set deliveryhub address

    Now click Track Order in shop site 

    click Saller to see saller address
    click coustomer to see coustomer address
    copy the coustomer addres and put in track section and click on Track for trackin ypur Order

    ** you see false,, in console

    L.ConfirmOrder("coustomer address") // for confirm order

    ** now click on Track and you see (true,confirm and Send For Custom1 Clearance,,,)

    L.ApproveCustom1("coustomer address", { from: accounts[5]})  // for approve custom1

    ** now click on Track and you see (true,confirm and Send For Custom1 Clearance,Clear by Custom1 and Approved for Export,,)

    L.ApproveCustom2("coustomer address", { from: accounts[6]})  // for approve custom2

    ** now click on Track and you see (true,confirm and Send For Custom1 Clearance,
    Clear by Custom1 and Approved for Export,Clear by Custom2 and Approved for Import,)

    L.DeliveryHub("coustomer address", {from: accounts[7]}) // for recive in delivery DeliveryHub

    ** now click on Track and you see (true,confirm and Send For Custom1 Clearance,
    Clear by Custom1 and Approved for Export,Clear by Custom2 and Approved for Import,Recived Package in DeliveryHub)

    L.DeliveryDone("coustomer address") // for recive Product

    ** now click on Track and you see (true,confirm and Send For Custom1 Clearance,
    Clear by Custom1 and Approved for Export,Clear by Custom2 and Approved for Import,Package Delivered)
     