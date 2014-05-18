#' Syntactic sugar to make the most common asserts as simple as possible.
#'
#' @name assert_syntactic_sugar
#' @rdname assert_syntactic_sugar
NULL

########## scalars

#FIXME: flag might be a bad name

#' @rdname assert_syntactic_sugar
#' @export
aflag = function(x) {
  assert(x, "flag")
}

#' @rdname assert_syntactic_sugar
#' @export
anump = function(x, upper = Inf) {
  assert(x, "numeric", upper = upper)
}


#' @rdname assert_syntactic_sugar
#' @export
aint = function(x) {
  assert(x, "integerish")
}

#FIXME: both acount functions need check_count to be improved first1

#' @rdname assert_syntactic_sugar
#' @export
acount0 = function(x, upper) {
  assert(x, "count")
}

#' @rdname assert_syntactic_sugar
#' @export
acount1 = function(x, upper) {
  assert(x, "count")
}

#' @rdname assert_syntactic_sugar
#' @export
astring = function(x) {
  assert(x, "string")
}

#' @rdname assert_syntactic_sugar
#' @export
afun = function(x, args) {
  #FIXME: again I am not sure why I need to do this and it sucks
  if (missing(args))
    assert(x, "function")
  else
    assert(x, "function", args = args)
}


#' @rdname assert_syntactic_sugar
#' @export
aobj = function(x, cl) {
  assert(x, "class", classes = cl)
}

#' @rdname assert_syntactic_sugar
#' @export
achoice = function(x, choices) {
  assert(x, "choice", choices = choices)
}


########## vectors

#' @rdname assert_syntactic_sugar
#' @export
anumvec = function(x) {
  assert(x, "numeric")
}

#' @rdname assert_syntactic_sugar
#' @export
aintvec = function(x) {
  assert(x, "numeric")
}

########## lists

#' @rdname assert_syntactic_sugar
#' @export
alist = function(x, types) {
  assert(x, "list", types = types)
}

#' @rdname assert_syntactic_sugar
#' @export
alistn = function(x, types) {
  #FIXME: see afun dreck
  if (missing(types))
    assert(x, "list", names = "named")
  else
    assert(x, "list", types = types, names = "named")
}

#' @rdname assert_syntactic_sugar
#' @export
alistnu = function(x, types) {
  if (missing(types))
    assert(x, "list", names = "unique")
  else
    assert(x, "list", types = types, names = "unique")
}

########## file io

#' @rdname assert_syntactic_sugar
#' @export
afile = function(x) {
  assert(x, "file")
}

#' @rdname assert_syntactic_sugar
#' @export
adir = function(x) {
  assert(x, "directory")
}


