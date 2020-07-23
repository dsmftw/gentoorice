ip route get 1 | awk '{print $(NF-2);exit}'
