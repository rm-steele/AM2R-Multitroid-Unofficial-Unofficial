var bfr;
global.anxvariable = 1
bfr = buffer_create(1024, buffer_grow, 1)
buffer_seek(bfr, buffer_seek_start, 0)
buffer_write(bfr, buffer_s32, 18)
buffer_write(bfr, buffer_u8, 71)
buffer_write(bfr, buffer_u8, global.anxvariable)
buffer_poke(bfr, 0, buffer_s32, (buffer_tell(bfr) - 4))
network_send_packet(oClient.socket, bfr, buffer_tell(bfr))
buffer_delete(bfr)
