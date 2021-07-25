package com.xiaomo.api.service;

import com.xiaomo.api.entities.UserInfo;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient(value="sh_xiaomo_authority")
public interface UserService {
    @RequestMapping(value = "/user/get/{id}" ,method = RequestMethod.GET)
    public UserInfo getUserById(@PathVariable("id") Long id);
}
