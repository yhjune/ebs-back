package efub.ebs.ebs01.controller;


import efub.ebs.ebs01.dao.NoticeDAO;
import efub.ebs.ebs01.dto.NoticeDTO;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@MapperScan(basePackages="efub.ebs.ebs01.dao") //탐색할 패키지 설정
public class NoticeController {
    @Autowired
    private NoticeDAO noticeDAO;

    //1
    @GetMapping("/notice1")
    public List<NoticeDTO> getNoticeList() throws Exception {
        final NoticeDTO param = new NoticeDTO(0, null, null);
        final List<NoticeDTO> noticeList = noticeDAO.selectNotice(param);// 윗줄에서 생성한 객체를 파라미터로 전달하여 DB로부터 사용자 목록을 불러온다.
        return noticeList;
    }
    @GetMapping("/notice1/{noticeId}")
    public NoticeDTO getNoticeById(@PathVariable("noticeId") int noticeId) throws Exception{
        return noticeDAO.selectNoticeById(noticeId);
    }


    /*
    //3
    @GetMapping("/notice3")
    public List<NoticeDTO> getNoticeList() throws Exception {
        final NoticeDTO param = new NoticeDTO(0, null, null);
        final List<NoticeDTO> noticeList = noticeDAO.selectNotice(param);// 윗줄에서 생성한 객체를 파라미터로 전달하여 DB로부터 사용자 목록을 불러온다.
        return noticeList;
    }
    @GetMapping("/notice3/{noticeId}")
    public NoticeDTO getNoticeById(@PathVariable("noticeId") int noticeId) throws Exception{
        return noticeDAO.selectNoticeById(noticeId);
    }*/



}
