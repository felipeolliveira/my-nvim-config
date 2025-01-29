local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

return {
  -- Stateless Widget Snippet
  s("stless", {
    t({
      "class ", -- class name will go here
    }),
    i(1, "MyWidget"), -- First input placeholder
    t({ " extends StatelessWidget {", "  const " }),
    f(function(args)
      return args[1][1]
    end, { 1 }), -- Reuse the widget name
    t({
      "({super.key});",
      "",
      "",
      "  @override",
      "  Widget build(BuildContext context) {",
      "    return ",
    }),
    i(2, "Container()"),
    t({ ";", "  }", "}" }),
  }),

  -- Stateful Widget Snippet
  s("stfull", {
    t("class "),
    i(1, "MyWidget"),
    t({ " extends StatefulWidget {", "  const " }),
    f(function(args)
      return args[1][1]
    end, { 1 }),
    t({ "({super.key});", "", "", "  @override", "  State<" }),
    f(function(args)
      return args[1][1]
    end, { 1 }),
    t({ "> createState() => _" }),
    f(function(args)
      return args[1][1]
    end, { 1 }),
    t({ "State();", "}", "", "class _" }),
    f(function(args)
      return args[1][1]
    end, { 1 }),
    t({ "State extends State<" }),
    f(function(args)
      return args[1][1]
    end, { 1 }),
    t({ "> {", "  @override", "  Widget build(BuildContext context) {", "    return " }),
    i(2, "Container()"),
    t({ ";", "  }", "}" }),
  }),

  -- CustomPainter Widget Snippet
  s("painter", {
    t("class "),
    i(1, "MyPainter"),
    t({ " extends CustomPainter {", "  @override", "  void paint(Canvas canvas, Size size) {", "    " }),
    i(2, "// Your painting code here"),
    t({ "", "  }", "", "  @override", "  bool shouldRepaint(covariant CustomPainter oldDelegate) {", "    " }),
    i(3, "return false;"),
    t({ "", "  }", "}" }),
  }),
}
