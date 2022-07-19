package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LandmarkVO {
	
	private int landmark_seq;
	private int xray_seq;
	private int l_top_x;
	private int l_top_y;
	private int l_mid_x;
	private int l_mid_y;
	private int l_bot_x;
	private int l_bot_y;
	private int r_top_x;      
	private int r_top_y;   
	private int r_mid_x;
	private int r_mid_y;      
	private int r_bot_x;         
	private int r_bot_y;         
	private int l_femur_len;       
	private int l_tibia_len;      
	private int l_total_len;     
	private int r_femur_len;     
	private int r_tibia_len;      
	private int r_total_len;      
	private int lr_femur_gap;      
	private int lr_tibia_gap;      
	private int lr_total_gap;      
	private String landmark_date;    

}


