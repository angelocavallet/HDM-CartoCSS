.airport {
    [aeroway='airfield'][zoom>=15],
    [aeroway='airport'][zoom>=15][zoom<17] {
        marker-file: url('icons/poi/[aeroway].svg');
        marker-clip:false;
        marker-ignore-placement: true;
    }
}

.poi::med[zoom<17] {
    [zoom>=14] {
        [main='townhall'],
        [main='fire_station'] {
            marker-file: url('icons/poi/low/[main].svg');
            marker-clip: false;
            marker-width: 12;
        }
    }
    [zoom>=15] {
        [main='government'],
        [main='university'],
        [main='police'],
        [main='bank'],
        [main='taxi'],
        [main='border_control'],
        [main='hospital'] {
            marker-file: url('icons/poi/low/[main].svg');
            marker-clip: false;
        }
    }
    [zoom=16] {
        [main='embassy'],
        [main='school'] {
            marker-clip: false;
            marker-file: url('icons/poi/low/[main].svg');
        }
    }
}
.poi::mainprio[zoom>=17] {
        [main='bus_stop'],
        [main='atm'],
        [main='fire_station'],
        [main='post_office'],
        [main='embassy'],
        [main='doctors'],
        [main='clinic'],
        [main='hospital'],
        [main='border_control'] {
            marker-file: url('icons/poi/[main].svg');
            marker-clip:false;
        }
        [main='government'],
        [main='ngo'] {
            marker-file: url('icons/poi/[main].svg');
            marker-clip:false;
            [main='ngo'] {
                [name='Oxfam'],[operator='oxfam'] { marker-file: url('icons/poi/ngo/oxfam.svg'); }
                [name='ACRA'],[operator='acra'] { marker-file: url('icons/poi/ngo/acra.svg'); }
            }
        }
}
.poi::high {
    [zoom>=16] {
        [main='police'],
        [main='cafe'],
        [main='restaurant'],
        [main='toilets'],
        [main='shower'],
        [main='fuel'],
        [main='fast_food'],
        [main='car_parts'],
        [main='supermarket'],
        [main='bakery'],
        [main='car_repair'],
        
        [main='school'],
        [main='university'],
        [main='bank'],
        [main='pharmacy'],
        [main='townhall'],
        [main='taxi'],
        [main='car_rental'],
        [main='money_transfer'],
        [main='dentist'],
        [main='bureau_de_change'],
        [main='telephone'],
        [main='mobile_phone'],
        [main='tailor'],
        [main='computer'],
        [main='clothes'],
        [main='butcher'],
        [main='hardware'],
        [main='bicycle'],
        [main='motorcycle'],
        [main='tyres'],
        [main='photo'],
        [main='courthouse'],
        [main='information'],
        [main='camp_site'],
        [main='viewpoint'],
        [main='alpine_hut'],
        [main='guest_house'],
        [main='hostel'],
        [main='hotel'],
        [main='museum'],
        [main='beach_resort'],
        [main='playground'],
        [main='motel'] {
            marker-file: url('icons/poi/[main].svg');
            marker-clip:false;
        }
        ::placeofworship[main='place_of_worship'] {
            marker-file: url('icons/poi/[main].svg');
            marker-clip:false;
            [religion='christian'],
            [religion='jewish'],
            [religion='hindu'],
            [religion='muslim'] {
                marker-file: url('icons/poi/[religion].svg');
            }
        }
        ::craft[craft!=null] {
            marker-file: url('icons/poi/craft.svg');
            marker-clip:false;
            [craft='shoemaker'],
            [craft='carpenter'] {
                marker-file: url('icons/poi/[craft].svg');
            }
        }
        ::manmade {
            [man_made='water_well'] {
                marker-file: url('icons/poi/bucket.svg');
                [pump='manual'] {
                    marker-file: url('icons/poi/pump_manual.svg');
                }
                [pump='powered'] {
                    marker-file: url('icons/poi/pump_powered.svg');
                }
                [drinking_water='yes'] {
                    marker-file: url('icons/poi/drinking_water_well.svg');
                }
            }
            [man_made='watermill'],
            [man_made='water_tower'] {
                marker-file: url('icons/poi/[man_made].svg');
            }
            [man_made='tower']['tower:type'='communication'],
            [man_made='mast'] {
                marker-file: url('icons/poi/communication_tower.svg');
            }
            [man_made='storage_tank'][content='water'] {
                marker-file: url('icons/poi/storage_tank.svg');
            }
        }
    }
    ::catchallshop[zoom>=18] {
        [shop!=null] {
            marker-file: url('icons/poi/shop.svg');
            marker-clip:false;
        }
    }
    [zoom>=18] {
        [main='gambling'],
        [main='recycling'] {
            marker-file: url('icons/poi/[main].svg');
        }
    }
    [zoom>=19] {
        [main='bench'],
        [main='street_lamp'],
        [main='waste_basket'],
        [main='fire_hydrant'] {
            marker-file: url('icons/poi/[main].svg');
        }
    }
}
