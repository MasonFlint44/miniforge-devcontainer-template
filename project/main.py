from pprint import pprint

from glom import glom

target = {
    "system": {
        "planets": [
            {"name": "earth", "moons": [{"name": "luna"}]},
            {"name": "jupiter", "moons": [{"name": "io"}, {"name": "europa"}]},
        ]
    }
}

spec = {
    "planet_names": ("system.planets", ["name"]),
    "moon_names": ("system.planets", [("moons", ["name"])]),
}

if __name__ == "__main__":
    pprint(glom(target, spec))
