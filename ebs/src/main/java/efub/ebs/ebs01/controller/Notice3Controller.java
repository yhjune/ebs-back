package efub.ebs.ebs01.controller;

import efub.ebs.ebs01.dao.Notice3DAO;
import efub.ebs.ebs01.dto.Notice3DTO;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@MapperScan(basePackages="efub.ebs.ebs01.dao") //탐색할 패키지 설정
public class Notice3Controller {

    @Autowired
    private Notice3DAO notice3DAO;

    @GetMapping("/notice3")
    public List<Notice3DTO> getNoticeList() throws Exception {
        final Notice3DTO param = new Notice3DTO(0, null, null);
        final List<Notice3DTO> noticeList = notice3DAO.selectNotice(param);// 윗줄에서 생성한 객체를 파라미터로 전달하여 DB로부터 사용자 목록을 불러온다.
        return noticeList;
    }
    @GetMapping("/notice3/{noticeId}")
    public Notice3DTO getNoticeById(@PathVariable("noticeId") int noticeId) throws Exception{
        return notice3DAO.selectNoticeById(noticeId);
    }

}