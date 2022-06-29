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

public class DoctorVO {
	private int doc_cnt;
	private String doc_date;
	private String hos_name;
	private String doc_name;
	@NonNull
	private String doc_id;
	@NonNull
	private String doc_pw;

}
