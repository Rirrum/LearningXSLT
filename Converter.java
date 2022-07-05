import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

public class Converter {
    public static void main(String[] args) throws IOException, URISyntaxException, TransformerException {
        TransformerFactory factory = TransformerFactory.newInstance();
        // This file is for the .xsl file, make sure to reference the correct folder/path and correct file
        Source xslt = new StreamSource(new File("JSONfunction\\test.xsl")); 
        Transformer transformer = factory.newTransformer(xslt);

        // This file is the input .xml file that you want to transform
        Source text = new StreamSource(new File("JSONfunction\\test.xml"));
        // This is for the transformation and saving the output, make sure to put the correct path/file and to adjust the file extension as necessary
        transformer.transform(text, new StreamResult(new File("output\\output.json")));
    }
}