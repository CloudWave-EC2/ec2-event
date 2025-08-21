package com.ec2.event.event;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class EventController {
    @GetMapping("/event/publish")
    public ResponseEntity<String> healthcheck(){
        return ResponseEntity.ok("백엔드 서버 실행 중");
    }
}
