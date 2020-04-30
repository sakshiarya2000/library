package model;

public class  Book
{
    private int bid;
    private String name;
    private int price;
    private String authorname;
    private String type;
     
    

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getAuthorname() {
        return authorname;
    }

    public void setAuthorname(String authorname) {
        this.authorname = authorname;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    

}
