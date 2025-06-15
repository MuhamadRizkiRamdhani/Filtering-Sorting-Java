/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package filtering.DAO;

import filtering.Model.Buku;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

/**
 *
 * @author Lenovo
 */
public class BukuDAO {
    public static String FilterDari;
    public static String FilterSampai;
    public static String FilterJudul;
    public static String FilterKategori;
    public static String pilihanSorting;
    
    public static ObservableList<Buku> getBuku() {
        // ObservableList untuk menyimpan data user
        ObservableList bukuList = FXCollections.observableArrayList();
        String query = "SELECT buku.*, kategori_buku.nama_kategori FROM buku " +
               "LEFT JOIN kategori_buku ON buku.kode_kategori = kategori_buku.kode_kategori " +
               "WHERE 1=1 ";

        if(FilterDari != null && !FilterDari.isEmpty() && FilterSampai != null && !FilterSampai.isEmpty()){
        query += "AND buku.tahun_pengadaan BETWEEN '" + FilterDari + "' AND '" + FilterSampai + "' ";
        }

        if(FilterJudul != null && !FilterJudul.isEmpty()){
        query += "AND buku.judul LIKE '%" + FilterJudul + "%' ";
        }

        if(FilterKategori != null && !FilterKategori.isEmpty()){
        query += "AND buku.kode_kategori = '" + FilterKategori + "' ";
        }   
        
        if (pilihanSorting != null && !pilihanSorting.isEmpty()) {
        switch (pilihanSorting) {
        case "Judul A-Z":
            query += " ORDER BY buku.judul ASC";
            break;
        case "Judul Z-A":
            query += " ORDER BY buku.judul DESC";
            break;
        case "Pengadaan Terbaru":
            query += " ORDER BY buku.tahun_pengadaan DESC";
            break;
        case "Pengadaan Lama":
            query += " ORDER BY buku.tahun_pengadaan ASC";
            break;
        }
        }
        

        try {
            // Membuat koneksi ke database
            Connection koneksi = DBConnection.getConnection();
            // Membuat statement
            Statement stmt = koneksi.createStatement();
            // Query untuk mengambil data user
            ResultSet rs = stmt.executeQuery(query);
            
             // Menambahkan data ke ObservableList
              while (rs.next()) {
            String kode_buku = rs.getString("kode_buku"); 
            String kode_kategori = rs.getString("kode_kategori");
            String judul = rs.getString("judul");
            String penerbit = rs.getString("penerbit");
            String pengarang = rs.getString("pengarang");
            String tahun = rs.getString("tahun");
            String edisi = rs.getString("edisi");
            LocalDate tahun_pengadaan = rs.getDate("tahun_pengadaan").toLocalDate();


            bukuList.add(new Buku(kode_buku, kode_kategori, judul, penerbit, pengarang, tahun, edisi, tahun_pengadaan));
        }

            // Menutup koneksi
            rs.close();
            stmt.close();
            koneksi.close();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }

        
     
        return bukuList;
    }
    
    public static List<String> getKategoriList() {
        List<String> kategoriList = new ArrayList<>();
        // contoh kode ambil data kategori dari DB
        try (Connection con = DBConnection.getConnection();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery("SELECT nama_kategori FROM kategori_buku")) {

            while (rs.next()) {
                kategoriList.add(rs.getString("nama_kategori"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return kategoriList;
    }
    
}
