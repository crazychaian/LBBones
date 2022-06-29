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
	
	private int xr_cnt;
	@NonNull
	private int doc_cnt;
	private String xr_date;
	@NonNull
	private int cus_cnt;
	private String xr_name;

}
