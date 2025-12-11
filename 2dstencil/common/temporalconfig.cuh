#pragma once

#include "iptconfig.cuh"

// Box2D1R Float
#ifndef TIMESTEPS_HALO1_BOX_TILEY8_FLOAT
#define TIMESTEPS_HALO1_BOX_TILEY8_FLOAT 8
#endif
// Box2D1R Double
#ifndef TIMESTEPS_HALO1_BOX_TILEY4_DOUBLE
#define TIMESTEPS_HALO1_BOX_TILEY4_DOUBLE 4
#endif
// Star2D1R Float
#ifndef TIMESTEPS_HALO1_STAR_TILEY8_FLOAT
#define TIMESTEPS_HALO1_STAR_TILEY8_FLOAT 8
#endif
// Star2D1R Double
#ifndef TIMESTEPS_HALO1_STAR_TILEY4_DOUBLE
#define TIMESTEPS_HALO1_STAR_TILEY4_DOUBLE 4
#endif
// Box2D2R Float
#ifndef TIMESTEPS_HALO2_BOX_TILEY8_FLOAT
#define TIMESTEPS_HALO2_BOX_TILEY8_FLOAT 6
#endif
// Box2D2R Double
#ifndef TIMESTEPS_HALO2_BOX_TILEY4_DOUBLE
#define TIMESTEPS_HALO2_BOX_TILEY4_DOUBLE 4
#endif
// Star2D2R Float
#ifndef TIMESTEPS_HALO2_STAR_TILEY8_FLOAT
#define TIMESTEPS_HALO2_STAR_TILEY8_FLOAT 8
#endif
// Star2D2R Double
#ifndef TIMESTEPS_HALO2_STAR_TILEY4_DOUBLE
#define TIMESTEPS_HALO2_STAR_TILEY4_DOUBLE 8
#endif
// Box2D3R Float
#ifndef TIMESTEPS_HALO3_BOX_TILEY8_FLOAT
#define TIMESTEPS_HALO3_BOX_TILEY8_FLOAT 1
#endif
// Box2D3R Double
#ifndef TIMESTEPS_HALO3_BOX_TILEY4_DOUBLE
#define TIMESTEPS_HALO3_BOX_TILEY4_DOUBLE 1
#endif
// Star2D3R Float
#ifndef TIMESTEPS_HALO3_STAR_TILEY8_FLOAT
#define TIMESTEPS_HALO3_STAR_TILEY8_FLOAT 1
#endif
// Star2D3R Double
#ifndef TIMESTEPS_HALO3_STAR_TILEY4_DOUBLE
#define TIMESTEPS_HALO3_STAR_TILEY4_DOUBLE 1
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

// Star2D1R Double
template<>
struct timesteps< 1,  star_shape,  4,  double>
{
  // static int const val =3;
  static int const val = TIMESTEPS_HALO1_STAR_TILEY4_DOUBLE;
//static int const val =12;
};

// Star2D1R Float
template<>
struct timesteps< 1,  star_shape,  8,  float>
{
  // static int const val = 9;
  static int const val = TIMESTEPS_HALO1_STAR_TILEY8_FLOAT;
};

// Star2D2R Double
template<>
struct timesteps< 2,  star_shape,  4,  double>
{
  // static int const val = 8;
  static int const val = TIMESTEPS_HALO2_STAR_TILEY4_DOUBLE;
};

// Star2D2R Float
template<>
struct timesteps< 2,  star_shape,  8,  float>
{
  // static int const val = 8;
  static int const val = TIMESTEPS_HALO2_STAR_TILEY8_FLOAT;
};

// Star2D3R Double
template<>
struct timesteps< 3,  star_shape,  4,  double>
{
  // static int const val = 1;
  static int const val = TIMESTEPS_HALO3_STAR_TILEY4_DOUBLE;
};

// Star2D3R Float
template<>
struct timesteps< 3,  star_shape,  8,  float>
{
  // static int const val = 1;
  static int const val = TIMESTEPS_HALO3_STAR_TILEY8_FLOAT;
};

// Box2D1R Double
template<>
struct timesteps< 1,  box_shape,  4,  double>
{
  //static int const val = 6;
  // static int const val = 3;
  static int const val = TIMESTEPS_HALO1_BOX_TILEY4_DOUBLE;
};

// Box2D1R Float
template<>
struct timesteps< 1,  box_shape,  8,  float>
{
  // static int const val = 8;//7;
  static int const val = TIMESTEPS_HALO1_BOX_TILEY8_FLOAT;
  // static int const val = 1;//7;
};

// Box2D2R Double
template<>
struct timesteps< 2,  box_shape,  4,  double>
{
  // static int const val = 4;
  static int const val = TIMESTEPS_HALO2_BOX_TILEY4_DOUBLE;
};

// Box2D2R Float
template<>
struct timesteps< 2,  box_shape,  8,  float>
{
  // static int const val = 6;//7;
  static int const val = TIMESTEPS_HALO2_BOX_TILEY8_FLOAT;
};

// Box2D3R Double
template<>
struct timesteps< 3,  box_shape,  4,  double>
{
  // static int const val = 1;
  static int const val = TIMESTEPS_HALO3_BOX_TILEY4_DOUBLE;
};

// Box2D3R Float
template<>
struct timesteps< 3,  box_shape,  8,  float>
{
  // static int const val = 1;
  static int const val = TIMESTEPS_HALO3_BOX_TILEY8_FLOAT;
};

