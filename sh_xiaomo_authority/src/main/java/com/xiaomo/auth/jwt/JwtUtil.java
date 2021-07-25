package com.xiaomo.auth.jwt;


import com.xiaomo.api.entities.UserInfo;
import io.jsonwebtoken.SignatureAlgorithm;

import java.security.Signature;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 *
 */
public class JwtUtil {

    /**
     * 用户登录成功后生成token
     * @param ttlMillis
     * @param user
     * @return
     */
    public static String createJWT(Long ttlMillis , UserInfo user){

        /**
         * 制定签名的时候，现制定签名算法，这部分jwt已经封装好了
         *
         */
        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;
        //生成jwt的时间
        Long timeMillis = System.currentTimeMillis();
        Date date = new Date(timeMillis);
        // 创建 payload的私有声明，根据特定的业务需要添加，如果要拿这个做验证，一般是需要和jwt的接收方提前沟通好验证方式的）
        Map<String,Object> map = new HashMap<>();
        map.put("id",user.getId());
        map.put("username",user.getUserName());
        map.put("password" ,user.getPassword());
        /**
         * 生成签名的时候使用的秘钥secret,这个方法本地封装了的，
         * 一般可以从本地配置文件中读取，切记这个秘钥不能外露哦。
         * 它就是你服务端的私钥，在任何场景都不应该流露出去。
         * 一旦客户端得知这个secret,
         * 那就意味着客户端是可以自我签发jwt了。
         */
        String key = user.getPassword();
        //生成签发人
        String subject = user.getUserName();

        return "";
    }
}
