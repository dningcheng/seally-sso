package com.seally.auth;

import org.jasig.cas.authentication.handler.PasswordEncoder;

import com.seally.utils.EncryptUtil;

/**
 * @Date 2018年8月12日
 * @author dnc
 * @Description 自定义编码器
 */
public class MyPasswordEncoder implements PasswordEncoder {

	@Override
	public String encode(String pass) {
		
		return EncryptUtil.Encrypt(pass, EncryptUtil.ENC_SHA256, true);
	}

}
