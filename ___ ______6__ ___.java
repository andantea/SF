/*
 * author: @liu
 */
import ...

public static void main(String[] args) {
    try {
        Planet p = PlanetSystem.findWithName("solar_system").getAt(2);
        p.getSpecies(Species["homo"]["sapiens"]).forEach(h -> {
            if (h.timeElapsed > 409968000L) {
                kill(h);
            }
        });
    } catch (PlanetSystemNotFoundException | SpeciesNotFoundException | ArrayIndexOutOfBoundsException | KillingException ex) {
        // well, nevermind
    }
}