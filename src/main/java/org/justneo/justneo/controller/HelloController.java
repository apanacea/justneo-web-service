package org.justneo.justneo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 探活接口
 *
 * @author wupan01
 */
@RestController
public class HelloController {

    @GetMapping("/hello")
    public String hello() {
        return "Hello~";
    }
}
