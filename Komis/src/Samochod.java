class Samochod extends Pojazd {
    private int liczbaDrzwi;

    public Samochod(String marka, String model, double cena, int liczbaDrzwi) {
        super(marka, model, cena);
        this.liczbaDrzwi = liczbaDrzwi;
    }

    @Override
    public void wyswietlInformacje() {
        super.wyswietlInformacje();
        System.out.println("Liczba drzwi: " + liczbaDrzwi);
    }
}