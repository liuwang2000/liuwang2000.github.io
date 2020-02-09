<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>printReceipt</title>
    <script>
        var sum=0;
        var list='';
        function printReceipt(cartItems){
            print(allSubTotal(mergeItems(cartItems)));
        }
        function mergeItems(cartItems){
            var itemList=[];
            for(let i=0;i<cartItems.length;i++)
            {
                if(itemList.length===0)
                {
                    cartItems[i].count=1;
                    itemList.push(cartItems[i]);
                }
                else {
                    for (let j = 0; j < itemList.length; j++) {
                        if (cartItems[i].barcode === itemList[j].barcode) {
                            itemList[j].count++;
                        }
                        else if(j==itemList.length-1){
                            itemList.push(cartItems[i]);
                            cartItems[i].count=0;
                        }
                    }
                }
            }
           return itemList;
        }
        function allSubTotal(itemList){
            for(let i=0;i<itemList.length;i++)
            {
                itemList[i].subTotal=itemList[i].count*itemList[i].price;
                sum+=itemList[i].subTotal;
            }
            return itemList;
        }
        function print(itemList){
            for(let i=0;i< itemList.length;i++) {
                list = list + '\n' + '名称:' + itemList[i].name + ',' + '数量:' + itemList[i].count + itemList[i].unit + ',' + '单价:' + itemList[i].price + '.00(元)' + ',' + '小计:' + itemList[i].subTotal + '.00(元)';
            }
            list=list+'\n'+'********************************************************'+'\n'+'总计:'+sum+'.00(元)'+'\n';
            console.log(list);
        }
        let cartItems=[
                {
                    barcode:"Item00001",
                    name:"可口可乐",
                    unit:'瓶',
                    price:'3.00'
                },
                {
                    barcode:"Item00001",
                    name:"可口可乐",
                    unit:'瓶',
                    price:'3.00'
                },
                {
                    barcode:"Item00001",
                    name:"可口可乐",
                    unit:'瓶',
                    price:'3.00'
                },
                {
                    barcode:"Item00002",
                    name:"酸奶",
                    unit:'杯',
                    price:'3.00'
                },
        ];
        printReceipt(cartItems);
    </script>
</head>
<body>

</body>
</html>