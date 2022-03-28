/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package books_proj;

/**
 *
 * @author driskimaulana
 */
public class Buku {
    
    // class attribute
    String judul;
    String penerbit;
    Author author;
    String desc;
    String img;
    
    // class constructors
    Buku(){
        
    }
    Buku(String judul, String penerbit, Author author, String desc, String img){
        this.judul = judul;
        this.penerbit = penerbit;
        this.author = author;
        this.desc = desc;
        this.img = img;
    }
    
    // setter and getter

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Author getAuthor() {
        return author;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getDesc() {
        return desc;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getImg() {
        return img;
    }

    public void setJudul(String judul) {
        this.judul = judul;
    }

    public String getJudul() {
        return judul;
    }

    public void setPenerbit(String penerbit) {
        this.penerbit = penerbit;
    }

    public String getPenerbit() {
        return penerbit;
    }
    
    
    
    
}
