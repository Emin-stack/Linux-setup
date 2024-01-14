# docker run -it -p 5902:5902 -p 1234:22 --hostname lizhen --mac-address 02:42:ac:11:00:02 -v //d/mydata:/mnt/mydata phyzli/ubuntu18.04_xfce4_vnc4server_synopsys2016
podman run -it -p 5902:5902 -p 1234:22 --hostname lizhen --network=bridge --mac-address 02:42:ac:11:00:02 -v /mnt:/mnt/mydata phyzli/ubuntu18.04_xfce4_vnc4server_synopsys2016

vncserver -geometry 1920x1080 :2
# Address: 127.0.0.1:5902
# Password: zhenchen
#
# tb.sv
#
# module tb ();
#
# initial begin
#   $display("hello vcs");
# end
#
# endmodule
#
# vcs tb.sv -debug_all -lca -kdb
# ./simv -gui=verdi
#
# ssh support
# ssh -p 1234 root@127.0.0.1
#
# docker exec -it ee bash
