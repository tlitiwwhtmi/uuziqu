package com.ziqu.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */

@Entity
@Table(name = "product_cat")
public class ProductCatEntity {

    private int id;

    private String catName;

    private int typeId;

    private String catExt;

    private List<ProductEntity> productEntities;

    @Column(name = "cat_ext")
    public String getCatExt() {
        return catExt;
    }

    public void setCatExt(String catExt) {
        this.catExt = catExt;
    }

    @Column(name = "cat_name")
    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    @Id
    @Column(name = "id",unique = true, nullable = false)
    @GeneratedValue(generator = "idGenerator")
    @GenericGenerator(name = "idGenerator",strategy = "increment")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "type_id")
    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    @Transient
    public List<ProductEntity> getProductEntities() {
        return productEntities;
    }

    public void setProductEntities(List<ProductEntity> productEntities) {
        this.productEntities = productEntities;
    }
}
