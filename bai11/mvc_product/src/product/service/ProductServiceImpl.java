package product.service;

import product.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer,Product> products;
    static {
        products = new HashMap<>();
        products.put(1,new Product("Sữa Tươi Cô Gái Hà lan",1,200000));
        products.put(2,new Product("Kem tươi",2,300000));
        products.put(3,new Product("Thịt tươi",3,400000));
        products.put(4,new Product("Phô mai que",4,500000));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
