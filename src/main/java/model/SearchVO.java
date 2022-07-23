package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor

public class SearchVO {
	private int p_seq;
	@NonNull
	private String doc_id;
	private String p_date;
	@NonNull
	private String p_name;
	private String p_birth;
	private String p_gender;

}
