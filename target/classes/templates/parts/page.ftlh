<#macro page>
<!DOCTYPE HTML>
<html>
<head>
    <title>Konnov980161</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <style type="text/css">
        body, html{
            height: 100%;
            width: 100%;
            margin: 0;
            background-color: #171717; /* Цвет фона веб-страницы */
        }
        .center{
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -100px 0 0 -100px;
        }
        .tooltip {
        color: red;
                    font-size: 24px;
                    font-weight: bold;
                    font-family: "Courier New", monospace;
          position: relative;
          display: inline-block;
          border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
        }

        /* Tooltip text */
        .tooltip .tooltiptext {
          visibility: hidden;
          width: 350px;
          background-color: black;
          color: #fff;
          text-align: center;
          padding: 5px 0;
          border-radius: 6px;
          font-size: 14px;
          /* Position the tooltip text - see examples below! */
          position: absolute;
          z-index: 1;
        }

        /* Show the tooltip text when you mouse over the tooltip container */
        .tooltip:hover .tooltiptext {
          visibility: visible;
        }
        h1 {
          color: white;
          font-size: 40px;
          font-weight: bold;
          font-family: "Courier New", monospace;
        }
        h2 {
          color: white;
          font-family: "Courier New", monospace;
        }
        h3 {
          color: white;
          font-size: 24px;
          font-weight: bold;
          font-family: "Courier New", monospace;
        }
        label {
          color: white;
          text-align:left;
          font-size: 24px;
          font-weight: bold;
          font-family: "Courier New", monospace;
        }
        table {
            background-color: #ffffff;
            -moz-border-radius:8px;
            -webkit-border-radius:8px;
            border-radius:8px;
            padding: 8px;
            font-family: "Courier New", monospace;
        }
        input[type=submit] {
          background-color: #4c8bf5;
          color: white;
          border-radius: 4px;
          cursor: pointer;
          padding: 16px;
          font-size: 20px;
          font-weight: bold;
          font-family: "Courier New", monospace;
        }
        button[type=submit] {
          background-color: #4c8bf5;
          color: white;
          border-radius: 4px;
          cursor: pointer;
          padding: 16px;
          font-size: 20px;
          font-weight: bold;
          font-family: "Courier New", monospace;
        }
        input[type=text] {
          background-color: white;
          color: black;
          border-radius: 4px;
          padding: 16px;
          font-size: 16px;
          font-weight: bold;
          font-family: "Courier New", monospace;
        }
        input[type=password] {
           background-color: white;
           color: black;
           border-radius: 4px;
           padding: 16px;
           font-size: 16px;
           font-weight: bold;
           font-family: "Courier New", monospace;
        }
        input[type=submit]:hover {
          background-color: #d1d1d1;
          font-family: "Courier New", monospace;
        }
        button[type=submit]:hover {
          background-color: #d1d1d1;
          font-family: "Courier New", monospace;
        }
        td {
          border: 1px solid black;
          padding: 8px;
          font-weight: bold;
          font-family: "Courier New", monospace;
        }
        th{
          padding: 8px;
          font-weight: bold;
          font-family: "Courier New", monospace;
        }
    </style>
</head>
<div align="center">

<#nested>

</div>
<body onload="loadData()">
<script type="text/javascript">
        function getResult(stavka, months){
           var res = ((Math.pow(1 + ((stavka / 100) / months), months)) - 1) * 100;
           return res.toFixed(2);
        }

        function loadData(){
        var stavki = [<#list stavka as s>${s.stavka},</#list>];
        var months = [<#list stavka as s>${s.months},</#list>];

        var table = document.getElementById('table1');
        var tr = document.createElement('tr');

        var th1 = document.createElement('th');
        var th2 = document.createElement('th');
        var th3 = document.createElement('th');

        var text_1 = document.createTextNode('Начальная ставка');
        var text_2 = document.createTextNode('Месяцы');
        var text_3 = document.createTextNode('Эффект.проц.ставка(%)');

        th1.appendChild(text_1);
        th2.appendChild(text_2);
        th3.appendChild(text_3);
        tr.appendChild(th1);
        tr.appendChild(th2);
        tr.appendChild(th3);

        table.appendChild(tr);

        for(let i=0; i < months.length; i++){
            var num1 = stavki[i];
            var num2 = months[i];
            var tr = document.createElement('tr');

            var td_1 = document.createElement('td');
            var td_2 = document.createElement('td');
            var td_3 = document.createElement('td');
            var tdSpan = document.createElement('span');
            var newSpan = document.createElement('span');
            tdSpan.classList.add("tooltip");
            newSpan.classList.add("tooltiptext");

            var text_1 = document.createTextNode(num1);
            var text_2 = document.createTextNode(num2);
            var text_3 = document.createTextNode(getResult(num1, num2));

            newSpan.appendChild(document.createTextNode('(1 + ' + (num1 / 100).toFixed(4) + '/' + num2 + ')^' + num2 + '-1 = ' + (getResult(num1, num2) / 100).toFixed(4) + " => " + getResult(num1, num2) + '%'));
            tdSpan.appendChild(text_3);
            tdSpan.appendChild(newSpan);
            td_1.appendChild(text_1);
            td_2.appendChild(text_2);
            td_3.appendChild(tdSpan);
            tr.appendChild(td_1);
            tr.appendChild(td_2);
            tr.appendChild(td_3);

            table.appendChild(tr);
        }
        }


        console.log(getResult(5,12));
    </script>
</body>
</html>
</#macro>