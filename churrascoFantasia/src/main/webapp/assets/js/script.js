function mascara(inputCpf){
   
   var numerosDigitados = inputCpf.value;
   
   if(isNaN(numerosDigitados[numerosDigitados.length-1])){ // impede entrar outro caractere que não seja número
      inputCpf.value = numerosDigitados.substring(0, numerosDigitados.length-1);
      return;
   }
   
   inputCpf.setAttribute("maxlength", "14");
   if (numerosDigitados.length == 3 || numerosDigitados.length == 7) inputCpf.value += ".";
   if (numerosDigitados.length == 11) inputCpf.value += "-";

}