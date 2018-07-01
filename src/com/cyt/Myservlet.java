package com.cyt;

import java.sql.Statement;

public class Myservlet{
    private  String time;
    private  String name;
    private  String author;
    private  String star;
    private  String mood;

    public String getTime() {
        return time;
    }
    public void  setTime(String time){ this.time =time; }

    public String getName() {
        return name;
    }
    public void  setName(String name){
        this.name =name;
    }

    public String getAuthor() {
        return author;
    }
    public void  setAuthor(String author){
        this.author =author;
    }

    public String getStar() {
        return star;
    }
    public void  setStar(String star){ this.star =star; }

    public String getMood() {
        return mood;
    }
    public void  setMood(String mood){ this.mood =mood; }
}
