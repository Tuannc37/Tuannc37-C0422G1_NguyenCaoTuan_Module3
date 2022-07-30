package service.impl;

import model.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void create(Product product) {
        productRepository.create(product);
    }

    @Override
    public void update(int id, Product product) {
        productRepository.update(id,product);
    }

    @Override
    public void delete(int id) {
        productRepository.delete(id);
    }

    @Override
    public void view(Product product) {
        productRepository.view(product);
    }

    @Override
    public  List<Product> findByName(String name) {
       return (List<Product>) productRepository.findByName(name);

    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }
}
