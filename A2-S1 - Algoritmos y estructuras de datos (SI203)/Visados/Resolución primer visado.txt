import tp03.ColaGenerica;

public class BuscadorArbol{
  
  private ArbolBinario<Integer> arbol;
  
  public Integer buscar(){
	ColaGenerica<ArbolBinario<Integer>> cola;
	ArbolBinario<Integer> elementoActual;

	cola.encolar(arbol);

	while(!cola.esVacio()){
		elementoActual = cola.desencolar();

		if(esPrimo(elementoActual.getDatoRaiz())){
			return elementoActual.getDatoRaiz();
		}

		if(!elementoActual.getArbolIzquierdo().esVacio()){
			cola.encolar(elementoActual.getArbolIzquierdo());
		}

		if(!elementoActual.getArbolDerecho().esVacio()){
			cola.encolar(elementoActual.getArbolDerecho());
		}
	}

	return null; 
  }
  
}