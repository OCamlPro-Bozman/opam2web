(***********************************************************************)
(*                                                                     *)
(*    Copyright 2012 OCamlPro                                          *)
(*    Copyright 2012 INRIA                                             *)
(*                                                                     *)
(*  All rights reserved.  This file is distributed under the terms of  *)
(*  the GNU Public License version 3.0.                                *)
(*                                                                     *)
(*  OPAM is distributed in the hope that it will be useful,            *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of     *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the      *)
(*  GNU General Public License for more details.                       *)
(*                                                                     *)
(***********************************************************************)

(** Statistics *)

open OpamTypes
open O2wTypes

(** Generate basic statistics on log entries *)
val basic_statistics_set: string list -> statistics_set option

(** Aggregate all the package popularity per version. The second
    argument is the list of available version. *)
val aggregate_package_popularity: int64 package_map -> package_set -> int64 name_map

(** Return the top packages *)
val top_packages: ?ntop:int -> ?reverse:bool -> (package -> 'a) ->
  package_set -> (package * 'a) list

(** Export the popularity list into CSV format *)
val to_csv: int64 package_map -> string -> unit

(** Export the popularity list into JSON format *)
val to_json: int64 package_map -> string -> unit
