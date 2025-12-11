#pragma once
#ifndef star_shape
  #define star_shape (1)
#endif
#ifndef box_shape
  #define box_shape (2)
#endif
#ifndef type0_shape
  #define type0_shape (3)
#endif
#ifndef poisson_shape
  #define poisson_shape (4)
#endif

#include "iptconfig.cuh"

// Box3D1R Float
#ifndef TIMESTEPS_HALO1_BOX_TILEY8_FLOAT
#define TIMESTEPS_HALO1_BOX_TILEY8_FLOAT 2
#endif
// Box3D1R Double
#ifndef TIMESTEPS_HALO1_BOX_TILEY4_DOUBLE
#define TIMESTEPS_HALO1_BOX_TILEY4_DOUBLE 1
#endif
// Star3D1R Float
#ifndef TIMESTEPS_HALO1_STAR_TILEY8_FLOAT
#define TIMESTEPS_HALO1_STAR_TILEY8_FLOAT 8
#endif
// Star3D1R Double
#ifndef TIMESTEPS_HALO1_STAR_TILEY4_DOUBLE
#define TIMESTEPS_HALO1_STAR_TILEY4_DOUBLE 3
#endif

// Star3D2R Float
#ifndef TIMESTEPS_HALO2_STAR_TILEY8_FLOAT
#define TIMESTEPS_HALO2_STAR_TILEY8_FLOAT 5
#endif
// Star3D2R Double
#ifndef TIMESTEPS_HALO2_STAR_TILEY4_DOUBLE
#define TIMESTEPS_HALO2_STAR_TILEY4_DOUBLE 5
#endif


template<int halo, int shape, int ipt, class REAL>
struct timesteps
{
  static int const val = 1;
};


template<int halo, int shape, int ipt>
struct timesteps<halo,shape,ipt,double>
{
  static int const val = 1;
};

// Star3D1R Double
template<>
struct timesteps< 1,  star_shape,  4,  double>
{
  // static int const val = 1;
  // static int const val = 3;
  // static int const val = 8;
  static int const val = TIMESTEPS_HALO1_STAR_TILEY4_DOUBLE;
};

// Star3D1R Float
template<>
struct timesteps< 1,  star_shape,  8,  float>
{
  // static int const val = 8;
  // static int const val = 2;
  static int const val = TIMESTEPS_HALO1_STAR_TILEY8_FLOAT;
};


// Star3D2R Double
template<>
struct timesteps< 2,  star_shape,  4,  double>
{
  // static int const val = 5;
  static int const val = TIMESTEPS_HALO2_STAR_TILEY4_DOUBLE;
};

// Star3D2R Float
template<>
struct timesteps< 2,  star_shape,  8,  float>
{
  // static int const val = 5;
  static int const val = TIMESTEPS_HALO2_STAR_TILEY8_FLOAT;
};

// Box3D1R Double
template<>
struct timesteps<1, box_shape,  4,  double>
{
  // static int const val = 5;
  // static int const val = 3;
  // static int const val = 1;
  // static int const val = 1;
  static int const val = TIMESTEPS_HALO1_BOX_TILEY4_DOUBLE;
};

// Box3D1R Float
template<>
struct timesteps< 1,  box_shape,  8,  float>
{
  // static int const val = 2;
  static int const val = TIMESTEPS_HALO1_BOX_TILEY8_FLOAT;
};

template<>
struct timesteps<1, type0_shape,  4,  double>
{
  static int const val = 6;
  // static int const val = 2;
};

template<>
struct timesteps< 1,  type0_shape,  8,  float>
{
  static int const val = 6;
};

template<>
struct timesteps<1, poisson_shape,  4,  double>
{
  static int const val = 6;
};

template<>
struct timesteps< 1,  poisson_shape,  8,  float>
{
  static int const val = 6;
};



