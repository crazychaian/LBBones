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
public class CustomerVO {
	@NonNull
	private int cus_cnt;
	private int doc_cnt;
	private String cus_date;
	@NonNull
	private String cus_name;
	@NonNull
	private String cus_birth;
	@NonNull
	private String cus_mw;

}
