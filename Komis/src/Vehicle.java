
class Vehicle {
    private String brand;
    private String model;
    private double price;

    public Pojazd(String brand, String model, double price) {
        this.brand = brand;
        this.model = model;
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public String getModel() {
        return model;
    }

    public double getPrice() {
        return price;
    }

    public void wyswietlInformacje() {
        System.out.println("Marka: " + brand + ", Model: " + model + ", Cena: " + price);
    }
}