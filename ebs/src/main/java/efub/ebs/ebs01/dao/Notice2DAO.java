package efub.ebs.ebs01.dao;


import efub.ebs.ebs01.dto.Notice2DTO;

import java.util.List;

public interface Notice2DAO {
    List<Notice2DTO> selectNotice(Notice2DTO param) throws Exception;
    Notice2DTO selectNoticeById(int noticeId) throws Exception;
}
