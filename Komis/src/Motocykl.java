class Motocykl extends Pojazd {
    private boolean maKufry;

    public Motocykl(String marka, String model, double cena, boolean maKufry) {
        super(marka, model, cena);
        this.maKufry = maKufry;
    }

    @Override
    public void wyswietlInformacje() {
        super.wyswietlInformacje();
        System.out.println("Kufry: " + (maKufry ? "Tak" : "Nie"));
    }
}