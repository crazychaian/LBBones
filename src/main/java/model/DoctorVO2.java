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

public class DoctorVO2 {
	
	@NonNull
	private String doc_id;
	@NonNull
	private String doc_pw;
	@NonNull
	private String doc_name;
	@NonNull
	private String doc_hospital;
	private String doc_date;
	private String mem_type;

}
