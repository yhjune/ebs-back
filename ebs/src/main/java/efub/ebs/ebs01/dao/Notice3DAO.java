package efub.ebs.ebs01.dao;
import efub.ebs.ebs01.dto.Notice3DTO;

import java.util.List;

public interface Notice3DAO {
    List<Notice3DTO> selectNotice(Notice3DTO param) throws Exception;
    Notice3DTO selectNoticeById(int noticeId) throws Exception;
}
