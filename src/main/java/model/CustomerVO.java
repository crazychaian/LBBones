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
	private int p_seq;
	private String doc_id;
	private String p_date;
	@NonNull
	private String p_name;
	@NonNull
	private String p_birth;
	@NonNull
	private String p_gender;

}
