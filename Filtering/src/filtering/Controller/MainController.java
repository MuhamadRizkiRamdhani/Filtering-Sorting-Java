/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/javafx/FXML2.java to edit this template
 */
package filtering.Controller;

import filtering.DAO.BukuDAO;
import filtering.DAO.KategoriDAO;
import filtering.Model.Buku;
import filtering.Model.KategoriBuku;
import java.net.URL;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;
import javafx.beans.property.ReadOnlyStringWrapper;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

/**
 *
 * @author Lenovo
 */
public class MainController implements Initializable {
    
    @FXML
    private Label label;
    @FXML
    private DatePicker DateDari;
    @FXML
    private DatePicker DateSampai;
    @FXML
    private Button BtnClear;
    @FXML
    private Button BtnFilter;
    @FXML
    private Button BtnSorting;
    @FXML
    private ComboBox FKategori;
    @FXML
    private ComboBox<String> FSorting;
    @FXML
    private TextField FJudul;
    
    @FXML private TableView<Buku> tabel;
    @FXML private TableColumn<Buku, String> CKodeBuku;
    @FXML private TableColumn<Buku, String> kategori;
    @FXML private TableColumn<Buku, String> CJudul;
    @FXML private TableColumn<Buku, String> CPengarang;
    @FXML private TableColumn<Buku, String> CPenerbit;
    @FXML private TableColumn<Buku, String> CTahun;
    @FXML private TableColumn<Buku, String> CEdisi;
    @FXML private TableColumn<Buku, LocalDate> tahun_pengadaan;
    
    
    @FXML
    private void handleButtonFilter(ActionEvent event) {
    String judul = FJudul.getText();
    BukuDAO.FilterJudul = (judul != null && !judul.isEmpty()) ? judul : null;

    LocalDate dari = DateDari.getValue();
    LocalDate sampai = DateSampai.getValue();
    if (dari != null && sampai != null) {
        BukuDAO.FilterDari = dari.toString();
        BukuDAO.FilterSampai = sampai.toString();
    } else {
        BukuDAO.FilterDari = null;
        BukuDAO.FilterSampai = null;
    }

    String kategori = getSelectedKodeKategori();
    BukuDAO.FilterKategori = (kategori != null && !kategori.isEmpty()) ? kategori : null;

    loadDataBuku();
    }
    
    @FXML
    private void handleButtonClear(ActionEvent event){
    BukuDAO.FilterJudul = null;
    BukuDAO.FilterDari = null;
    BukuDAO.FilterSampai = null;
    BukuDAO.FilterKategori = null;

    FJudul.clear();
    DateDari.setValue(null);
    DateSampai.setValue(null);

    FKategori.getSelectionModel().clearSelection(); 
    FSorting.getSelectionModel().selectFirst();

    loadDataBuku();
    }
    
    private void initComboboxSorting(){
        FSorting.setItems(
        FXCollections.observableArrayList(
        "",
        "Judul A-Z",
        "Judul Z-A",
        "Pengadaan Terbaru",
        "Pengadaan Lama"
        )
        );
        FSorting.getSelectionModel().selectFirst();
    }
    
    @FXML
    private void handleButtonSorting(ActionEvent event){
        String selected = getSelectedComboboxSorting();
        BukuDAO.pilihanSorting = selected;
        loadDataBuku();
    }
    
    public String getSelectedComboboxSorting(){
        String sortingOption = FSorting.getSelectionModel().getSelectedItem();
        return sortingOption;
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        setupTable();
        loadDataKategori();
        loadDataBuku();
        initComboboxSorting();
    }  
    
    private void loadDataBuku() {
        tabel.setItems(FXCollections.observableArrayList(BukuDAO.getBuku()));
    }
    
    private void loadDataKategori() {
        ObservableList<KategoriBuku> kategoriList = FXCollections.observableArrayList(KategoriDAO.getKategori());
    FKategori.setItems(kategoriList);
    // Bikin map dari kode ke nama
    kategoriMap.clear();
    for (KategoriBuku k : kategoriList) {
        kategoriMap.put(k.getKode_kategori(), k.getNama_kategori());
    }
    }
    
    public String getSelectedKodeKategori(){
        KategoriBuku selectedKategoriBuku = (KategoriBuku) FKategori.getSelectionModel().getSelectedItem();
        
        if(selectedKategoriBuku != null){
            return selectedKategoriBuku.getKode_kategori();
        }
        return null;
    }
    
    private Map<String, String> kategoriMap = new HashMap<>();
    private void setupTable() {
        CKodeBuku.setCellValueFactory(new PropertyValueFactory<>("kode_buku"));
        kategori.setCellValueFactory(cellData -> {
        String kode = cellData.getValue().getKode_kategori();
        String nama = kategoriMap.getOrDefault(kode, "Tidak Diketahui");
        return new ReadOnlyStringWrapper(nama);
        });
        CJudul.setCellValueFactory(new PropertyValueFactory<>("judul"));
        CPengarang.setCellValueFactory(new PropertyValueFactory<>("pengarang"));
        CPenerbit.setCellValueFactory(new PropertyValueFactory<>("penerbit"));
        CTahun.setCellValueFactory(new PropertyValueFactory<>("tahun"));
        CEdisi.setCellValueFactory(new PropertyValueFactory<>("edisi"));
        tahun_pengadaan.setCellValueFactory(new PropertyValueFactory<>("tahun_pengadaan"));
    }
}
