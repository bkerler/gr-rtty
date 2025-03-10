/* -*- c++ -*- */
/* 
 * Copyright 2014 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */


#ifndef INCLUDED_RTTY_RTTY_DECODE_FF_H
#define INCLUDED_RTTY_RTTY_DECODE_FF_H

#include <gnuradio/rtty/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace rtty {

    /*!
     * \brief <+description of block+>
     * \ingroup rtty
     *
     */
    class RTTY_API rtty_decode_ff : virtual public gr::block
    {
     public:
      typedef std::shared_ptr<rtty_decode_ff> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of rtty::rtty_decode_ff.
       *
       * To avoid accidental use of raw pointers, rtty::rtty_decode_ff's
       * constructor is in a private implementation
       * class. rtty::rtty_decode_ff::make is the public interface for
       * creating new instances.
       */
      static sptr make(float rate, float baud, bool polarity);
    };

  } // namespace rtty
} // namespace gr

#endif /* INCLUDED_RTTY_RTTY_DECODE_FF_H */

