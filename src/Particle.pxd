cdef extern from "Particle.cpp":
    pass

# Declare the class with cdef
cdef extern from "Particle.h" namespace "particles":
    cdef cppclass Particle:
        Particle() except +
        #Particle(int, int, int, int) except +
        int x0, y0, x1, y1

        Particle(int , double* , double, double) except +
        #~Particle()


        void move(double dt)


        void orient(double dt)

        # double* sense(void)

