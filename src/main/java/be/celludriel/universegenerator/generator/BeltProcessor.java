package be.celludriel.universegenerator.generator;

import be.celludriel.universegenerator.model.Belt;
import be.celludriel.universegenerator.model.BeltType;
import be.celludriel.universegenerator.model.Cluster;
import be.celludriel.universegenerator.model.Galaxy;
import be.celludriel.universegenerator.model.ResourceArea;

import java.util.List;

public class BeltProcessor {

    public static final long ZONERANGE = 150000L;

    private final Randomizer randomizer;

    public BeltProcessor(Randomizer randomizer) {
        this.randomizer = randomizer;
    }

    public void processBelts(Galaxy galaxy, Cluster cluster){
        if(cluster.isNoBelts()){
            return;
        }

        List<Belt> belts = cluster.getBelts();
        if(belts.size() > 0){
            addManualSelectedBelts(belts);
        }else{
            generateRandomBelts(galaxy.getMinRandomBelts(), galaxy.getMaxRandomBelts(), cluster);
        }
    }

    private void generateRandomBelts(int minRandomBelts, int maxRandomBelts, Cluster cluster) {
        int amountOfBelts = randomizer.randomInt(minRandomBelts, maxRandomBelts);

        for(int i = 0; i < amountOfBelts;i++){
            BeltType type = randomizer.getRandomBelt();
            Belt belt = new Belt();

            belt.setType(type);
            belt.setX(randomizer.generateRandomCoordinate(-ZONERANGE, ZONERANGE));
            belt.setY(randomizer.generateRandomCoordinate(-ZONERANGE, ZONERANGE));
            belt.setRotation(randomizer.getRandomRotation());

            //TODO: set paramters based on belt configuration?
            ResourceArea rArea = new ResourceArea();
            rArea.setWare(type.name().toLowerCase());
            rArea.setAmount(4);
            rArea.setSize("medium");
            rArea.setVolume("medium");
            rArea.setDegredationRate("average");

            belt.setResourceArea(rArea);
            cluster.addToBelts(belt);
        }
    }

    private void addManualSelectedBelts(List<Belt> belts) {
        for (Belt belt : belts) {
            if(belt.getX() == null){
                belt.setX(randomizer.generateRandomCoordinate(-ZONERANGE, ZONERANGE));
            }
            if(belt.getY() == null){
                belt.setY(randomizer.generateRandomCoordinate(-ZONERANGE, ZONERANGE));
            }
            if(belt.getRotation() == null){
                belt.setRotation(randomizer.getRandomRotation());
            }
        }
    }
}
