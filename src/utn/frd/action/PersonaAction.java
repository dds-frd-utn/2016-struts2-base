package utn.frd.action;

import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import utn.frd.bean.Persona;
import utn.frd.db.PersistentManager;

public class PersonaAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String name;
	private String age;
	private String gender;
	private List<Persona> personas;
	private Boolean editbool = true;
	private int editid;
		
	public int getEditid() {
		return editid;
	}

	public void setEditid(int editid) {
		this.editid = editid;
	}

	public Boolean getEditbool() {
		return editbool;
	}

	public void setEditbool(Boolean editbool) {
		this.editbool = editbool;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public List<Persona> getPersonas() {
		return personas;
	}

	public void setPersonas(List<Persona> personas) {
		this.personas = personas;
	}

	public String execute(){
		personas = PersistentManager.getInstance();
		return SUCCESS;
	}

	public String save(){
		personas = PersistentManager.getInstance();
		int edad = 0;
		
		try{
			edad = Integer.parseInt(age);
		}catch(Exception e){
			addActionError("Ocurrio un error con la edad");
			return ERROR;
		}
		
		Persona p = new Persona(personas.size(), name, edad, gender);
		
		editbool = true;
		personas.add(p);
		return SUCCESS;
	}
	
	public String modoedit(){
		personas = PersistentManager.getInstance();
		editbool = false;
		return SUCCESS;
	}
	
}
