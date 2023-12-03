package Entity;

import java.sql.Date;

public class Products {
    private String PRODUCT_ID;
    private String CATEGORY_ID;
    private String title;
    private int price;
    private int discount;
     String thumbnail;
    private String description_PRODUCT;
    private Date created_at;
    private Date updated_at;

    public Products(){

    }

    public Products(String PRODUCT_ID, String CATEGORY_ID, String title, int price, int discount, String thumbnail, String description_PRODUCT, Date created_at, Date updated_at) {
        this.PRODUCT_ID = PRODUCT_ID;
        this.CATEGORY_ID = CATEGORY_ID;
        this.title = title;
        this.price = price;
        this.discount = discount;
        this.thumbnail = thumbnail;
        this.description_PRODUCT = description_PRODUCT;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public String getPRODUCT_ID() {
        return PRODUCT_ID;
    }

    public void setPRODUCT_ID(String PRODUCT_ID) {
        this.PRODUCT_ID = PRODUCT_ID;
    }

    public String getCATEGORY_ID() {
        return CATEGORY_ID;
    }

    public void setCATEGORY_ID(String CATEGORY_ID) {
        this.CATEGORY_ID = CATEGORY_ID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getDescription_PRODUCT() {
        return description_PRODUCT;
    }

    public void setDescription_PRODUCT(String description_PRODUCT) {
        this.description_PRODUCT = description_PRODUCT;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }

    @Override
    public String toString() {
        return "Products{" +
                "PRODUCT_ID='" + PRODUCT_ID + '\'' +
                ", CATEGORY_ID='" + CATEGORY_ID + '\'' +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", discount=" + discount +
                ", thumbnail='" + thumbnail + '\'' +
                ", description_PRODUCT='" + description_PRODUCT + '\'' +
                ", created_at=" + created_at +
                ", updated_at=" + updated_at +
                '}';
    }
}
