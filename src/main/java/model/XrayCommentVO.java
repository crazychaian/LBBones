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

	private int cmt_seq;
	@NonNull
	private int xray_seq;
	private String doc_id;
	private String cmt_content;
	private String cmt_date;

}
