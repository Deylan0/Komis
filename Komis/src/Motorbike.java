class Motorbike extends Vehicle {
    private boolean haveTrunk;

    public Motocykl(String brand, String model, double price, boolean haveTrunk) {
        super(brand, model, price);
        this.haveTrunk = haveTrunk;
    }

    @Override
    public void showInfo() {
        super.showInfo();
        System.out.println("Trunk: " + (haveTrunk ? "Yes" : "No"));
    }
}
