package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class XrayVO {
	
	private int xray_seq;
	@NonNull
	private int p_seq;
	private String xray_img;
	private String xray_date;
	

}