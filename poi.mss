.poi {
    // Generic rules first
    [zoom>=18] {
        [shop!=null] {
            marker-file: url('icons/poi/shop-18.png');
        }
    }
    [zoom>=15][zoom<=16] {
        [amenity='school'],
        [amenity='university'],
        [amenity='police'],
        [amenity='bank'],
        [amenity='hospital'] {
            marker-file: url('icons/poi/[amenity]-12.png');
        }
    }
    [zoom>=17] {
        [amenity='hospital'],
        [amenity='kindergarten'],
        [amenity='school'],
        [amenity='university'],
        [amenity='police'],
        [amenity='drinking_water'],
        [amenity='grave_yard'],
        [amenity='cinema'],
        [amenity='cafe'],
        [amenity='bar'],
        [amenity='restaurant'],
        [amenity='toilets'],
        [amenity='fuel'],
        [amenity='bank'],
        [amenity='atm'],
        [amenity='place_of_worship'] {
            marker-file: url('icons/poi/[amenity]-18.png');
        }
        [craft!=null] {
            marker-file: url('icons/poi/craft-18.png');
        }
        [shop="beverages"],
        [shop="hairdresser"],
        [shop="supermarket"],
        [shop="bakery"],
        [shop="mobile_phone"],
        [shop="photo"] {
            marker-file: url('icons/poi/[shop]-18.png');
        }
        [office='ngo'] {
            marker-file: url('icons/poi/[office]-18.png');
        }
        [tourism='hotel'] {
            marker-file: url('icons/poi/[tourism]-18.png');
        }
    }
    [zoom>=18] {
        [amenity='gambling'],
        [amenity='waste_basket'] {
            marker-file: url('icons/poi/[amenity]-18.png');
        }
    }
}
#poi-point::label[zoom>=17] {
    text-name: "";
    text-face-name: @sans;
    text-size: 10;
    text-wrap-width: 30;
    text-fill: @poi_text;
    text-halo-fill: @poi_halo;
    text-dy: 12;
    text-dx: 12;
    text-placement: point;
    text-halo-radius: 2;
    text-label-position-tolerance: 18;
    text-placement-type: simple;
    text-placements: "S,N,W,E,NE,NW,SE,SW";
    [zoom>=17] {
        [amenity='school'],
        [amenity='university'],
        [amenity='hospital'] {
            text-name: "[name]";
            [zoom>=19] {
                text-face-name: @sans_bold;
            }
        }
    }
    [zoom>=18] {
        [office='ngo'],
        [tourism='hotel'],
        [amenity='restaurant'],
        [amenity='kindergarten'],
        [amenity='cafe'],
        [amenity='bar'],
        [amenity='bank'],
        [amenity='place_of_worship'] {
            text-name: "[name]";
        }
    }
    [zoom>=19] {
        [amenity='cinema'],
        [shop!=null] {
            text-name: "[name]";
            text-fill: @poi_text2;
        }
    }
}