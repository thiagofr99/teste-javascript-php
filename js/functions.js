//1 

document.getElementById("p1").innerHTML = '';

function embaralhar(){
    var varReply = [];
    var var1 = '';
    var var2 = '';
    var1 = document.getElementById('valor1').value;
    var2 = document.getElementById('valor2').value;
    
    texto1 = var1.split('');

    texto2 = var2.split('');

    if(texto1.length<=texto2.length){
        for(var i = 0; i< texto2.length; i++){
            varReply.push(texto1.at(i))
            varReply.push(texto2.at(i))

        }
    } else {
        for(var i = 0; i< texto1.length; i++){
            varReply.push(texto1.at(i))
            varReply.push(texto2.at(i))

        }
    }
 
    return document.getElementById("p1").innerHTML = varReply.join('');
}

//2

function recuperarPalavra(){
    return document.getElementById('valor3').value;
}


var invertida = '';
function inverter(palavra){
    if(palavra==null || palavra==''){
        return alert("Preencher o campo para inverter.");
    }
    var converter = palavra.split('');

    invertida += converter.pop();

    if(converter.length>0){
        inverter(converter.join(''))
    } else {
        var final = invertida;
        invertida = '';
        return document.getElementById("p2").innerHTML = final;        
    }    
    
}

//3


function recuperarPalavra2(){
    return document.getElementById('valor4').value;
}


const palavras = new Map();
function contaOcorrencias(palavra){

    if(palavras.get(palavra) === undefined){
        palavras.set(palavra,1)
    } else {
        palavras.set(palavra, palavras.get(palavra)+1)
    }

    document.getElementById("valor4").value = '';

    return document.getElementById("p3").innerHTML = JSON.stringify(Object.fromEntries(palavras));

}

//4



function verificaInterseccao(){
    var dateOne = document.querySelector('#data1').value;
    var dateTwo = document.querySelector('#data2').value;
    var dateThree = document.querySelector('#data3').value;
    var dateFour = document.querySelector('#data4').value;

    dateOne = new Date(dateOne);
    dateTwo = new Date(dateTwo);
    dateThree = new Date(dateThree);
    dateFour = new Date(dateFour);
    
    if(dateOne<=dateTwo &&
        dateTwo<=dateThree &&
            dateThree<=dateFour){
                return document.getElementById("p4").innerHTML = false;
    } else {
        
        return document.getElementById("p4").innerHTML = true;
    }


}

function fazGet(url){
    let request = new XMLHttpRequest()
    request.open("GET", url, false)
    request.send()
    return request.responseText
}






function exibirResultado(){

    var nome = document.querySelector('#v1').value;
    var recurso = document.querySelector('#v2').value;
    var uf = document.querySelector('#v3').value;


    var urlEditada = "http://devthiagofurtado.com/teste-salutis/php/consulta-simply.php?nome="+nome+"&uf="+uf+"&recurso="+recurso+"";

    data = fazGet(urlEditada);
    valor = JSON.parse(data);

    valor.forEach(v=>{
        return document.getElementById("p5").innerHTML = v.SOMA; 
    })
}
