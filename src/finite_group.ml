WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
(* *********************************************************** *)
(* ********************** P A R T I ************************** *)
(* *********************************************************** *)

open Core

(*
  Your implementation goes here. We provide just a little bit of starter code to give you
  the syntax, but you're expected to do the rest without modifying the .mli files.

  See finite_group.mli for the details.
*)

(* We must copy our types over *)
module type S =
  sig
    type t [@@deriving compare, sexp]
    val id : t
    val op : t -> t -> t
    val inverse : t -> t
    val of_int : int -> t option
    val to_int : t -> int
  end

(* Copy the Param module type here... *)


module Make (P : Params) : S =
  struct
    type t = int [@@deriving compare]
    let to_int = Fn.id
    (* Fill in the rest of the module to meet the functional requirements and the signature *)
  end

module Z5_params : Params =
  struct
    (* Fill in... *)
  end

module Z5_add : S = Make (Z5_params)


(* complete Memoize functor here... *)

