# 6. Verify reassembly
python3 ../../__Python_Tools/write_large_file.py concat chunks/DOC-28 FinishedWork/DOC-28_REASSEMBLED.md
diff <(gunzip -c FinishedWork/DOC-28_Community_Pehuenche.md.gz) FinishedWork/DOC-28_REASSEMBLED.md