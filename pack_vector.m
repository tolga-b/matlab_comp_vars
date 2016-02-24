% Return compressed vector 
function comp_vec = pack_vector(vector_in)
baos = java.io.ByteArrayOutputStream();
gzipOut = java.util.zip.GZIPOutputStream(baos);
objectOut = java.io.ObjectOutputStream(gzipOut);
objectOut.writeObject(vector_in);
objectOut.close();
comp_vec = baos.toByteArray();
end
