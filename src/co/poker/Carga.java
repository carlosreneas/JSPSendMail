package co.poker.utilidad;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;

public class Carga <T> {
	
	private Class<T> c;
	
	public Carga(Class<T> c) {
		this.c = c;
	}
	
	public Carga() {
		super();
		// TODO Auto-generated constructor stub
	}

	public T cargarObjeto(HttpServletRequest request) {
		System.out.println("Entramos aca");
		T object = null;
		
		Field properties[] = this.c.getDeclaredFields();
		System.out.println(properties.length);
        for (int i = 0; i < properties.length; i++) {
            Field field = properties[i];
            
            String valor = request.getParameter(field.getName());
            
            String atributo = field.getName();
            		
            		;
            Method metodo;
			try {
				
				System.out.println("set"+Character.toUpperCase(atributo.charAt(0)) + atributo.substring(1,atributo.length()));
				metodo = this.c.getMethod("set"+Character.toUpperCase(atributo.charAt(0)) + atributo.substring(1,atributo.length()), String.class);
				metodo.invoke(object, 100); 
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 

            
            
            System.out.println(field.getName() +" > "+field.getType());
        }
		
        
		
		return object;
	}
}
