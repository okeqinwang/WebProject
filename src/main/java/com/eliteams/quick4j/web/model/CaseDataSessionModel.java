package com.eliteams.quick4j.web.model;

import java.io.Serializable;
import java.util.List;

public class CaseDataSessionModel  implements Serializable{
	
	private static final long serialVersionUID = -8485929725631155334L;
	private BasicInfoModel basic;
	private List<AreaModel> arealist;
	private SceneModel scene;
	
	public CaseDataSessionModel() {
		super();
	}

	public CaseDataSessionModel(BasicInfoModel basic, List<AreaModel> arealist,
			SceneModel scene) {
		super();
		this.basic = basic;
		this.arealist = arealist;
		this.scene = scene;
	}


	public BasicInfoModel getBasic() {
		return basic;
	}

	public void setBasic(BasicInfoModel basic) {
		this.basic = basic;
	}

	public List<AreaModel> getArealist() {
		return arealist;
	}

	public void setArealist(List<AreaModel> arealist) {
		this.arealist = arealist;
	}

	public SceneModel getScene() {
		return scene;
	}

	public void setScene(SceneModel scene) {
		this.scene = scene;
	}

	@Override
	public String toString() {
		return "CaseDataSessionModel [basic=" + basic + ", arealist="
				+ arealist + ", scene=" + scene + "]";
	}

}
