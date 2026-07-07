package be.celludriel.universegenerator.model;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

public class ResourceArea extends AbstractJson {
    private int amount;
    private String size;
    private String ware;
    private String volume;
    private String degredationRate;

    public int getAmount() {
        return amount;
    }

    public String getSize() {
        return size;
    }

    public String getWare() {
        return ware;
    }

    public String getVolume() {
        return volume;
    }

    public String getDegredationRate() {
        return degredationRate;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public void setWare(String ware) {
        this.ware = ware;
    }

    public void setVolume(String volume) {
        this.volume = volume;
    }

    public void setDegredationRate(String degredationRate) {
        this.degredationRate = degredationRate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;

        if (o == null || getClass() != o.getClass()) return false;

        ResourceArea area = (ResourceArea) o;

        return new EqualsBuilder()
                .append(amount, area.amount)
                .append(size, area.size)
                .append(ware, area.ware)
                .append(volume, area.volume)
                .append(degredationRate, area.degredationRate)
                .isEquals();
    }

    @Override
    public int hashCode() {
        return new HashCodeBuilder(17, 37)
                .append(amount)
                .append(size)
                .append(ware)
                .append(volume)
                .append(degredationRate)
                .toHashCode();
    }
}
