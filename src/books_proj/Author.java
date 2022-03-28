/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package books_proj;

/**
 *
 * @author driskimaulana
 */
public class Author {
    
    // class attribute
    String nama;
    int jumlah_buku;
    String img;
    
    // class constructors
    Author(){
        
    }
    Author(String nama, int jumlah_buku, String img){
        this.nama = nama;
        this.jumlah_buku = jumlah_buku;
        this.img = img;
    }
    
    // setter and getter

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getNama() {
        return nama;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getImg() {
        return img;
    }

    public void setJumlah_buku(int jumlah_buku) {
        this.jumlah_buku = jumlah_buku;
    }

    public int getJumlah_buku() {
        return jumlah_buku;
    }
}
