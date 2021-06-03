package efub.ebs.ebs01.controller;

import efub.ebs.ebs01.dao.Notice2DAO;
import efub.ebs.ebs01.dto.Notice2DTO;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@MapperScan(basePackages="efub.ebs.ebs01.dao") //탐색할 패키지 설정
public class Notice2Controller {

    @Autowired
    private Notice2DAO notice2DAO;

    @GetMapping("/notice2")
    public List<Notice2DTO> getNoticeList() throws Exception {
        final Notice2DTO param = new Notice2DTO(0, null, null);
        final List<Notice2DTO> noticeList = notice2DAO.selectNotice(param);// 윗줄에서 생성한 객체를 파라미터로 전달하여 DB로부터 사용자 목록을 불러온다.
        return noticeList;
    }
    @GetMapping("/notice2/{noticeId}")
    public Notice2DTO getNoticeById(@PathVariable("noticeId") int noticeId) throws Exception{
        return notice2DAO.selectNoticeById(noticeId);
    }

}
