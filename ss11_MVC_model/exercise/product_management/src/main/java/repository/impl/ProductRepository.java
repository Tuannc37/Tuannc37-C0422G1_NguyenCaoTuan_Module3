package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class ProductRepository implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1,"Quần áo",150000,"Còn mới","Nike"));
        productList.add(new Product(2,"Sách",20000,"Còn mới,cũ","Nhà Xuất bản Giáo Dục"));
        productList.add(new Product(3,"Vở",5000,"Còn mới","Thiên Long"));
        productList.add(new Product(4,"Bút",3000,"Còn mới","Thiên Long"));
        productList.add(new Product(5,"Ghế",20000,"Còn mới","Nike"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void create(Product product) {
        productList.add(product);
    }

    @Override
    public void update(int id, Product product) {
        for (Product p:productList){
            if(product.getId() == p.getId()){
                p.setId(product.getId());
                p.setNameProduct(product.getNameProduct());
                p.setPrice(product.getPrice());
                p.setDescription(product.getDescription());
                p.setProducer(product.getProducer());
                break;
            }
        }
    }

    @Override
    public void delete(int id) {
        productList.remove(findById(id));
    }

    @Override
    public void view(Product product) {

    }

    @Override
    public  List<Product> findByName(String name) {
        List<Product> productList1 = new ArrayList<>();
        for (Product p : productList) {
            if (p.getNameProduct().toLowerCase(Locale.ROOT).contains(name.toLowerCase(Locale.ROOT))) {
                productList1.add(p);
            }
        }
       return productList1;
    }

    @Override
    public Product findById(int id) {
        Product product=null;
        for(int i = 0; i < productList.size();i++){
            if(productList.get(i).getId() == id){
                product = productList.get(i);
            }
        }
        return product;
    }
}
