package com.javanauta.notificacao.infastructure.exceptions;

public class EmailExceptions extends RuntimeException{

    public EmailExceptions(String mensagem){
        super(mensagem);
    }
    public EmailExceptions(String mensagem, Throwable throwable){
        super(mensagem, throwable);
    }
}
