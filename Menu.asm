ExitProcess proto
WriteString proto
ReadInt64 proto
WriteInt64 proto
Crlf proto
.data
    MenuString db "Choose an operation:", 0
    Option1 db "1. CLoths", 0
    Option2 db "2. Firearms", 0
    Option3 db "3. Mobiles", 0
    ChoicePrompt db "Enter your choice: ", 0
    QuantityPrompt db "Enter the quantity: ", 0

    Cloths db "Choose an operation:", 0  

    String1 db "    /-----\      /-----\  ", 0
    String1b db "   /      =      =      \ ", 0
    String2 db "  /    /   =_  _=   \    \", 0
    String3 db " /    /|            |\    \", 0
    String4 db "       |1.Buy Shirts|", 0
    String4b db "      |2.Buy Pants |", 0
    String4c db "      |3.Buy Jackets|", 0
    String4d db "      |4.Buy Hoodies|", 0
    String4e db "      |____________|", 0
    String4f db "    /5.Exit   store\", 0


     ; Shirt categories
    ShirtCategory1 db "  1. Casual Shirt", 0
    ShirtCategory2 db "  2. Formal Shirt", 0
    ShirtCategory3 db "  3. Sporty Shirt", 0

    ; Pant categories
    PantCategory1 db "  1. Jeans", 0
    PantCategory2 db "  2. Chinos", 0
    PantCategory3 db "  3. Formal Pants", 0

    ; Jacket categories
    JacketCategory1 db "  1. Leather Jacket", 0
    JacketCategory2 db "  2. Denim Jacket", 0
    JacketCategory3 db "  3. Windbreaker", 0

    ; Hoodie categories
    HoodieCategory1 db "  1. Pullover Hoodie", 0
    HoodieCategory2 db "  2. Zip-Up Hoodie", 0
    HoodieCategory3 db "  3. Graphic Hoodie", 0

    ; Prices of Shirts 
    CasualShirtPrice dq 19 
    FormalShirtPrice dq 17
    SportyShirtPrice dq 22

    ; Prices of Pants
    JeansPrice dq 18
    ChinosPrice dq 20
    FormalPantsPrice dq 15

    ; Prices of Jackets
    LeatherJacketPrice dq 35
    DenimJacketPrice dq 32
    WindbreakerPrice dq 30

    ; Prices of Hoodie
    PulloverHoodiePrice dq 26
    ZipUpHoodiePrice dq 27
    GraphicHoodiePrice dq 25

    
    ;-------------------------------------------------------------------------------------------------

