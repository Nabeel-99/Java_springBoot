package org.mik.first.spring.service;

import lombok.extern.log4j.Log4j2;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
@EnableScheduling
@Log4j2
public class StatService {
    @Scheduled(fixedRate = 1000)
    private void bg(){
        log.info("BG task started");
    }
}
