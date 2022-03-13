require daslib/json_boost

struct Property
    name: string
    prop_type: string
    value: auto

struct Layer
    data : array<uint>
    layer_type: string

struct Tile
    width, height: int
    x, y: int
    texture: string

struct Object
    x, y: int
    width, height: int
    name: string
    visible: bool
    properties: array<Property>
    id: int
    obj_type: string

struct Level
    width, height: int
    layers: array<Layer>
    tilesets: array<Tileset>
    tileheight, tilewidth: int

def tmx_loadlevel(path: string)