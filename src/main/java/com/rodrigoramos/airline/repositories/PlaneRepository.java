package com.rodrigoramos.airline.repositories;

import com.rodrigoramos.airline.entities.Plane;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlaneRepository extends JpaRepository<Plane, Long> {
}
