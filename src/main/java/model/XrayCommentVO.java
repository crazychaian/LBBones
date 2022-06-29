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
public class XrayCommentVO {

	private int xr_com_cnt;
	private String xr_com_date;
	@NonNull
	private int xr_cnt;
	private String xr_com;

}
