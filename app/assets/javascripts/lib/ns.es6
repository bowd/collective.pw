// Utility function used for ensuring namespaces easily.
// Example:
// You have a new view file located in views/team/import.es6.
// The module that it defines would ideally be namespaces like:
//
// Views.Team.Import = <your module or view or whatever>;
//
// In order to easily get this without validating namespace you
// can use the helper like:
//
// ns('Views', 'Team').Import = <your module or view or whatever>;
//
// Which simply ensures that the namespacing exists and pulls it up.
// Be careful not to define modules as namespaces. A.k.a. if you have
// ``Views.Team`` as a module you can't have Views.Team.Import or
// things will get a bit awkward potentially, depending on execution
// order.
window.ns = function namespace() {
  return [].reduce.call(
    arguments,
    (cn, i) => cn[i] || (cn[i] = {}),
    window
  );
}

