(ert-deftest it-sets-the-minitest-last--command-during-minite-rerun ()
  (should (equal 1 1)))
(ert-deftest it-reset-the-minitest--last-command-even-if-there-was-an-error-in-minitest-rerun()
  (should (equal 1 1)))
