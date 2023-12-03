package DAO;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import Context.DBContext;
import Entity.Products;
import controller.productController;

public class DAO_Product extends DBContext implements IDAO<Products> {
    @Override
    public int insert(Products products) {
        return 0;
    }


    public int insert(Collection<Products> collectionT) {
        return 0;
    }

    @Override
    public int update(Products products) {
        return 0;
    }
    public Products selectById(Products products) {
        Products p = null;
        try {
            //step1:create connection
            Connection connection = DBContext.getConnection();
            //step2:create statement object
            String sql = "SELECT * FROM PRODUCT WHERE PRODUCT_ID = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, products.getPRODUCT_ID());
            //step3:execute sql query
            ResultSet rs = st.executeQuery();
            //step4:process result from step3
            while (rs.next()) {
                String id = (rs.getString("product_id").trim());
                String category_id = rs.getString("category_id").trim();
                String title = rs.getString("title");
                int price = rs.getInt("price");
                int discount = rs.getInt("discount");
                String thumbnail = rs.getString("thumbnail");
                String description = rs.getString("description_PRODUCT");
                Date created_at = rs.getDate("created_at");
                Date update_at = rs.getDate("updated_at");
                p = new Products(id, category_id, title, price, discount, thumbnail, description, created_at, update_at);
            }
            //step5: close connect
            DBContext.closeConnection(connection);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return p;
    }

    @Override
    public int deleteById(Products products) {
        return 0;
    }


	public int insertAll(Collection<Products> collectionT) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<Products> SelectAll() {
		// TODO Auto-generated method stub
		ArrayList<Products> list = new ArrayList<Products>();
		String query = "select * from Product";
		try {
			Connection conn;
			try {
				conn = DBContext.getConnection();
			PreparedStatement ps  = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				String PRODUCT_ID = rs.getString("PRODUCT_ID");
			    String CATEGORY_ID =  rs.getString("CATEGORY_ID");
			    String title = rs.getString(3);
			    int price=  rs.getInt(4);
			    int discount= rs.getInt(5);
			    String thumbnail = rs.getString(6);
			    String description_PRODUCT =  rs.getString(7);
			    Date created_at = rs.getDate(8);
			    Date updated_at =  rs.getDate(9); 
			    Products e = new Products( PRODUCT_ID,  CATEGORY_ID,  title,  price,  discount,  thumbnail,  description_PRODUCT,  created_at,  updated_at);
			    list.add(e);
				}
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
    public ArrayList<Products> getProductByCID(String cid){
    	ArrayList<Products> list = new ArrayList<Products>();
    	try {
    		Connection conn = new DBContext().getConnection();
    		String query = "select * from product where CATEGORY_ID = ?";
            PreparedStatement statement = conn.prepareStatement(query);

          //điền giá trị vào tham số
            statement.setString(1, cid);

            // thực thi truy vấn
            ResultSet rs = statement.executeQuery();

    		while(rs.next()) {
    			String PRODUCT_ID = rs.getString("PRODUCT_ID");
			    String CATEGORY_ID =  rs.getString("CATEGORY_ID");
			    String title = rs.getString("title");
			    int price=  rs.getInt("price");
			    int discount= rs.getInt("discount");
			    String thumbnail = rs.getString("thumbnail");
			    String description_PRODUCT =  rs.getString("description_PRODUCT");
			    Date created_at = rs.getDate("created_at");
			    Date updated_at =  rs.getDate("updated_at"); 
			    Products p = new Products( PRODUCT_ID,  CATEGORY_ID,  title,  price,  discount,  thumbnail,  description_PRODUCT,  created_at,  updated_at);
    			list.add(p);
    		}
    	}catch(Exception e) {
    		
    	}
    	return list;
    }
	public static void main(String[] args) throws ClassNotFoundException {
//        Products products  = new Products();
//        products.setPRODUCT_ID("PRODUCT002");
//        DAO_Product daoProduct = new DAO_Product();
//        System.out.println(daoProduct.selectById(products));
		DAO_Product dao = new DAO_Product();
		ArrayList<Products> list =  dao.SelectAll();
		for (Products products : list) {
			System.out.println(products);
		}
//        
//		ArrayList<Products> list =  new DAO_Product().getProductByCID("CATEGORY001");
//		for (Products products : list) {
//			System.out.println(products);
//		}
		System.out.println(new DAO_Product().SelectAll());
        
    }
}
