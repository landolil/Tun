# Verify reassembly
python3 ../../__Python_Tools/write_large_file.py concat chunks/DOC-27 FinishedWork/DOC-27_REASSEMBLED.md
diff <(gunzip -c FinishedWork/DOC-27_Community_Diaguita.md.gz) FinishedWork/DOC-27_REASSEMBLED.md