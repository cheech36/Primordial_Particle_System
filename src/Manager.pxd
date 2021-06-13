#from Particle cimport Particle


cdef extern from "Manager.cpp":
    pass

cdef extern from "Manager.h" namespace "particles":
    cdef cppclass Manager:
        Manager() except + 
        # Particle* substrate
        int n_particles

        void initialize(int n_particles)
        void sense()
        void move(double dt)
        void orient(double dt)
        double** get_positions()