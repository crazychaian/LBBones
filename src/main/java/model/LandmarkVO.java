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
	private Float l_femur_len;       
	private Float l_tibia_len;      
	private Float l_total_len;     
	private Float r_femur_len;     
	private Float r_tibia_len;      
	private Float r_total_len;      
	private Float lr_femur_gap;      
	private Float lr_tibia_gap;      
	private Float lr_total_gap;      
	private String landmark_date;    

}


