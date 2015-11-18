# defmodule TableFormatterTest do
#   use ExUnit.Case          # bring in the test functionality
#   import ExUnit.CaptureIO  # And allow us to capture stuff sent to stdout
#
#   alias Issues.TableFormatter, as: TF
#
#   def simple_test_data do
#     # ????
#   end
#
#   test "Output is correct" do
#     result = capture_io fn ->
#       TF.create_table_of_issues(simple_test_data)
#     end
#     assert result == """
#     #   | Created at           | Title
#    -----+----------------------+--------------------------------------------------
#    1240 | 2015-09-30T23:32:25Z | POST functionality inconsistent with PUT, GET, an
#    -------------------------------------------------------------------------------
#     """
#   end
# end
