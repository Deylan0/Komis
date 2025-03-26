class Car extends Vehicle {
    private int doorsCount;

    public Car(String brand, String model, double price, int doorsCount) {
        super(brand, model, price);
        this.doorsCount = doorsCount;
    }

    @Override
    public void showInfo() {
        super.showInfo();
        System.out.println("Doors Count: " + doorsCount);
    }
}
