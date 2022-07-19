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
	@NonNull
	private String doc_id;
	@NonNull
	private String doc_pw;
	private String doc_name;
	private String doc_hospital;
	private String doc_date;
	private String mem_type;

}
