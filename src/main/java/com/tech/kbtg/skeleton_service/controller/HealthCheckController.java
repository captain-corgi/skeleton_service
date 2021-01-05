package com.tech.kbtg.skeleton_service.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("v1")
public class HealthCheckController {

    @GetMapping("ping")
    public String ping() {
        log.info("received ping");
        return "pong";
    }
}
