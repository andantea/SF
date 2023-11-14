/*
author: @kobayashi
*/

class Human {
public:
    double       life;
    virtual void love( Human& human )      = 0;
    virtual void senescence( double time ) = 0;
};

class MountainVillagers;
class SeaShoreVillagers;

class MountainVillagers : Human {
    virtual void senescence( double time ) {
        life -= time;
    }

    virtual void love( SeaShoreVillagers& ) {
        /* ... */
    }
};

class SeaShoreVillagers : Human {
    virtual void senescence( double time ) {
        life -= time * 20;
    }

    virtual void love( MountainVillagers& ) {
        /* ... */
    }
};
