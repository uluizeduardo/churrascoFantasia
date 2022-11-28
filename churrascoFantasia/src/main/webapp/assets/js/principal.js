window.onload = function(){

	const checkbox = document.querySelectorAll('#checkbox')
	const checkCarnes = document.querySelector('[data-carnes]')
	const checkOutros = document.querySelector('[data-outros]')
	const checkQuentes = document.querySelector('[data-quentes]')
	const checkgeladas = document.querySelector('[data-geladas]')	

	checkbox.forEach((cadaInput) => {
		cadaInput.addEventListener('change', () => {
			
			let nomeCheck = cadaInput.getAttribute('name');
			let select1= document.getElementById('select1');
			let select2 = document.getElementById('select2');
			let alert1 = document.getElementById('alert1');
			let alert2 = document.getElementById("alert2");
			
			if(nomeCheck === "carnes" || nomeCheck === "outros"){
				if(nomeCheck === "carnes"){
					if(checkCarnes.checked){
						checkOutros.checked = false
						select1.innerHTML= '<option value="1">Picanha</option> <option value="2">Maminha</option> <option value="3">Alcatra</option> <option value="3">linguiças</option> <option value="3">Asinha de frango</option>'
						alert1.setAttribute("hidden", true)
					}else{
						alert1.removeAttribute("hidden");
					}
				}else if(nomeCheck === "outros"){
					if(checkOutros.checked){
						checkCarnes.checked = false
						select1.innerHTML = '<option value="1">Pão de alho</option> <option value="2">Carvão</option> <option value="3">Vinagrete</option> <option value="3">Farofa</option> <option value="3">Queijo coalho</option> <option value="3">Gelo</option>'
						alert1.setAttribute("hidden", true)
					}else{
						alert1.removeAttribute("hidden");
					}				
				}
				
			}else if(nomeCheck === "quentes" || nomeCheck === "geladas"){
				if(nomeCheck === "quentes"){
					if(checkQuentes.checked){
						checkgeladas.checked = false
						select2.innerHTML = '<option value="1">Cerveja</option> <option value="2">Refrigerante</option> <option value="3">Vinho</option> <option value="3">Drinks e coquetéis</option> <option value="3">Suco</option>'
						alert2.setAttribute("hidden", true)
					}else{
						alert2.removeAttribute("hidden");
					}		
				}else if(nomeCheck === "geladas"){
					if(checkgeladas.checked){
						checkQuentes.checked = false
						select2.innerHTML = '<option name="quentes" id="quentes" value="3">Whisky</option> <option value="3">Cachaça</option> <option value="3">Caipirinha</option> <option value="3">Vodka</option>'
						alert2.setAttribute("hidden", true)
					}else{
						alert2.removeAttribute("hidden");
					}	
				}
			}else{
				alert1.hidden;
			}
		})
	})
}