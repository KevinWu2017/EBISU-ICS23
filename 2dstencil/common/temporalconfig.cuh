#pragma once

#include "iptconfig.cuh"

#ifndef TIMESTEPS_HALO1_BOX_TILEY8_FLOAT
#define TIMESTEPS_HALO1_BOX_TILEY8_FLOAT 8
#endif

#ifndef TIMESTEPS_HALO1_BOX_TILEY4_DOUBLE
#define TIMESTEPS_HALO1_BOX_TILEY4_DOUBLE 4
#endif

#ifndef TIMESTEPS_HALO1_STAR_TILEY8_FLOAT
#define TIMESTEPS_HALO1_STAR_TILEY8_FLOAT 8
#endif

#ifndef TIMESTEPS_HALO1_STAR_TILEY4_DOUBLE
#define TIMESTEPS_HALO1_STAR_TILEY4_DOUBLE 4
#endif

#ifndef TIMESTEPS_HALO2_BOX_TILEY8_FLOAT
#define TIMESTEPS_HALO2_BOX_TILEY8_FLOAT 6
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

template<>
struct timesteps< 1,  star_shape,  4,  double>
{
  // static int const val =3;
  static int const val = TIMESTEPS_HALO1_STAR_TILEY4_DOUBLE;
//static int const val =12;
};


template<>
struct timesteps< 1,  star_shape,  8,  float>
{
  // static int const val = 9;
  static int const val = TIMESTEPS_HALO1_STAR_TILEY8_FLOAT;
};

template<>
struct timesteps< 2,  star_shape,  4,  double>
{
  static int const val = 8;
};


template<>
struct timesteps< 2,  star_shape,  8,  float>
{
  static int const val = 8;
};


template<>
struct timesteps< 1,  box_shape,  4,  double>
{
  //static int const val = 6;
  // static int const val = 3;
  static int const val = TIMESTEPS_HALO1_BOX_TILEY4_DOUBLE;
};

template<>
struct timesteps< 1,  box_shape,  8,  float>
{
  // static int const val = 8;//7;
  static int const val = TIMESTEPS_HALO1_BOX_TILEY8_FLOAT;
  // static int const val = 1;//7;
};

template<>
struct timesteps< 2,  box_shape,  4,  double>
{
  static int const val = 4;
};

template<>
struct timesteps< 2,  box_shape,  8,  float>
{
  // static int const val = 6;//7;
  static int const val = TIMESTEPS_HALO2_BOX_TILEY8_FLOAT;
};

