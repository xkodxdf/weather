package com.xkodxdf.weather.model.entity;

import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;


@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "w_location")
public class Location {

    @Id()
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    @NotBlank
    private String name;

    @Column(name = "latitude")
    @NotBlank
    private BigDecimal latitude;

    @Column(name = "longitude")
    @NotBlank
    private BigDecimal longitude;
}