choice dq ?
total_cost dq 0 ; Variable to store the total cost
String15 db"                                _____________________________________________",0
String1p db "                                |            SS&S Firearms store            |",0
String0 db "    __ _____________________    |          What Are You Buying!!!           |",0
String3h db "   |  \ \@([_____]_________|    |             1) GUNS                       |",0
String4g db "   \ _^|""[____]                 |             2) BOWS                       |",0
String5 db "  /	    /                   |             3) SUPPLIES                   |",0
String6 db " /  ' '/                        |             4) Exit the Store             |",0
String16 db"/______|                        |___________________________________________|",0
exit_msg db " - - - - THANK YOU FOR VISITING THE SHOP - - - - ",0
invalid_msg db "Invalid choice! Please enter a number between 1 and 4.$",0
certificate_msg db "Do you have a certificate to purchase a gun?", 0
confirm_purchase_msg db "1: YES                       2: NO",0
certificate_NO db "Sorry you do not meet the requirements to purchase a gun ",0
submenu_guns db "       Choose an option: 1) Deagle 5000$, 2) M4A4 6000$, 3) M4A1s 5500$, 4) AK-47 7000$, 5) AWP 10000$", 0
StringDeagle db "1: Deagle          $5000   Thank you.", 0
StringM4A4 db "2: M4A4            $6000   Thank you.", 0
StringM4A1s db "3: M4A1s          $5500   Thank you.", 0
StringAK47 db "4: AK-47           $7000   Thank you.", 0
StringAWP db "5: AWP             $10000  Thank you.", 0
StringBow db "             1) Recurve Bow 300$     2) Compound Bow 400$    3) Longbow 350$", 0
StringBow1 db "1: Recurve Bow     $300    Thank you.", 0
StringBow2 db "2: Compund Bow     $400    Thank you.", 0
StringBow3 db "3: Long Bow        $350    Thank you.", 0
StringSupplysd  db " 1) Ammunition Pack    $20   2) First Aid Kit        $30   3) Survival Gear Pack       $50   4) Tactical Flashlight 40$",0
StringSupplysa  db " 5) Binoculars         $40   6) Camping Tent         $80   7) Water Purification Kit $25   8) Multi-tool 30$",0
StringSupplysw  db "                                  9) Backpack              $60",0 
StringSupply1 db "1: Ammunition Pack     $20   Thank you.", 0
StringSupply2 db "2: First Aid Kit       $30   Thank you.", 0
StringSupply3 db "3: Survival Gear Pack  $50   Thank you.", 0
StringSupply4 db "4: Tactical Flashlight $40   Thank you.", 0
StringSupply5 db "5: Binoculars          $40   Thank you.", 0
StringSupply6 db "6: Camping Tent        $80   Thank you.", 0
StringSupply7 db "7: Water Purification Kit $25 Thank you.", 0
StringSupply8 db "8: Multi-tool           $30   Thank you.", 0
StringSupply9 db "9: Backpack             $60   Thank you.", 0
StringTotalCostMsg db "Total Cost: $", 0
String_quantity db "How many pieces do you require?",0
num dq ?
num2 dq ?
num3 dq ?
; ... (existing data declarations)

quantity_deagle dq 0
quantity_m4a4 dq 0
quantity_m4a1s dq 0
quantity_ak47 dq 0
quantity_awp dq 0
quantity_bow1 dq 0
quantity_bow2 dq 0
quantity_bow3 dq 0
quantity_supply1 dq 0
quantity_supply2 dq 0
quantity_supply3 dq 0
quantity_supply4 dq 0
quantity_supply5 dq 0
quantity_supply6 dq 0
quantity_supply7 dq 0
quantity_supply8 dq 0
quantity_supply9 dq 0

