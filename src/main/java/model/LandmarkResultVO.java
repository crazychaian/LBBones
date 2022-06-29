package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LandmarkResultVO {

	private int xr_cnt;
	private int l_femur_len;
	private int l_tibia_len;
	private int l_total_len;
	private int r_femur_len;
	private int r_tibia_len;
	private int r_total_len;
	private int lr_femur_gap;
	private int lr_tibia_gap;
	private int lr_total_gap;

}
