
class Pojazd {
    private String marka;
    private String model;
    private double cena;

    public Pojazd(String marka, String model, double cena) {
        this.marka = marka;
        this.model = model;
        this.cena = cena;
    }

    public String getMarka() {
        return marka;
    }

    public String getModel() {
        return model;
    }

    public double getCena() {
        return cena;
    }

    public void wyswietlInformacje() {
        System.out.println("Marka: " + marka + ", Model: " + model + ", Cena: " + cena);
    }
}