;------------------------------------------------------------------------------------
 Mobile db "Choose an operation:", 0 

    Option16a db "   ________________", 0
    Option11 db "  |   1.Iphone     |", 0
    Option12 db "  |   2.Samsung    |", 0
    Option13 db "  |   3.OnePlus    |", 0
    Option14 db "  |   4.Huawei     |", 0
    Option15 db "  |   5.Infinix    |", 0
    Option16 db "  |   6.Realme     |", 0
    Option16b db "  |________________|", 0
    Option16c db "  |7.Exit the store|", 0
    Option16d db "  |________________|", 0
  
    

    ; Iphone
    String111 db "1. Iphone 11 Pro", 0
    String112 db "2. Iphone 12 Pro", 0
    String113 db "3. Iphone 13 Pro", 0
    String114 db "4. Iphone 14 Pro", 0
    String115 db "5. Iphone 15 Pro", 0

    ; Samsung
    String116 db "1. Samsung S23 Ultra", 0
    String117 db "2. Samsung Galaxy Z Flip 5", 0
    String118 db "3. Samsung Galaxy A05s", 0
    String119 db "4. Samsung Galaxy A54 5G", 0
    String120 db "5. Samsung Galaxy A14", 0

    ; Oneplus
    String211 db "1. Oneplus 11", 0
    String212 db "2. Oneplus 10 Pro", 0
    String213 db "3. Oneplus 10T", 0
    String214 db "4. Oneplus Nord 2", 0
    String215 db "5. Oneplus Nord N30", 0

    ; Huawei
    String316 db "1. Huawei nova Y70", 0
    String317 db "2. Huawei P50", 0
    String318 db "3. Huawei Mate X5", 0
    String319 db "4. Huawei nova 11", 0
    String320 db "5. Huawei P60 Pro", 0

     ; Infinix
    String421 db "1. Infinix Zero 20", 0
    String422 db "2. Infinix Note 12 VIP", 0
    String423 db "3. Infinix Zero 5G", 0
    String424 db "4. Infinix Hot 12", 0
    String425 db "5. Infinix Note 12 G96", 0

     ; Realme
    String526 db "1. Realme C67", 0
    String527 db "2. Realme C53", 0
    String528 db "3. Realme C51", 0
    String529 db "4. Realme 9 Pro", 0
    String530 db "5. Realme C33", 0

    ; Prices 
    Iphone11ProPrice dq 100000
    Iphone12ProPrice dq 130000 
    Iphone13ProPrice dq 155000 
    Iphone14ProPrice dq 200000 
    Iphone15ProPrice dq 250000 

    SamsungGalaxyZFlip5Price dq 140000
    SamsungGalaxyA05sPrice dq 120000
    SamsungS23UltraPrice dq 150000
    SamsungGalaxyA545GPrice dq 110000
    SamsungGalaxyA14Price dq 125000

    OnePlus11Price dq 140000
    OnePlus10ProPrice dq 130000
    OnePlus10TPrice dq 125000
    OnePlusNord2Price dq 120000
    OnePlusNordN30Price dq 110000

    HuaweiNovaY70Price dq 150000
    HuaweiP50Price dq 140000
    HuaweiMateX5Price dq 130000
    HuaweiNova11Price dq 120000
    HuaweiP60ProPrice dq 110000

    InfinixNote11VipPrice dq 65000
    InfinixZero5GPrice dq 49000
    InfinixHot12Price dq 35000
    InfinixZero20Price dq 55000
    InfinixNote12G96Price dq 39000

    RealmeC53Price dq 75000
    RealmeC51Price dq 61000
    Realme9ProPrice dq 57000
    RealmeC67Price dq 49000
    RealmeC33Price dq 42000
.code
main proc
; Display menu
    mov rdx, offset MenuString
    call WriteString
    call Crlf
    mov rdx, offset Option1
    call WriteString
    call Crlf
    mov rdx, offset Option2
    call WriteString
    call Crlf
    mov rdx, offset Option3
    call WriteString
    call Crlf

    ; Get user choice
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice
    cmp rax, 1
    je  BuyCloths
    cmp rax, 2
    je  BuyFireArms
    cmp rax, 3
    je  BuyMobiles

    jmp ExitProgram

BuyCloths:
POLKASH:
    mov rdx, offset Cloths
    call WriteString
    call Crlf
    mov rdx, offset String1
    call WriteString
    call Crlf
    mov rdx, offset String1b
    call WriteString
    call Crlf
    mov rdx, offset String2
    call WriteString
    call Crlf
    mov rdx, offset String3
    call WriteString
    call Crlf
    mov rdx, offset String4
    call WriteString
    call Crlf
    mov rdx, offset String4b
    call WriteString
    call Crlf
    mov rdx, offset String4c
    call WriteString
    call Crlf
    mov rdx, offset String4d
    call WriteString
    call Crlf
    mov rdx, offset String4e
    call WriteString
    call Crlf
    mov rdx, offset String4f
    call WriteString
    call Crlf

    ; Get user choice
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice
    cmp rax, 1
    je  BuyShirt
    cmp rax, 2
    je  BuyPant
    cmp rax, 3
    je  BuyJacket
    cmp rax, 4
    je  BuyHoodie

    jmp ExitProgram

BuyShirt:

    ; Display shirt categories
    mov rdx, offset ShirtCategory1
    call WriteString
    call Crlf
    mov rdx, offset ShirtCategory2
    call WriteString
    call Crlf
    mov rdx, offset ShirtCategory3
    call WriteString
    call Crlf

    ; Get user choice within the shirt category
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice within the shirt category
    cmp rax, 1
    je  BuyCasualShirt
    cmp rax, 2
    je  BuyFormalShirt
    cmp rax, 3
    je  BuySportyShirt

    jmp ExitProgram

