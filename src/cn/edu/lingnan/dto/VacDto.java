package cn.edu.lingnan.dto;

/**
 * 对疫苗表vac进行信息传输
 */
public class VacDto {
    private int vac_id;
    private String vac_area;//add
    private String vac_name;
    private String vac_type;//add
    private int isdelete;

    public int getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(int isdelete) {
        this.isdelete = isdelete;
    }

    public String getVac_area() {
        return vac_area;
    }

    public void setVac_area(String vac_area) {
        this.vac_area = vac_area;
    }

    public String getVac_type() {
        return vac_type;
    }

    public void setVac_type(String vac_type) {
        this.vac_type = vac_type;
    }


    public int getVac_id() {
        return vac_id;
    }

    public void setVac_id(int vac_id) {
        this.vac_id = vac_id;
    }


    public String getVac_name() {
        return vac_name;
    }

    public void setVac_name(String vac_name) {
        this.vac_name = vac_name;
    }
}
