package utn.frd.db;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

import utn.frd.bean.Persona;

public class PersistentManager {

	private static CopyOnWriteArrayList<Persona> data = new CopyOnWriteArrayList<Persona>();
	
	public static List<Persona> getInstance(){
		return data;
	}

}