BuyCasualShirt:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; code to handle buying a shirt, update Total cost
    mov rax, [CasualShirtPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKASH

BuyFormalShirt:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; Add code to handle buying a formal shirt, update total_cost
    mov rax, [FormalShirtPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKASH

BuySportyShirt:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; Add code to handle buying a sporty shirt, update total_cost
    mov rax, [SportyShirtPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax

    jmp POLKASH

BuyPant:

    ; Display pant categories
    mov rdx, offset PantCategory1
    call WriteString
    call Crlf
    mov rdx, offset PantCategory2
    call WriteString
    call Crlf
    mov rdx, offset PantCategory3
    call WriteString
    call Crlf

    ; Get user choice within the pant category
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice within the pant category
    cmp rax, 1
    je  BuyJeans
    cmp rax, 2
    je  BuyChinos
    cmp rax, 3
    je  BuyFormalPants

    jmp ExitProgram

BuyJeans:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; Add code to handle buying jeans, update total_cost
    mov rax, [JeansPrice]
    imul rax, rcx ; Multiply price by quantit
    add total_cost, rax
    jmp POLKASH

BuyChinos:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; Add code to handle buying chinos, update total_cost                                     
    mov rax, [ChinosPrice]
    imul rax, rcx ; Multiply price by quantit
    add total_cost, rax
    jmp POLKASH

BuyFormalPants:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; Add code to handle buying formal pants, update total_cost
    mov rax, [FormalPantsPrice]
    imul rax, rcx ; Multiply price by quantit
    add total_cost, rax
    jmp POLKASH

BuyJacket:
    ; Display shirt categories
    mov rdx, offset JacketCategory1
    call WriteString
    call Crlf
    mov rdx, offset JacketCategory2
    call WriteString
    call Crlf
    mov rdx, offset JacketCategory3
    call WriteString
    call Crlf

    ; Get user choice within the Jacket category
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice within the Jacket category
    cmp rax, 1
    je  BuyLeatherJacket
    cmp rax, 2
    je  BuyDenimJacket
    cmp rax, 3
    je  BuyWindbreaker

    jmp ExitProgram

BuyLeatherJacket:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
 
    ; Add code to handle buying jeans, update total_cost
    mov rax, [LeatherJacketPrice]
    imul rax, rcx ; Multiply price by quantit
    add total_cost, rax
    jmp POLKASH

BuyDenimJacket:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; Add code to handle buying chinos, update total_cost
    mov rax, [DenimJacketPrice]
    imul rax, rcx ; Multiply price by quantit
    add total_cost, rax
    jmp POLKASH

BuyWindbreaker:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; Add code to handle buying formal pants, update total_cost
    mov rax, [WindbreakerPrice]
    imul rax, rcx ; Multiply price by quantit
    add total_cost, rax
    jmp POLKASH

BuyHoodie:
    ; Display shirt categories
    mov rdx, offset HoodieCategory1
    call WriteString
    call Crlf
    mov rdx, offset HoodieCategory2
    call WriteString
    call Crlf
    mov rdx, offset HoodieCategory3
    call WriteString
    call Crlf

    ; Get user choice within the Jacket category
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice within the Jacket category
    cmp rax, 1
    je  BuyPulloverHoodie
    cmp rax, 2
    je  BuyZipUpHoodie
    cmp rax, 3
    je  BuyGraphicHoodie

    jmp ExitProgram

BuyPulloverHoodie:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; Add code to handle buying Pull Over Hoodie, update total_cost
    mov rax, [PulloverHoodiePrice]
    imul rax, rcx ; Multiply price by quantit
    add total_cost, rax
    jmp ExitProgram

BuyZipUpHoodie:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; Add code to handle buying Zip-Up Hoodie, update total_cost
    mov rax, [ZipUpHoodiePrice]
    imul rax, rcx ; Multiply price by quantit
    add total_cost, rax
    jmp POLKASH

BuyGraphicHoodie:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx

    ; Add code to handle buying Graphic Hoodie, update total_cost
    mov rax, [GraphicHoodiePrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKASH

BuyFireArms:
polka:
    ; Display menu
    mov rdx, offset String15
    call WriteString
    MOV RAX,0 ;TO CLEAR RAX
    call crlf
    mov rdx, offset String1p
    call WriteString
    MOV RAX,0 ;TO CLEAR RAX
    call crlf
    mov rdx, offset String0
    call WriteString
    MOV RAX,0 ;TO CLEAR RAX
    call crlf

    mov rdx, offset String3h
    call WriteString
    MOV RAX,0 ;TO CLEAR RAX
    call crlf

    mov rdx, offset String4g
    call WriteString
    MOV RAX,0 ;TO CLEAR RAX
    call crlf

    mov rdx, offset String5
    call WriteString
    call crlf

    mov rdx, offset String6
    call WriteString
    call crlf
    mov rdx, offset String16
    call WriteString
    MOV RAX,0 ;TO CLEAR RAX
    call crlf

    

menuLoop:
    ; Read user input
    call ReadInt64
    mov choice, rax

    ; Check user choice
    cmp choice, 1
    je  confirmPurchase
    cmp choice, 2
    je  submenubowloop
    cmp choice, 3
    je  submenusuppliesloop 
    cmp choice, 4
    je exitProgram

    ; Display error message for invalid choice
    mov rdx, offset invalid_msg
    call WriteString
    jmp menuLoop

confirmPurchase:
    mov rdx, offset certificate_msg
    call WriteString
    call crlf

    ; Ask user to confirm purchase or indicate the need for a certificate
    mov rdx, offset confirm_purchase_msg
    call WriteString
    call crlf

    ; Read user input for confirmation
    call ReadInt64
    cmp rax, 1
    je  submenugunloop
    cmp rax, 2
    mov rdx, offset certificate_NO
    call WriteString
    call crlf
    jmp polka ; Go back to the main menu

submenugunloop:
    ; Display submenu options
    mov rdx, offset submenu_guns
    call WriteString
    call crlf

    ; Read user input for submenu options
    call ReadInt64
    cmp rax, 1
    je  purchaseDeagle
    cmp rax, 2
    je  purchaseM4A4
    cmp rax, 3
    je  purchaseM4A1s
    cmp rax, 4
    je  purchaseAK47
    cmp rax, 5
    je  purchaseAWP

    jmp submenugunloop

submenubowloop:
    ; Display submenu options
    mov rdx, offset StringBow
    call WriteString
    call crlf
    call ReadInt64
    cmp rax, 1
    je  purchaseBow1
    cmp rax, 2
    je  purchaseBow2
    cmp rax, 3
    je  purchaseBow3
    cmp rax, 4
    jmp submenubowloop

submenusuppliesloop:
    ; Display submenu options
    mov rdx, offset StringSupplysd
    call WriteString
    call crlf
    ; Display submenu options
    mov rdx, offset StringSupplysa
    call WriteString
    call crlf
    ; Display submenu options
    mov rdx, offset StringSupplysw
    call WriteString
    call crlf
    call ReadInt64
    cmp rax, 1
    je  purchaseSupply1
    cmp rax, 2
    je  purchaseSupply2
    cmp rax, 3
    je  purchaseSupply3
    cmp rax, 4
    je  purchaseSupply4
    cmp rax, 5
    je  purchaseSupply5
    cmp rax, 6
    je  purchaseSupply6
    cmp rax, 7
    je  purchaseSupply7
    cmp rax, 8
    je  purchaseSupply8
    cmp rax, 9
    je  purchaseSupply9
    cmp rax, 10
    jmp submenusuppliesloop

purchaseDeagle:
    ; Ask user for the quantity
    
    mov rdx, offset StringDeagle
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_deagle, rax
    ; Update total cost based on quantity
    imul rax, quantity_deagle, 5000
    add total_cost, rax
    jmp polka

purchaseM4A4:
    mov rdx, offset StringM4A4
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_m4a4, rax
    ; Update total cost based on quantity
    imul rax, quantity_m4a4, 6000
    add total_cost, rax
    jmp polka

purchaseM4A1s:
    mov rdx, offset StringM4A1s
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_m4a1s, rax
    ; Update total cost based on quantity
    imul rax, quantity_m4a1s, 5500
    add total_cost, rax
    jmp polka

purchaseAK47:
    mov rdx, offset StringAK47
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_ak47, rax
    ; Update total cost based on quantity
    imul rax, quantity_ak47, 6000
    add total_cost, rax
    jmp polka

purchaseAWP:
    mov rdx, offset StringAWP
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_awp, rax
    ; Update total cost based on quantity
    imul rax, quantity_awp, 10000
    add total_cost, rax
    jmp polka

purchaseBow1:
    mov rdx, offset StringBow1
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_bow1, rax
    ; Update total cost based on quantity
    imul rax, quantity_bow1, 300
    add total_cost, rax
    jmp polka

purchaseBow2:
    mov rdx, offset StringBow2
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_bow2, rax
    ; Update total cost based on quantity
    imul rax, quantity_bow2, 400
    add total_cost, rax
    jmp polka

purchaseBow3:
    mov rdx, offset StringBow3
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_bow3, rax
    ; Update total cost based on quantity
    imul rax, quantity_bow3, 350
    add total_cost, rax
    jmp polka

purchaseSupply1:
    mov rdx, offset StringSupply1
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_supply1, rax
    ; Update total cost based on quantity
    imul rax, quantity_supply1, 20
    add total_cost, rax
    jmp polka

purchaseSupply2:
    mov rdx, offset StringSupply2
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_supply2, rax
    ; Update total cost based on quantity
    imul rax, quantity_supply2, 30
    add total_cost, rax
    jmp polka

purchaseSupply3:
    mov rdx, offset StringSupply3
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_supply3, rax
    ; Update total cost based on quantity
    imul rax, quantity_supply3, 50
    add total_cost, rax
    jmp polka

purchaseSupply4:
    mov rdx, offset StringSupply4
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_supply4, rax
    ; Update total cost based on quantity
    imul rax, quantity_supply4, 40
    add total_cost, rax
    jmp polka

purchaseSupply5:
    mov rdx, offset StringSupply5
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_supply5, rax
    ; Update total cost based on quantity
    imul rax, quantity_supply5, 40
    add total_cost, rax
    jmp polka

purchaseSupply6:
    mov rdx, offset StringSupply6
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_supply6, rax
    ; Update total cost based on quantity
    imul rax, quantity_supply6, 80
    add total_cost, rax
    jmp polka

purchaseSupply7:
    mov rdx, offset StringSupply7
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_supply7, rax
    ; Update total cost based on quantity
    imul rax, quantity_supply7, 25
    add total_cost, rax
    jmp polka

purchaseSupply8:
    mov rdx, offset StringSupply8
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_supply8, rax
    ; Update total cost based on quantity
    imul rax, quantity_supply8, 30
    add total_cost, rax
    jmp polka

purchaseSupply9:
    mov rdx, offset StringSupply9
    call WriteString
    call crlf
    mov rdx, offset String_quantity
    call WriteString
    call crlf
    call ReadInt64
    mov quantity_supply9, rax
    ; Update total cost based on quantity
    imul rax, quantity_supply9, 60
    add total_cost, rax
    jmp polka

BuyMobiles:
POLKISH:
    mov rdx, offset Mobile
    call WriteString
    call Crlf
    mov rdx, offset Option16a
    call WriteString
    call Crlf
    mov rdx, offset Option11
    call WriteString
    call Crlf
    mov rdx, offset Option12
    call WriteString
    call Crlf
    mov rdx, offset Option13
    call WriteString
    call Crlf
    mov rdx, offset Option14
    call WriteString
    call Crlf
    mov rdx, offset Option15
    call WriteString
    call Crlf
    mov rdx, offset Option16
    call WriteString
    call Crlf
    mov rdx, offset Option16b
    call WriteString
    call Crlf
     mov rdx, offset Option16c
    call WriteString
    call Crlf
     mov rdx, offset Option16d
    call WriteString
    call Crlf

    ; Get user choice
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice
    cmp rax, 1
    je  BuyIphone
    cmp rax, 2
    je  BuySamsung
    cmp rax, 3
    je  BuyOnePlus
    cmp rax, 4
    je  BuyHuawei
    cmp rax, 5
    je  BuyInfinix
    cmp rax, 6
    je  BuyRealme

    jmp ExitProgram

BuyIphone:
    mov rdx, offset String111
    call WriteString
    call Crlf
    mov rdx, offset String112
    call WriteString
    call Crlf
    mov rdx, offset String113
    call WriteString
    call Crlf
    mov rdx, offset String114
    call WriteString
    call Crlf
    mov rdx, offset String115
    call WriteString
    call Crlf

    ; Get user choice
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice
    cmp rax, 1
    je  BuyIphone11
    cmp rax, 2
    je  BuyIphone12
    cmp rax, 3
    je  BuyIphone13
    cmp rax, 4
    je  BuyIphone14
    cmp rax, 5
    je  BuyIphone15

    jmp ExitProgram

BuyIphone11:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [Iphone11ProPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyIphone12:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [Iphone12ProPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyIphone13:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [Iphone13ProPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyIphone14:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [Iphone14ProPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyIphone15:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [Iphone15ProPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH



BuySamsung:
  
    mov rdx, offset String116
    call WriteString
    call Crlf
    mov rdx, offset String117
    call WriteString
    call Crlf
    mov rdx, offset String118
    call WriteString
    call Crlf
    mov rdx, offset String119
    call WriteString
    call Crlf
    mov rdx, offset String120
    call WriteString
    call Crlf

    ; Get user choice
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice
    cmp rax, 1
    je  BuySamsungGalaxyZFlip5
    cmp rax, 2
    je  BuySamsungGalaxyA05s
    cmp rax, 3
    je  BuySamsungS23Ultra
    cmp rax, 4
    je  BuySamsungGalaxyA545G
    cmp rax, 4
    je  BuySamsungGalaxyA14

    jmp ExitProgram

BuySamsungGalaxyZFlip5:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [SamsungGalaxyZFlip5Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH

BuySamsungGalaxyA05s:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [SamsungGalaxyA05sPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuySamsungS23Ultra:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [SamsungS23UltraPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuySamsungGalaxyA545G:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [SamsungGalaxyA545GPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuySamsungGalaxyA14:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [SamsungGalaxyA14Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH



BuyOnePlus:
    
    mov rdx, offset String211
    call WriteString
    call Crlf
    mov rdx, offset String212
    call WriteString
    call Crlf
    mov rdx, offset String213
    call WriteString
    call Crlf
    mov rdx, offset String214
    call WriteString
    call Crlf
    mov rdx, offset String215
    call WriteString
    call Crlf

    ; Get user choice
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice
    cmp rax, 1
    je  BuyOnePlus11
    cmp rax, 2
    je  BuyOnePlus10Pro
    cmp rax, 3
    je  BuyOnePlus10T
    cmp rax, 4
    je  BuyOnePlusNord2
    cmp rax, 4
    je  BuyOnePlusNordN30

    jmp ExitProgram


BuyOnePlus11:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [OnePlus11Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH

BuyOnePlus10Pro:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [OnePlus10ProPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyOnePlus10T:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [OnePlus10TPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyOnePlusNord2:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [OnePlusNord2Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyOnePlusNordN30:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [OnePlusNordN30Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH

BuyHuawei:
    
    mov rdx, offset String316
    call WriteString
    call Crlf
    mov rdx, offset String317
    call WriteString
    call Crlf
    mov rdx, offset String318
    call WriteString
    call Crlf
    mov rdx, offset String319
    call WriteString
    call Crlf
    mov rdx, offset String320
    call WriteString
    call Crlf

    ; Get user choice
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice
    cmp rax, 1
    je  BuyHuaweiNovaY70
    cmp rax, 2
    je  BuyHuaweiP50
    cmp rax, 3
    je  BuyHuaweiMateX5
    cmp rax, 4
    je  BuyHuaweiNova11
    cmp rax, 5
    je  BuyHuaweiP60Pro

    jmp ExitProgram
   

BuyHuaweiNovaY70:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [HuaweiNovaY70Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH

BuyHuaweiP50:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [HuaweiP50Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyHuaweiMateX5:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [HuaweiMateX5Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyHuaweiNova11:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [HuaweiNova11Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyHuaweiP60Pro:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [HuaweiP60ProPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH

BuyInfinix:
    
    mov rdx, offset String421
    call WriteString
    call Crlf
    mov rdx, offset String422
    call WriteString
    call Crlf
    mov rdx, offset String423
    call WriteString
    call Crlf
    mov rdx, offset String424
    call WriteString
    call Crlf
    mov rdx, offset String425
    call WriteString
    call Crlf

    ; Get user choice
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice
    cmp rax, 1
    je  BuyInfinixNote11Vip
    cmp rax, 2
    je  BuyInfinixZero5G
    cmp rax, 3
    je  BuyInfinixHot12
    cmp rax, 4
    je  BuyInfinixZero20
    cmp rax, 5
    je  BuyInfinixNote12G96

    jmp ExitProgram
  

BuyInfinixNote11Vip:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [InfinixNote11VipPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH

BuyInfinixZero5G:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [InfinixZero5GPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyInfinixHot12:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [InfinixHot12Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyInfinixZero20:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [InfinixZero20Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyInfinixNote12G96:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [InfinixNote12G96Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH

BuyRealme:
    
    mov rdx, offset String526
    call WriteString
    call Crlf
    mov rdx, offset String527
    call WriteString
    call Crlf
    mov rdx, offset String528
    call WriteString
    call Crlf
    mov rdx, offset String529
    call WriteString
    call Crlf
    mov rdx, offset String530
    call WriteString
    call Crlf

    ; Get user choice
    mov rdx, offset ChoicePrompt
    call WriteString
    call Crlf
    mov rax, 0
    call ReadInt64

    ; Process user choice
    cmp rax, 1
    je  BuyRealmeC53
    cmp rax, 2
    je  BuyRealmeC51
    cmp rax, 3
    je  BuyRealme9Pro
    cmp rax, 4
    je  BuyRealmeC67
    cmp rax, 5
    je  BuyRealmeC33

    jmp ExitProgram


BuyRealmeC53:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [RealmeC53Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH

BuyRealmeC51:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [RealmeC51Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyRealme9Pro:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [Realme9ProPrice]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyRealmeC67:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [RealmeC67Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    jmp POLKISH


BuyRealmeC33:
    ; Get quantity
    mov rdx, offset QuantityPrompt
    call WriteString
    mov rax, 0
    call ReadInt64
    mov rcx, rax ; Store quantity in rcx
    
    ; Add code to handle buying a shirt, update total_cost
    mov rax, [RealmeC33Price]
    imul rax, rcx ; Multiply price by quantity
    add total_cost, rax
    

    jmp POLKISH

ExitProgram:
    mov rdx, offset exit_msg
    call WriteString
    call crlf
    ; Display total cost
    mov rdx, offset StringTotalCostMsg
    call WriteString
    mov rax, total_cost
    call WriteInt64 ; Display the total cost
    call crlf
    call ExitProcess
main endp
end
