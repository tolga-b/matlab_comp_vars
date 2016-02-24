%Decompress input and return output
function uncomp_vec = unpack_vector(vector_in)
bais = java.io.ByteArrayInputStream(vector_in);
gzipIn = java.util.zip.GZIPInputStream(bais);
objectIn = java.io.ObjectInputStream(gzipIn);
uncomp_vec = objectIn.readObject();
objectIn.close();
end