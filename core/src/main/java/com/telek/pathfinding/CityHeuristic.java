package com.telek.pathfinding;

import com.badlogic.gdx.ai.pfa.Heuristic;
import com.badlogic.gdx.math.Vector2;


class CityHeuristic implements Heuristic<City> {

    @Override
    public float estimate(City currentCity, City goalCity) {
        return Vector2.dst(currentCity.x, currentCity.y, goalCity.x, goalCity.y);
    }
}