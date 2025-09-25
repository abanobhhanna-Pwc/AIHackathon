public with sharing class Calculator {
    public static Integer add(Integer a, Integer b) { return nz(a) + nz(b); }
    public static Integer subtract(Integer a, Integer b) { return nz(a) - nz(b); }

    public static Decimal add(Decimal a, Decimal b) { return nzd(a) + nzd(b); }
    public static Decimal subtract(Decimal a, Decimal b) { return nzd(a) - nzd(b); }

    public static Decimal sum(List<Decimal> values) {
        if (values == null) return 0;
        Decimal total = 0;
        for (Decimal d : values) total += nzd(d);
        return total;
    }

    private static Integer nz(Integer v)  { return v == null ? 0 : v; }
    private static Decimal nzd(Decimal v) { return v == null ? 0 : v; }
}
