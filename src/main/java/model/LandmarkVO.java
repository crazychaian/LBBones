package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LandmarkVO {
	
	private int xr_cnt;
	private String lm_name;
	private int l_t_lm_x;
	private int l_t_lm_y;
	private int l_m_lm_x;
	private int l_m_lm_y;
	private int l_b_lm_x;
	private int l_b_lm_y;
	private int r_t_lm_x;
	private int r_t_lm_y;
	private int r_m_lm_x;
	private int r_m_lm_y;
	private int r_b_lm_x;
	private int r_b_lm_y;

}
