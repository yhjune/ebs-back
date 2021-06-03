package efub.ebs.ebs01.dao;

import efub.ebs.ebs01.dto.NoticeDTO;

import java.util.List;

public interface NoticeDAO {
    List<NoticeDTO> selectNotice(NoticeDTO param) throws Exception;
    NoticeDTO selectNoticeById(int noticeId) throws Exception;


}
