package com.motkur.thebigone.Service.Interface;

public interface ISecurityService {
    String findLoggedInUsername();
    void autoLogin(String username, String password);
}