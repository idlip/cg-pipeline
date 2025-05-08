<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.44 (Build 295) (http://www.copasi.org) at 2025-03-17T13:36:45Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="44" versionDevel="295" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_6">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for v5" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k5*KG*NAD*(At-ATP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="ATP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_274" name="At" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="KG" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="NAD" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="k5" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for v6" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k6*(OAA-KG/Keq)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="KG" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_279" name="Keq" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="OAA" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="k6" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for vresp" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        mitochondrion*Jresp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="Jresp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="mitochondrion" order="1" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for vATP" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        mitochondrion*JATP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="JATP" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="mitochondrion" order="1" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for vleak" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        mitochondrion*Jleak
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="Jleak" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="mitochondrion" order="1" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for Hexokinase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        VmGLK*(-(G6P*(SUMAXP-(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((1-4*KeqAK)*KeqGLK))+GLCi*(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/(2-8*KeqAK))/(KmGLKATP*KmGLKGLCi*(1+G6P/KmGLKG6P+GLCi/KmGLKGLCi)*(1+(SUMAXP-(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((1-4*KeqAK)*KmGLKADP)+(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((2-8*KeqAK)*KmGLKATP)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="G6P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_286" name="GLCi" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_288" name="KeqAK" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="KeqGLK" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="KmGLKADP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="KmGLKATP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="KmGLKG6P" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="KmGLKGLCi" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="P" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="SUMAXP" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="VmGLK" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for Glucose-6-phosphate isomerase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        VmPGI/KmPGIG6P*(G6P-F6P/KeqPGI)/(1+G6P/KmPGIG6P+F6P/KmPGIF6P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="F6P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_306" name="G6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_305" name="KeqPGI" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="KmPGIF6P" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="KmPGIG6P" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="VmPGI" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for Phosphofructokinase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        gR*VmPFK*F6P*(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)*(1+F6P/KmPFKF6P+(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((2-8*KeqAK)*KmPFKATP)+gR*F6P*(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((2-8*KeqAK)*KmPFKATP*KmPFKF6P))/((2-8*KeqAK)*KmPFKATP*KmPFKF6P*(L0*(1+CPFKF26BP*F26BP/KPFKF26BP+CPFKF16BP*F16P/KPFKF16BP)^2*(1+2*CPFKAMP*KeqAK*(SUMAXP-(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)^2/((-1+4*KeqAK)*KPFKAMP*(SUMAXP-P+4*KeqAK*P-(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)))^2*(1+CiPFKATP*(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((2-8*KeqAK)*KiPFKATP))^2*(1+CPFKATP*(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((2-8*KeqAK)*KmPFKATP))^2/((1+F26BP/KPFKF26BP+F16P/KPFKF16BP)^2*(1+2*KeqAK*(SUMAXP-(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)^2/((-1+4*KeqAK)*KPFKAMP*(SUMAXP-P+4*KeqAK*P-(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)))^2*(1+(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((2-8*KeqAK)*KiPFKATP))^2)+(1+F6P/KmPFKF6P+(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((2-8*KeqAK)*KmPFKATP)+gR*F6P*(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((2-8*KeqAK)*KmPFKATP*KmPFKF6P))^2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="CPFKAMP" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="CPFKATP" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="CPFKF16BP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="CPFKF26BP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="CiPFKATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="F16P" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_309" name="F26BP" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_310" name="F6P" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_311" name="KPFKAMP" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="KPFKF16BP" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="KPFKF26BP" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="KeqAK" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="KiPFKATP" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="KmPFKATP" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="KmPFKF6P" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="L0" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="P" order="16" role="substrate"/>
        <ParameterDescription key="FunctionParameter_320" name="SUMAXP" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="VmPFK" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="gR" order="19" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for Aldolase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        VmALD*F16P/KmALDF16P*(1-DHAP*GA3P/(F16P*KeqALD))/(1+F16P/KmALDF16P+DHAP/KmALDDHAP+GA3P/KmALDGAP+F16P*GA3P/(KmALDF16P*KmALDGAPi)+DHAP*GA3P/(KmALDDHAP*KmALDGAP))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="DHAP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_341" name="F16P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_340" name="GA3P" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_339" name="KeqALD" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="KmALDDHAP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="KmALDF16P" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="KmALDGAP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="KmALDGAPi" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="VmALD" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for Glycerol 3-phosphate dehydrogenase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cytoplasm*(VmG3PDH*(-(GLY*NAD/KeqG3PDH)+NADH*DHAP/(1+KeqTPI))/(KmG3PDHDHAP*KmG3PDHNADH*(1+NAD/KmG3PDHNAD+NADH/KmG3PDHNADH)*(1+GLY/KmG3PDHGLY+DHAP/((1+KeqTPI)*KmG3PDHDHAP))))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="DHAP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="GLY" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_327" name="KeqG3PDH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="KeqTPI" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="KmG3PDHDHAP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="KmG3PDHGLY" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="KmG3PDHNAD" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="KmG3PDHNADH" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="NAD" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_324" name="NADH" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_323" name="VmG3PDH" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="cytoplasm" order="11" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for Glyceraldehyde 3-phosphate dehydrogenase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k_rel_GAPDH*VmGAPDHf*GA3P*NAD/(KmGAPDHGAP*KmGAPDHNAD)*(1-BPG*NADH/(GA3P*NAD*KeqGAPDH))/((1+GA3P/KmGAPDHGAP+BPG/KmGAPDHBPG)*(1+NAD/KmGAPDHNAD+NADH/KmGAPDHNADH))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="BPG" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_354" name="GA3P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_353" name="KeqGAPDH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="KmGAPDHBPG" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="KmGAPDHGAP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="KmGAPDHNAD" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="KmGAPDHNADH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="NAD" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="NADH" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_346" name="VmGAPDHf" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="k_rel_GAPDH" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for Phosphoglycerate kinase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        VmPGK*(KeqPGK*BPG*(SUMAXP-(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/(1-4*KeqAK)-(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)*P3G/(2-8*KeqAK))/(KmPGKATP*KmPGKP3G*(1+(SUMAXP-(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((1-4*KeqAK)*KmPGKADP)+(-SUMAXP+P-4*KeqAK*P+(SUMAXP^2-2*SUMAXP*P+8*KeqAK*SUMAXP*P+P^2-4*KeqAK*P^2)^0.5)/((2-8*KeqAK)*KmPGKATP))*(1+BPG/KmPGKBPG+P3G/KmPGKP3G))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_365" name="BPG" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_364" name="KeqAK" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="KeqPGK" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="KmPGKADP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="KmPGKATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="KmPGKBPG" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="KmPGKP3G" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="P" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_357" name="P3G" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_356" name="SUMAXP" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="VmPGK" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for Phosphoglycerate mutase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        VmPGM/KmPGMP3G*(P3G-P2G/KeqPGM)/(1+P3G/KmPGMP3G+P2G/KmPGMP2G)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_376" name="KeqPGM" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_375" name="KmPGMP2G" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="KmPGMP3G" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="P2G" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_372" name="P3G" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_371" name="VmPGM" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for Enolase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        VmENO/KmENOP2G*(P2G-PEP/KeqENO)/(1+P2G/KmENOP2G+PEP/KmENOPEP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="KeqENO" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="KmENOP2G" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="KmENOPEP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="P2G" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_369" name="PEP" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_370" name="VmENO" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for Pyruvate kinase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        VmPYK/(KmPYKPEP*KmPYKADP)*(PEP*(SUMAXP-(P^2-4*KeqAK*P^2-2*P*SUMAXP+8*KeqAK*P*SUMAXP+SUMAXP^2)^0.5)/(1-4*KeqAK)-PYR*(P-4*KeqAK*P-SUMAXP+(P^2-4*KeqAK*P^2-2*P*SUMAXP+8*KeqAK*P*SUMAXP+SUMAXP^2)^0.5)/(2-8*KeqAK)/KeqPYK)/((1+PEP/KmPYKPEP+PYR/KmPYKPYR)*(1+(P-4*KeqAK*P-SUMAXP+(P^2-4*KeqAK*P^2-2*P*SUMAXP+8*KeqAK*P*SUMAXP+SUMAXP^2)^0.5)/(2-8*KeqAK)/KmPYKATP+(SUMAXP-(P^2-4*KeqAK*P^2-2*P*SUMAXP+8*KeqAK*P*SUMAXP+SUMAXP^2)^0.5)/(1-4*KeqAK)/KmPYKADP))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_383" name="KeqAK" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="KeqPYK" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="KmPYKADP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="KmPYKATP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="KmPYKPEP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="KmPYKPYR" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="P" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_385" name="PEP" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_386" name="PYR" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_387" name="SUMAXP" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="VmPYK" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for Pyruvate decarboxylase" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cytoplasm*(VmPDC*PYR^nPDC/KmPDCPYR^nPDC/(1+PYR^nPDC/KmPDCPYR^nPDC))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_399" name="KmPDCPYR" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="PYR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_397" name="VmPDC" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="cytoplasm" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_395" name="nPDC" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for Succinate synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cytoplasm*KSUCC*ACE
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_390" name="ACE" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_391" name="KSUCC" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="cytoplasm" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for Alcohol dehydrogenase" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cytoplasm*-(VmADH/(KiADHNAD*KmADHETOH)*(NAD*ETOH-NADH*ACE/KeqADH)/(1+NAD/KiADHNAD+KmADHNAD*ETOH/(KiADHNAD*KmADHETOH)+KmADHNADH*ACE/(KiADHNADH*KmADHACE)+NADH/KiADHNADH+NAD*ETOH/(KiADHNAD*KmADHETOH)+KmADHNADH*NAD*ACE/(KiADHNAD*KiADHNADH*KmADHACE)+KmADHNAD*ETOH*NADH/(KiADHNAD*KmADHETOH*KiADHNADH)+NADH*ACE/(KiADHNADH*KmADHACE)+NAD*ETOH*ACE/(KiADHNAD*KmADHETOH*KiADHACE)+ETOH*NADH*ACE/(KiADHETOH*KiADHNADH*KmADHACE)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_389" name="ACE" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_394" name="ETOH" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_393" name="KeqADH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="KiADHACE" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="KiADHETOH" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="KiADHNAD" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="KiADHNADH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="KmADHACE" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="KmADHETOH" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="KmADHNAD" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="KmADHNADH" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="NAD" order="11" role="product"/>
        <ParameterDescription key="FunctionParameter_409" name="NADH" order="12" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="VmADH" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="cytoplasm" order="14" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for ATPase activity" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        KATPASE*(P-4*KeqAK*P-SUMAXP+(P^2-4*KeqAK*P^2-2*P*SUMAXP+8*KeqAK*P*SUMAXP+SUMAXP^2)^0.5)/(2-8*KeqAK)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_426" name="KATPASE" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="KeqAK" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="P" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_423" name="SUMAXP" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for vTPI" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k_rel_TPI*(VmDHAP*GA3P/KmGA3P-VmGA3P*DHAP/KmDHAP)/(1+GA3P/KmGA3P+DHAP/KmDHAP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_419" name="DHAP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_420" name="GA3P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_421" name="KmDHAP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="KmGA3P" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="VmDHAP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="VmGA3P" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="k_rel_TPI" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for vG6PDH" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        VmG6PDH*G6P*NADP/(KmG6P*KmNADP)/((1+G6P/KmG6P+NADPH/KiNADPH)*(1+NADP/KmNADP))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_429" name="G6P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_428" name="KiNADPH" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="KmG6P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="KmNADP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="NADP" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_414" name="NADPH" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_415" name="VmG6PDH" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for v6PGL" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vm6PGL*D6PGluconoLactone/(Km6PGL+D6PGluconoLactone)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_436" name="D6PGluconoLactone" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_435" name="Km6PGL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="Vm6PGL" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for vGluDH" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        VmGluDH*D6PGluconate*NADP/(KmGluconate*KmNADP)/((1+D6PGluconate/KmGluconate+NADPH/KiNADPH)*(1+NADP/KmNADP))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_431" name="D6PGluconate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_432" name="KiNADPH" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_433" name="KmGluconate" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="KmNADP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="NADP" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_438" name="NADPH" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_439" name="VmGluDH" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for vPPI" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (VmPPIf*Ribulose5P/KmRibu5P-VmPPIr*Ribose5P/KmRibo5P)/(1+Ribulose5P/KmRibu5P+Ribose5P/KmRibo5P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_446" name="KmRibo5P" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="KmRibu5P" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="Ribose5P" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_443" name="Ribulose5P" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_442" name="VmPPIf" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_441" name="VmPPIr" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for vTransk1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (VmTransk1f*Ribose5P*Xyl5P/(KmRibose5P*KmXyl5P)-VmTransk1r*GA3P*Seduhept7P/(KmGA3P*KmSeduhept))/((1+Ribose5P/KmRibose5P+GA3P/KmGA3P)*(1+Xyl5P/KmXyl5P+Seduhept7P/KmSeduhept))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_451" name="GA3P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_450" name="KmGA3P" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="KmRibose5P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_448" name="KmSeduhept" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="KmXyl5P" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="Ribose5P" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_452" name="Seduhept7P" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_453" name="VmTransk1f" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="VmTransk1r" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_455" name="Xyl5P" order="9" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for vR5PI" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (VmR5PIf*Ribulose5P/KmRibu5P-VmR5PIr*Xyl5P/KmXyl)/(1+Ribulose5P/KmRibu5P+Xyl5P/KmXyl)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_465" name="KmRibu5P" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="KmXyl" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_463" name="Ribulose5P" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_462" name="VmR5PIf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_461" name="VmR5PIr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="Xyl5P" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for vTransald" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_67">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (VmTransaldf*GA3P*Seduhept7P/(KmGA3P*KmSeduhept)-VmTransaldr*F6P*Erythrose4P/(KmF6P*KmEry4P))/((1+GA3P/KmGA3P+F6P/KmF6P)*(1+Seduhept7P/KmSeduhept+Erythrose4P/KmEry4P))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_467" name="Erythrose4P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_466" name="F6P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_456" name="GA3P" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_457" name="KmEry4P" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="KmF6P" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="KmGA3P" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_468" name="KmSeduhept" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_469" name="Seduhept7P" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_470" name="VmTransaldf" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_471" name="VmTransaldr" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for vTransk2" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_68">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (VmTransk2f*Erythrose4P*Xyl5P/(KmEry4P*KmXyl5P)-VmTransk2r*F6P*GA3P/(KmF6P*KmGA3P))/((1+Xyl5P/KmXyl5P+GA3P/KmGA3P)*(1+Erythrose4P/KmEry4P+F6P/KmF6P))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_481" name="Erythrose4P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_480" name="F6P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_479" name="GA3P" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_478" name="KmEry4P" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_477" name="KmF6P" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="KmGA3P" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_475" name="KmXyl5P" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_474" name="VmTransk2f" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_473" name="VmTransk2r" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_472" name="Xyl5P" order="9" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for Glucose transport" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_69">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cytoplasm*(VmGLT*(GLCo-GLCi/KeqGLT)/(KmGLTGLCo*(1+GLCo/KmGLTGLCo+GLCi/KmGLTGLCi+0.91000000000000003*GLCo*GLCi/(KmGLTGLCi*KmGLTGLCo))))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_491" name="GLCi" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_490" name="GLCo" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_489" name="KeqGLT" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_488" name="KmGLTGLCi" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_487" name="KmGLTGLCo" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_486" name="VmGLT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_485" name="cytoplasm" order="6" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Rate Law for Hepatic Cholesterol Synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T16:29:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        HCSmax/(1+(HFC/HCSt)^HS)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_495" name="HCSmax" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_494" name="HFC" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_493" name="HCSt" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_492" name="HS" order="3" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Rate Law for Hepatic Cholesterol Storage_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T16:48:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k9*ACAT*HFC
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_496" name="k9" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_484" name="ACAT" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_483" name="HFC" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Rate Law for Release of Stored Cholesterol" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T16:54:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k10*CEH*HCE
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_498" name="k10" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_497" name="CEH" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_482" name="HCE" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Rate Law for Peripheral Cholesterol Synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T20:02:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        PCSmax/(1+(PFC/PPCt)^PCSS)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_501" name="PCSmax" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_500" name="PFC" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_499" name="PPCt" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_502" name="PCSS" order="3" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Rate Law for CETP Mediated Transfer To VLDL" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T20:15:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k27*HDLC*CETP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_506" name="k27" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_505" name="HDLC" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_504" name="CETP" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Rate Law for CETP Mediated TransferTo LDL" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T20:23:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k28*HDLC*CETP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_508" name="k28" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_507" name="HDLC" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_503" name="CETP" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Rate Law for Hepatic LDLR Synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:20:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        khrs*HLDLRsS/HFC
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_511" name="khrs" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_510" name="HLDLRsS" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_509" name="HFC" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Rate Law for IDL Cholesterol Formation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:43:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k15*VLDLC*LPL
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_514" name="k15" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_513" name="VLDLC" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_512" name="LPL" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Rate Law for LDL Cholesterol Formation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:55:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k17*IDLC*HSL
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_517" name="k17" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_516" name="IDLC" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_515" name="HSL" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Rate Law for Intestinal Cholesterol Synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T15:24:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ICSmax/(1+(IC/ICt)^IS)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_520" name="ICSmax" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_519" name="IC" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_518" name="ICt" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_521" name="IS" order="3" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Rate Law for Peripheral LDLR Synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T19:15:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kprs*PLDLRsS/PFC
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_525" name="kprs" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_524" name="PLDLRsS" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_523" name="PFC" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Rate Law for Bile Salt Synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T15:48:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k5*HFC/HBS
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_527" name="k5" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_526" name="HFC" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_522" name="HBS" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for Intestinal Cholesterol Synthesis" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_82">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for Intestinal Cholesterol Synthesis"(ICSmax,species_2,ICt,IS)/Intestine
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_530" name="ICSmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_529" name="ICt" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="IS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_531" name="Intestine" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_532" name="species_2" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for Bile Salt Synthesis" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_83">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for Bile Salt Synthesis"(k5,species_7,species_4)/HepaticTissue
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_537" name="HepaticTissue" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_536" name="k5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_535" name="species_4" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_534" name="species_7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Rate Law for Cholesterol Absorption_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_84">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k6*species_2*species_5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_540" name="k6" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_539" name="species_2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_538" name="species_5" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Rate Law for Cholesterol Excretion_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_85">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k7*species_2*species_5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_542" name="k7" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_541" name="species_2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_533" name="species_5" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Rate Law for Intestinal Nascent HDL Synthesis_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_86">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k8*species_11
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_545" name="k8" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_544" name="species_11" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Rate Law for Billary Cholesterol Release_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_87">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        BCRmax/(1+(BCRt/species_7)^BS)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_546" name="BCRmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_543" name="BCRt" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_547" name="BS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_548" name="species_7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for Hepatic Cholesterol Synthesis" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_88">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for Hepatic Cholesterol Synthesis"(HCSmax,species_7,HCSt,HS)/HepaticTissue
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_552" name="HCSmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_551" name="HCSt" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="HS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_549" name="HepaticTissue" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_553" name="species_7" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for Hepatic Cholesterol Storage" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_89">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for Hepatic Cholesterol Storage_1"(k9,species_14,species_7)/HepaticTissue
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_558" name="HepaticTissue" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_557" name="k9" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_556" name="species_14" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_555" name="species_7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for Release of Stored Cholesterol" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_90">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for Release of Stored Cholesterol"(k10,species_15,species_13)/HepaticTissue
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_561" name="HepaticTissue" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_560" name="k10" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_559" name="species_13" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_554" name="species_15" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="Rate Law for Hepatic Nascent HDL Synthesis_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_91">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k11*species_11
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_565" name="k11" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_564" name="species_11" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="Function for Hepatic LDLR Synthesis" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_92">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for Hepatic LDLR Synthesis"(khrs,species_19,species_7)/HepaticTissue
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_562" name="HepaticTissue" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_563" name="khrs" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_566" name="species_19" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_567" name="species_7" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="Function for Hepatic LDL Receptor Degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_93">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*species_18/HepaticTissue
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_571" name="HepaticTissue" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_570" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_569" name="species_18" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="Function for IDL Cholesterol Formation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_94">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for IDL Cholesterol Formation"(k15,species_17,species_22)/Plasma
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_573" name="Plasma" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_572" name="k15" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_568" name="species_17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_574" name="species_22" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="Function for LDL Cholesterol Formation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_95">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for LDL Cholesterol Formation"(k17,species_21,species_24)/Plasma
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_578" name="Plasma" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_577" name="k17" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_576" name="species_21" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_575" name="species_24" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="Rate Law for Receptor Dependent Hepatic Uptake_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_96">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k18*species_23*species_18
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_582" name="k18" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_581" name="species_18" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_580" name="species_23" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="Rate Law for Receptor Dependent Peripheral Uptake_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_97">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k20*species_25*species_23
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_584" name="k20" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_583" name="species_23" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_579" name="species_25" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="Function for Peripheral LDLR Synthesis" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_98">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for Peripheral LDLR Synthesis"(kprs,species_26,species_11)/PeripheralTissue
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_587" name="PeripheralTissue" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_586" name="kprs" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_585" name="species_11" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_588" name="species_26" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="Function for Peripheral LDL Receptor Degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_99">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*species_25/PeripheralTissue
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_592" name="PeripheralTissue" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_591" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_590" name="species_25" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="Rate Law for Peripheral Cholesterol Storage_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_100">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k23*species_14*species_11
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_594" name="k23" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_593" name="species_11" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_589" name="species_14" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="Rate Law for Release of Stored Peripheral Cholesterol_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_101">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k24*species_15*species_28
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_597" name="k24" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_596" name="species_15" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_595" name="species_28" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="Function for Peripheral Steroid Production" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_102">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*species_11/PeripheralTissue
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_600" name="PeripheralTissue" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_599" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="species_11" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="Rate Law for HDL Cholesterol Formation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_103">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k26*species_11*species_10*species_31
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_603" name="k26" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_602" name="species_10" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_601" name="species_11" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_604" name="species_31" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="Function for Peripheral Cholesterol Synthesis" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_104">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for Peripheral Cholesterol Synthesis"(PCSmax,species_11,PPCt,PCSS)/PeripheralTissue
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_608" name="PCSS" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_607" name="PCSmax" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_606" name="PPCt" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_605" name="PeripheralTissue" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_609" name="species_11" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="Function for CETP Mediated Transfer To VLDL" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_105">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for CETP Mediated Transfer To VLDL"(k27,species_30,species_33)/Plasma
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_614" name="Plasma" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_613" name="k27" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_612" name="species_30" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_611" name="species_33" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="Function for CETP Mediated TransferTo LDL" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_106">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        "Rate Law for CETP Mediated TransferTo LDL"(k28,species_30,species_33)/Plasma
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_617" name="Plasma" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_616" name="k28" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_615" name="species_30" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_610" name="species_33" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="Rate Law for Reverse Cholesterol Transport_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_107">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k29*species_30*species_34
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_621" name="k29" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_620" name="species_30" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_619" name="species_34" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="activitycalc" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_108">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        yintercepta+x*slopea
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_623" name="x" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_622" name="slopea" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_618" name="yintercepta" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="Function for r3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_109">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*DGactivity*DGperDNA*DNA/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_626" name="DGactivity" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_625" name="DGperDNA" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_624" name="DNA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_627" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_628" name="k3" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="Function for r7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_110">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k7*GPChoratio*GPCho
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_633" name="GPCho" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_632" name="GPChoratio" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_631" name="k7" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="Function for r5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_111">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k5*DGactivity*GPChoratio*GPCho/DNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_634" name="DGactivity" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_629" name="DNA" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_630" name="GPCho" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_635" name="GPChoratio" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_636" name="k5" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="Function for r10" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_112">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k10*DGactivity*AA/DNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_641" name="AA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_640" name="DGactivity" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_639" name="DNA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_638" name="k10" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="Function for r1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_113">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*onepmol*LPSactivity/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_644" name="LPSactivity" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_643" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_642" name="k1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_637" name="onepmol" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="Function for r6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_114">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k6*GPCho*GPChoratio*LPSactivity
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_648" name="GPCho" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_647" name="GPChoratio" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_646" name="LPSactivity" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_645" name="k6" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="Function for r12" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_115">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k12*AA*LPSactivity
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_652" name="AA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_651" name="LPSactivity" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_650" name="k12" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Gupta2009 - Eicosanoid Metabolism_1" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/40674"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/19486676"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-01-22T22:59:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>mano@sdsc.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Maurya</vCard:Family>
                <vCard:Given>Mano Ram</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of California, San Diego</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>dstephens@ucsd.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Stephens</vCard:Family>
                <vCard:Given>Daren L.</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of California, San Diego</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>edennis@ucsd.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Dennis</vCard:Family>
                <vCard:Given>Edward A.</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of California, San Diego</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>shankar@sdsc.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Subramaniam</vCard:Family>
                <vCard:Given>Shankar</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of California, San Diego</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>rbyrnes@sdsc.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Robert</vCard:Family>
                <vCard:Given>Byrnes</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>San Diego Supercomputer Center and Department of Bioengineering, UCSD</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>shakti@sdsc.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Gupta</vCard:Family>
                <vCard:Given>Shakti</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of California, San Diego</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2012-12-11T19:15:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1204240001"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000436"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006690"/>
        <rdf:li rdf:resource="http://identifiers.org/pw/PW:0000565"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Gupta2009 - Eicosanoid Metabolism</div>
    <div class="dc:description">
      <p>Integrated model of eicosanoid metabolism and signaling based on lipidomics flux analysis.</p>
    </div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/19486676" title="Access to this publication">An integrated model of eicosanoid metabolism and signaling based on lipidomics flux analysis.</a>
      </div>
      <div class="bibo:authorList">Gupta S, Maurya MR, Stephens DL, Dennis EA, Subramaniam S.</div>
      <div class="bibo:Journal">Biophys. J. 2009 Jun; 96(11):4542-51.</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>There is increasing evidence for a major and critical involvement of lipids in signal transduction and cellular trafficking, and this has motivated large-scale studies on lipid pathways. The Lipid Metabolites and Pathways Strategy consortium is actively investigating lipid metabolism in mammalian cells and has made available time-course data on various lipids in response to treatment with KDO(2)-lipid A (a lipopolysaccharide analog) of macrophage RAW 264.7 cells. The lipids known as eicosanoids play an important role in inflammation. We have reconstructed an integrated network of eicosanoid metabolism and signaling based on the KEGG pathway database and the literature and have developed a kinetic model. A matrix-based approach was used to estimate the rate constants from experimental data and these were further refined using generalized constrained nonlinear optimization. The resulting model fits the experimental data well for all species, and simulated enzyme activities were similar to their literature values. The quantitative model for eicosanoid metabolism that we have developed can be used to design experimental studies utilizing genetic and pharmacological perturbations to probe fluxes in lipid pathways.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on        <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
            and identified by:        <a href="http://identifiers.org/biomodels.db/BIOMD0000000436">BIOMD0000000436</a>
            .        </p>
      <p>To cite BioModels Database, please use:        <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models</a>
            .        </p>
    </div>
    <div class="dc:license">
      <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to        <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0 Public Domain Dedication</a>
            for more information.        </p>
    </div>
  </body>
    </Comment>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.lipidmaps.org/ns">
<pathwaydocument xmlns="http://www.lipidmaps.org/ns">
  <pathway authors="Robert Byrnes, Shakti Gupta, Mano Ram Maurya, Daren L. Stephens, Edward A. Dennis, and Shankar Subramaniam" breaks="0" descbreaks="0" description="Based upon Gupta et al., An Integrated Model of Eicosanoid Metabolism and Signaling Based on Lipidomics Flux Analysis, Biophys. J. vol. 96, pp. 4542 -4551, 2009." history="January 22, 2010" name="Eicosanoid metabolism" numlayers="0" pathwaytype="Metabolic">
    <participantlist>
      <participant breaks="0" description="Arachidonic acid-containing glycerophospholipids: DG(14:0/16:0)_14:0, DG(14:0/16:0)_16:0, DG(14:0/16:1)_14:0, DG(14:0/18:1)_14:0, DG(14:1/16:0)_16:0, DG(15:0/16:0)_15:0, DG(15:0/16:1)_15:0, DG(15:0/18:1)_15:0, DG(16:0/16:0)_16:0, DG(16:0/19:0)_16:0, DG(16:0/19:0)_19:0, DG(16:0/20:1)_16:0, DG(16:0/20:2)_16:0, DG(16:0/20:3)_16:0, DG(16:0/20:4)_16:0, DG(16:0/20:4)_20:4, DG(16:1/16:0)_16:0, DG(16:1/20:4)_20:4, DG(17:0/18:1)_17:0, DG(18:0/20:4)_20:4, DG(18:1/20:4)_20:4, DG(20:0/20:0)_20:0, DG(20:4/20:0)_20:4" index="0" layer="0" name="DG" participantid="165" species="DG">
        <smallmolecule charge="0" compoundtype="Small molecule" molecularweight="0.0" name="DG" recordid="-2179" />
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" index="1" layer="0" name="AA" participantid="166" species="AA">
        <smallmolecule charge="0" chemicalformula="C20H32O2" compoundtype="Small molecule" molecularweight="304.2402" name="Arachidonic acid" recordid="217" smallmoleculetype="Fatty Acyls">
          <synonymlist>
            <synonym name="(5Z,8Z,11Z,14Z)-Icosatetraenoic acid" />
            <synonym name="AA" />
            <synonym name="Arachidonate" />
            <synonym name="cis-5,8,11,14-Eicosatetraenoic acid" />
          </synonymlist>
          <datasource>
            <database name="Pathway" record="217" table="small_mol" />
          </datasource>
          <databaselist>
            <database host="unknown" name="KEGG" port="1521" record="C00219" table="unknown" />
            <database description="a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua" host="unknown" name="LIPID MAPS" port="0" record="LMFA01030001" table="unknown" user="file" />
          </databaselist>
        </smallmolecule>
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" index="2" layer="0" name="PGH2" participantid="167" species="PGH2">
        <smallmolecule charge="0" compoundtype="Small molecule" molecularweight="0.0" name="PGH2" recordid="-2453793" />
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" index="3" layer="0" name="PGE2" participantid="168" species="PGE2">
        <smallmolecule charge="0" chemicalformula="C20H32O5" compoundtype="Small molecule" molecularweight="352.224952" name="PGE2" recordid="13476" smallmoleculetype="Fatty Acyls">
          <synonymlist>
            <synonym name="9-oxo-11R,15S-dihydroxy-5Z,13E-prostadienoic acid" />
          </synonymlist>
          <datasource>
            <database name="Pathway" record="13476" table="small_mol" />
          </datasource>
          <databaselist>
            <database description="a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua" host="unknown" name="LIPID MAPS" port="0" record="LMFA03010003" table="unknown" user="file" />
          </databaselist>
        </smallmolecule>
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" index="4" layer="0" name="PGF2a" participantid="169" species="PGF2a">
        <smallmolecule charge="0" chemicalformula="C20H34O5" compoundtype="Small molecule" molecularweight="354.240603" name="PGF2a" recordid="13475" smallmoleculetype="Fatty Acyls">
          <synonymlist>
            <synonym name="9S,11R,15S-trihydroxy-5Z,13E-prostadienoic acid" />
            <synonym name="Amoglandin" />
            <synonym name="Cyclosin" />
            <synonym name="Dinoprost" />
            <synonym name="Enzaprost" />
            <synonym name="PGF2alpha" />
            <synonym name="Prostaglandin F2a" />
            <synonym name="Prostaglandin F2alpha" />
          </synonymlist>
          <datasource>
            <database name="Pathway" record="13475" table="small_mol" />
          </datasource>
          <databaselist>
            <database host="unknown" name="KEGG" port="1521" record="C00639" table="unknown" />
            <database description="a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua" host="unknown" name="LIPID MAPS" port="0" record="LMFA03010002" table="unknown" user="file" />
          </databaselist>
        </smallmolecule>
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" index="5" layer="0" name="11-HETE" participantid="170" species="HETE">
        <smallmolecule charge="0" chemicalformula="C20H32O3" compoundtype="Small molecule" molecularweight="320.24" name="11-HETE" recordid="13407" smallmoleculetype="Fatty Acyls">
          <synonymlist>
            <synonym name="11-hydroxy-5Z,8Z,11E,14Z-eicosatetraenoic acid" />
          </synonymlist>
          <datasource>
            <database name="Pathway" record="13407" table="small_mol" />
          </datasource>
          <databaselist>
            <database description="a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua" host="unknown" name="LIPID MAPS" port="0" record="LMFA03060085" table="unknown" user="file" />
          </databaselist>
        </smallmolecule>
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" index="6" layer="0" name="PGD2" participantid="171" species="PGD2">
        <smallmolecule charge="0" chemicalformula="C20H32O5" compoundtype="Small molecule" molecularweight="352.225" name="PGD2" recordid="660" smallmoleculetype="Fatty Acyls">
          <synonymlist>
            <synonym name="(5Z,13E)-(15S)-9alpha,15-Dihydroxy-11-oxoprosta-5,13-dienoate" />
            <synonym name="9S,15S-dihydroxy-11-oxo-5Z,13E-prostadienoic acid" />
            <synonym name="Prostaglandin D2" />
          </synonymlist>
          <datasource>
            <database name="Pathway" record="660" table="small_mol" />
          </datasource>
          <databaselist>
            <database host="unknown" name="KEGG" port="1521" record="C00696" table="unknown" />
            <database description="a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua" host="unknown" name="LIPID MAPS" port="0" record="LMFA03010004" table="unknown" user="file" />
          </databaselist>
        </smallmolecule>
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" index="7" layer="0" name="PGJ2" participantid="172" species="PGJ2">
        <smallmolecule charge="0" chemicalformula="C20H30O4" compoundtype="Small molecule" molecularweight="334.2144" name="PGJ2" recordid="4830" smallmoleculetype="Fatty Acyls">
          <synonymlist>
            <synonym name="11-oxo-15S-hydroxy-5Z,8Z,13E-prostatrienoic acid" />
            <synonym name="Prostaglandin J2" />
          </synonymlist>
          <datasource>
            <database name="Pathway" record="4830" table="small_mol" />
          </datasource>
          <databaselist>
            <database host="unknown" name="KEGG" port="1521" record="C05957" table="unknown" />
            <database description="a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua" host="unknown" name="LIPID MAPS" port="0" record="LMFA03010019" table="unknown" user="file" />
          </databaselist>
        </smallmolecule>
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" index="8" layer="0" name="15-deoxy-PGJ2" participantid="173" species="dPGJ2">
        <smallmolecule charge="0" chemicalformula="C20H28O3" compoundtype="Small molecule" molecularweight="316.2039" name="15-deoxy-PGJ2" recordid="12653" smallmoleculetype="Fatty Acyls">
          <synonymlist>
            <synonym name="11-oxo-5Z,9,12E,14E-prostatetraenoic acid" />
            <synonym name="15-deoxy-d-12,14-PGJ2" />
            <synonym name="15-Deoxy-delta-12,14-PGJ2" />
            <synonym name="15-deoxy-delta-12,14-PGJ2" />
            <synonym name="15-Deoxy-delta-12,14-prostaglandin J2" />
            <synonym name="15-Deoxy-PGJ2" />
          </synonymlist>
          <datasource>
            <database name="Pathway" record="12653" table="small_mol" />
          </datasource>
          <databaselist>
            <database host="unknown" name="KEGG" port="1521" record="C14717" table="unknown" />
            <database description="a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua" host="unknown" name="LIPID MAPS" port="0" record="LMFA03010021" table="unknown" user="file" />
          </databaselist>
        </smallmolecule>
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" index="9" layer="0" name="15-deoxy-PGD2" participantid="174" species="dPGD2">
        <smallmolecule charge="0" chemicalformula="C20H30O4" compoundtype="Small molecule" molecularweight="334.21" name="15-deoxy-PGD2" recordid="13405" smallmoleculetype="Fatty Acyls">
          <synonymlist>
            <synonym name="15-deoxy-d-12,14-PGD2" />
            <synonym name="9S-hydroxy-11-oxo-5Z,12E,14E-prostatrienoic acid" />
          </synonymlist>
          <datasource>
            <database name="Pathway" record="13405" table="small_mol" />
          </datasource>
          <databaselist>
            <database description="a file for temporary sample demo of EC data of KEGG via a local database, Dawn- Joshua" host="unknown" name="LIPID MAPS" port="0" record="LMFA03010051" table="unknown" user="file" />
          </databaselist>
        </smallmolecule>
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" description="Kdo2-lipid A" index="10" layer="0" name="LPS" participantid="176" species="LPS">
        <smallmolecule charge="0" compoundtype="Small molecule" molecularweight="0.0" name="LPS" recordid="-75599" />
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" description="Fatty acyls" index="11" layer="0" name="FA" participantid="177" species="FA">
        <smallmolecule charge="0" compoundtype="Small molecule" molecularweight="0.0" name="FA" recordid="-2235" />
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
      <participant breaks="0" description="Glycerophosphocholines" index="12" layer="0" name="GPCho" participantid="178" species="GPCho">
        <smallmolecule charge="0" compoundtype="Small molecule" molecularweight="0.0" name="GPCho" recordid="-68020993" />
        <compartment goaccession="null" name="Unspecified" typeid="1" typename="Not specified" />
      </participant>
    </participantlist>
    <interactionlist>
      <interaction breaks="0" descbreaks="0" index="0" interactionid="125" layer="0" name="Unnamed process" reaction="r5" reversible="false">
        <participantuselist>
          <participantuse index="0" nodeid="165" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="1" nodeid="166" participantusetype="Product" stoichiometry="1.0" type="participant" />
          <participantuse index="12" nodeid="178" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="1" interactionid="126" layer="0" name="Unnamed process" reaction="r15" reversible="false">
        <participantuselist>
          <participantuse index="2" nodeid="167" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="4" nodeid="169" participantusetype="Product" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="2" interactionid="127" layer="0" name="Unnamed process" reaction="r13" reversible="false">
        <participantuselist>
          <participantuse index="2" nodeid="167" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="3" nodeid="168" participantusetype="Product" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="3" interactionid="128" layer="0" name="Unnamed process" reaction="r8" reversible="false">
        <participantuselist>
          <participantuse index="1" nodeid="166" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="5" nodeid="170" participantusetype="Product" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="4" interactionid="129" layer="0" name="Unnamed process" reaction="r17" reversible="false">
        <participantuselist>
          <participantuse index="6" nodeid="171" participantusetype="Product" stoichiometry="1.0" type="participant" />
          <participantuse index="2" nodeid="167" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="5" interactionid="130" layer="0" name="Unnamed process" reaction="r18" reversible="false">
        <participantuselist>
          <participantuse index="6" nodeid="171" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="7" nodeid="172" participantusetype="Product" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="6" interactionid="131" layer="0" name="Unnamed process" reaction="r21" reversible="false">
        <participantuselist>
          <participantuse index="7" nodeid="172" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="8" nodeid="173" participantusetype="Product" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="7" interactionid="132" layer="0" name="Unnamed process" reaction="r19" reversible="false">
        <participantuselist>
          <participantuse index="6" nodeid="171" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="9" nodeid="174" participantusetype="Product" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="8" interactionid="133" layer="0" name="Unnamed process" reaction="r4" reversible="false">
        <participantuselist>
          <participantuse index="1" nodeid="166" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="9" interactionid="134" layer="0" name="Unnamed process" reaction="r1" reversible="false">
        <participantuselist>
          <participantuse index="11" nodeid="177" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="1" nodeid="166" participantusetype="Product" stoichiometry="1.0" type="participant" />
          <participantuse index="10" nodeid="176" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="10" interactionid="135" layer="0" name="Unnamed process" reaction="r6" reversible="false">
        <participantuselist>
          <participantuse index="12" nodeid="178" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="1" nodeid="166" participantusetype="Product" stoichiometry="1.0" type="participant" />
          <participantuse index="10" nodeid="176" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="11" interactionid="136" layer="0" name="Unnamed process" reaction="r2" reversible="false">
        <participantuselist>
          <participantuse index="11" nodeid="177" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="1" nodeid="166" participantusetype="Product" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="12" interactionid="137" layer="0" name="Unnamed process" reaction="r3" reversible="false">
        <participantuselist>
          <participantuse index="0" nodeid="165" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="1" nodeid="166" participantusetype="Product" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="13" interactionid="138" layer="0" name="Unnamed process" reaction="r7" reversible="false">
        <participantuselist>
          <participantuse index="12" nodeid="178" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="1" nodeid="166" participantusetype="Product" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="14" interactionid="139" layer="0" name="Unnamed process" reaction="r9" reversible="false">
        <participantuselist>
          <participantuse index="5" nodeid="170" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="15" interactionid="140" layer="0" name="Unnamed process" reaction="r12" reversible="false">
        <participantuselist>
          <participantuse index="1" nodeid="166" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="2" nodeid="167" participantusetype="Product" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="16" interactionid="141" layer="0" name="Unnamed process" reaction="r14" reversible="false">
        <participantuselist>
          <participantuse index="3" nodeid="168" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="17" interactionid="142" layer="0" name="Unnamed process" reaction="r16" reversible="false">
        <participantuselist>
          <participantuse index="4" nodeid="169" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="18" interactionid="143" layer="0" name="Unnamed process" reaction="r20" reversible="false">
        <participantuselist>
          <participantuse index="9" nodeid="174" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="19" interactionid="144" layer="0" name="Unnamed process" reaction="r22" reversible="false">
        <participantuselist>
          <participantuse index="8" nodeid="173" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="20" interactionid="145" layer="0" name="Unnamed process" reaction="r11" reversible="false">
        <participantuselist>
          <participantuse index="1" nodeid="166" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="2" nodeid="167" participantusetype="Product" stoichiometry="1.0" type="participant" />
          <participantuse index="10" nodeid="176" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
      <interaction breaks="0" descbreaks="0" index="21" interactionid="146" layer="0" name="Unnamed process" reaction="r10" reversible="false">
        <participantuselist>
          <participantuse index="0" nodeid="165" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
          <participantuse index="2" nodeid="167" participantusetype="Product" stoichiometry="1.0" type="participant" />
          <participantuse index="1" nodeid="166" participantusetype="Reactant" stoichiometry="1.0" type="participant" />
        </participantuselist>
      </interaction>
    </interactionlist>
  </pathway>
  <presentationlist>
    <presentation name="Eicosanoid metabolism" zoom="40.0">
      <participantstatelist>
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="0" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="-16.365397247540457" y="6.6840802570379925" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="1" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="-14.599307158861972" y="-11.015012344051065" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="2" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="-6.953248277153416" y="-11.117807855654009" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="3" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="-10.75519881570446" y="-18.859732815528226" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="4" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="-2.26154511958809" y="-18.709459214990623" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="5" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="-22.485665699120155" y="-11.154616540332174" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="6" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="0.9104888582141117" y="-11.168684911173285" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="7" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="2.5635138304854794" y="-15.32682582832506" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="8" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="7.947368621826172" x="3.0808284428919124" y="-21.981472020028033" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="9" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="8.210526466369629" x="2.9172982827781833" y="-4.79740194917878" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="10" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="-8.983625838178265" y="6.7289093114131875" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="11" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="-1.078145014273644" y="6.755577752169899" z="0.0" />
        <participantstate bodycolor1="a0bce5ff" bodycolor2="a0bce5ff" depth="0.0" fontclass="Java" gapsizechange="0.0" height="1.4314658641815186" indent1="0" indent2="0" indent3="0" index="12" javafontname="Arial" javafontsize="22" javafonttype="Plain" labelcolor="000000ff" resize="false" shadowcolor="333333ff" shape="0" tiltleft="0.0" tilttop="0.0" tiltup="0.0" verticalindent="-0.2" visible="true" width="6.400000095367432" x="-23.61618550192105" y="6.854393429136091" z="0.0" />
      </participantstatelist>
      <interactionstatelist>
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="0" interactionid="125" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-13.253649941727529" y="-1.9140168628798853" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="1" interactionid="126" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-4.723404104934222" y="-14.424766008782568" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="2" interactionid="127" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-8.615572330621392" y="-14.810744530150055" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="3" interactionid="128" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-18.495765217182758" y="-11.173720064345716" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="4" interactionid="129" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-2.81887330850307" y="-11.277180435313667" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="5" interactionid="130" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="1.7308871192540694" y="-13.91541989494799" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="6" interactionid="131" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="2.868327226187286" y="-18.984978072281418" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="7" interactionid="132" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="2.126518460796985" y="-7.862988193429144" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="8" interactionid="133" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-14.786721390205235" y="-14.070610451396073" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="9" interactionid="134" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-11.176585398622702" y="-2.0174772338406757" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="10" interactionid="135" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-17.45723294563217" y="-1.9657470483578923" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="11" interactionid="136" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-6.280647547011779" y="-2.224397975771808" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="12" interactionid="137" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-19.484843571046458" y="-2.2761281612594106" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="13" interactionid="138" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-22.056447291081575" y="-2.1726677902890397" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="14" interactionid="139" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-22.74880213877505" y="-14.225801007844376" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="15" interactionid="140" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-10.682046221689154" y="-10.966799322414698" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="16" interactionid="141" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-10.706387766281628" y="-22.06357815243579" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="17" interactionid="142" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-2.225426296190392" y="-22.243979757715667" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="18" interactionid="143" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="9.74686150752999" y="-4.762288832732273" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="19" interactionid="144" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="3.16488118134104" y="-24.89636275689204" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="20" interactionid="145" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-8.555527760890103" y="-1.9657470483602653" z="0.0" />
        <interactionstate blankcolorlength="0.0" blend="false" bodycolor="7f7f7fff" endcolor="7f7f7fff" endshape="Arrow" endsize="1" height="0.5" index="21" interactionid="146" linewidth="0.30000001192092896" shadowcolor="7f7f7fff" shape="0" startcolor="7f7f7fff" stipplecolorlength="0.0" stippled="false" tiltup="0.0" visible="true" width="0.5" x="-15.775799744069854" y="-1.8622866773899092" z="0.0" />
      </interactionstatelist>
    </presentation>
  </presentationlist>
  <experimentlist>
    <experiment date="01-27-2006" description="RAW cells Kdo - media" id="8" labname="Eicosanoids/Fatty acids (Core G), Department of Biochemistry, University of California-San Diego" limsid="BCG060127A" type="analyte" visible="true" />
    <experiment date="02-10-2006" description="RAW cells Kdo - media" id="10" labname="Eicosanoids/Fatty acids (Core G), Department of Biochemistry, University of California-San Diego" limsid="BCG060210A" type="analyte" visible="true" />
    <experiment date="02-01-2006" description="RAW cells Kdo - media" id="9" labname="Eicosanoids/Fatty acids (Core G), Department of Biochemistry, University of California-San Diego" limsid="BCG060201A" type="analyte" visible="true" />
    <experiment date="04-13-2007" description="RAW cells Kdo" id="1" labname="Macrophage Biology/Functional Genomics (Core D), University of California-San Diego" limsid="null" type="microarray" visible="true" />
  </experimentlist>
</pathwaydocument>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="c1" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005623" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="extracellular[merge][merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000290" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005576" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="Intestine[merge][merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000648" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="PeripheralTissue[merge][merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/fma/FMA:9637" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_4" name="cell[merge][merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_5" name="mitochondrial matrix[merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_5">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000290" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005759" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_6" name="cytoplasm[merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_6">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000290" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005737" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_7" name="cytoplasm[merge][merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_7">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005829" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_8" name="Excreted[merge][merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_9" name="HepaticTissue[merge][merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/fma/FMA:15815" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_10" name="Intake[merge][merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_11" name="Plasma[merge][merge]" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000131" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="FA" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:35366" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
        Fatty acyls</body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="HETE" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/lipidmaps/LMFA03060085" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="PGH2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15554" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="PGE2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/lipidmaps/LMFA03010003" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="PGF2a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15553" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00639" />
        <rdf:li rdf:resource="http://identifiers.org/lipidmaps/LMFA03010002" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="PGD2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15555" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00696" />
        <rdf:li rdf:resource="http://identifiers.org/lipidmaps/LMFA03010004" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="PGJ2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:27485" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C05957" />
        <rdf:li rdf:resource="http://identifiers.org/lipidmaps/LMFA03010019" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="dPGJ2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:34159" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C14717" />
        <rdf:li rdf:resource="http://identifiers.org/lipidmaps/LMFA03010021" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Arachidonic acid" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15843" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00219" />
        <rdf:li rdf:resource="http://identifiers.org/lipidmaps/LMFA01030001" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="LPS" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16412" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="DG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:49172" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
        Arachidonic acid-containing glycerophospholipids</body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="GPCho" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:49183" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
        Glycerophosphocholines</body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="dPGD2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/lipidmaps/LMFA03010051" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="1,3-bisphosphoglycerate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16001" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00236" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="IDLC" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01130" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="NADH" simulationType="assignment" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16908" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00004" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Nt\[merge\]],Reference=Value>-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[NAD(+)],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="NAD(+)" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15846" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00003" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="H+" simulationType="fixed" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000327" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:24636" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00080" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="ADP" simulationType="assignment" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16761" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00008" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[At\[merge\]],Reference=Value>-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[ATP],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="ATP" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15422" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00002" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="CO2" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16526" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00011" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="ACAT" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17984" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04180" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="pyruvate" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15361" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00022" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="insulin" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01308" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cell\[merge\]\[merge\]],Vector=Metabolites[Mass],Reference=Concentration>*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[sigma\[merge\]\[merge\]],Reference=Value>*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cell\[merge\]\[merge\]],Vector=Metabolites[glucose],Reference=Concentration>^2/(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[alpha\[merge\]\[merge\]],Reference=Value>+&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cell\[merge\]\[merge\]],Vector=Metabolites[glucose],Reference=Concentration>^2)-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k\[merge\]\[merge\]],Reference=Value>*&lt;CN=Root,Model=Topp2000_BetaCellMass_Diabetes,Vector=Compartments[cell],Vector=Metabolites[insulin],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="Mass" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000240" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000783" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000991" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[d0\[merge\]\[merge\]],Reference=Value>+&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[r1\[merge\]\[merge\]],Reference=Value>*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cell\[merge\]\[merge\]],Vector=Metabolites[glucose],Reference=Concentration>-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[r2\[merge\]\[merge\]],Reference=Value>*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cell\[merge\]\[merge\]],Vector=Metabolites[glucose],Reference=Concentration>^2)*&lt;CN=Root,Model=Topp2000_BetaCellMass_Diabetes,Vector=Compartments[cell],Vector=Metabolites[Mass],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="glucose" simulationType="ode" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17234" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00293" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[R0\[merge\]\[merge\]],Reference=Value>-(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Eg0\[merge\]\[merge\]],Reference=Value>+&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[si\[merge\]\[merge\]],Reference=Value>*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cell\[merge\]\[merge\]],Vector=Metabolites[insulin],Reference=Concentration>)*&lt;CN=Root,Model=Topp2000_BetaCellMass_Diabetes,Vector=Compartments[cell],Vector=Metabolites[glucose],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="oxygen" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15379" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00007" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="IC" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16113" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="PLDLRsS" simulationType="fixed" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T19:21:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="IBS" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:22868" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="HFC" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16113" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="ribulose 5-phosphate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17363" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="3-phosphoglycerate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17794" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00197" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="phosphate" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000327" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18367" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00009" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="X" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Fructose-1,6 bisphosphate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16905" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00354" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="HNHDLS" simulationType="fixed" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:10:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="LDLC" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01130" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="erythrose 4-phosphate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:48153" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="HDLC" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00341" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="CEH" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q6PIU2" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="NAD" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15846" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00003" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Ethanol" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16236" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00469" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="H+" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000327" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:24636" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00080" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="PLDLRD" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T20:11:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="Phosphoenolpyruvate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18021" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00074" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="CETP" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P11597" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="Pyruvate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15361" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00022" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="ribose 5-phosphate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17797" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="NADPH" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16474" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="xylulose 5-phosphate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16332" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="INHDLS" simulationType="fixed" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T16:07:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="Glycerol" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17754" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00116" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="ICS" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T15:32:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="PCE" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17002" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="Fructose 6 Phosphate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15946" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C05345" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="SRB1" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q8WTV0" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="EC" simulationType="reactions" compartment="Compartment_8" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16113" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="glyceraldehyde 3-phosphate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17138" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="HCS" simulationType="fixed" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T16:34:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="EBS" simulationType="reactions" compartment="Compartment_8" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_60">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:22868" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="2-phosphoglycerate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17835" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00631" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="citrate" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_62">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16947" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00158" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="oxaloacetate" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16452" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00036" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="VLDLC" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_64">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P98155" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="DC" simulationType="fixed" compartment="Compartment_10" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16113" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="PLDLRs" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_66">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01130" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="water" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15377" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00001" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="High energy phosphates" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_68">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16761" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00002" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00008" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15422" />
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16761" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="Glucose 6 Phosphate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17665" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00668" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="Extracellular Glucose" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_70">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17234" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00293" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="LCAT" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:61995" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04180" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="PCS" simulationType="fixed" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T20:08:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="NADP+" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18009" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="Succinate" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_74">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:30031" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="Glucose in Cytosol" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_75">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17234" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00293" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_76" name="LPL" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_76">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06858" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="PSS" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T20:39:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_78" name="6-phosphogluconate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_78">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16863" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="F2,6P" simulationType="fixed" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:28602" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00665" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_80" name="alpha-ketoglutarate" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_80">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16810" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00026" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="Acetaldehyde" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15343" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00084" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_82" name="HLDLRD" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T18:05:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="HLDLRs" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01130" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_84" name="dihydroxyacetone phosphate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_84">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16108" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="HSL" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q05469" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_86" name="HCE" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_86">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17002" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="acetyl-CoA" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15351" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00024" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_88" name="HLDLRsS" simulationType="fixed" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:30:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000291" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="NADH" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16908" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00004" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_90" name="PFC" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_90">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16113" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="D-6-phosphoglucono-delta-lactone" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_91">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16938" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_92" name="HBS" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_92">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:22868" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="sedoheptulose 7-phosphate" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000247" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15721" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_94" name="NHDL" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_94">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00341" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          µg/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          µg/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="k12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="k13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="k22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="DNA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000002" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          µg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="DGperDNA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000002" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pmol/µg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="onepmol" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="t0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="t1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="t2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="t3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="t4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="t5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="t6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="timevalue" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Reference=Time>+&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t0],Reference=Value>
        </Expression>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="zero" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="LPSactivity" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          activitycalc(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue],Reference=Value>,&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslope],Reference=Value>,&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSint],Reference=Value>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="LPSslope" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="LPSint" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="LPSslopezero" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="LPSslope1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="LPSslope3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="LPSintzero" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="LPSint1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="LPSint3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="DGactivity" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          activitycalc(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue],Reference=Value>,&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope],Reference=Value>,&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint],Reference=Value>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="DGint" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="DGslope" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="DGslopezero" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="DGslope1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="DGslope2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="DGslope3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="DGslope4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="DGslope5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="DGslope6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.2778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="DGintzero" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="DGint1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="DGint2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="DGint3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="DGint4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="DGint5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="DGint6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="GPChoratio" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          activitycalc(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue],Reference=Value>,&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope],Reference=Value>,&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint],Reference=Value>)/&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChointzero],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="GPChoint" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="GPChoslope" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          3.59971*pmol/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="GPChoslopezero" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          3.59971*pmol/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="GPChoslope1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          3.59971*pmol/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="GPChoslope2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          3.59971*pmol/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="GPChoslope3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          3.59971*pmol/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="GPChoslope4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          3.59971*pmol/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="GPChoslope5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          3.59971*pmol/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="GPChoslope6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          3.59971*pmol/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="GPChointzero" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="GPChoint1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="GPChoint2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="GPChoint3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="GPChoint4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="GPChoint5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="GPChoint6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="Nt[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="At[merge]" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="d0[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="r1[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="R0[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000393" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="Eg0[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="si[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="r2[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="sigma[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_85">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="alpha[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_86">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="k[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000009" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="sum of AXP conc[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_88">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00002" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00008" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00020" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15422" />
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16027" />
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16761" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="k_rel_GAPDH[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="Jresp[merge]" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[kresp\[merge\]],Reference=Value>*((&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Nt\[merge\]],Reference=Value>-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[NAD(+)],Reference=Concentration>)/(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[K\[merge\]],Reference=Value>+&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Nt\[merge\]],Reference=Value>-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[NAD(+)],Reference=Concentration>))/(1+exp(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[a\[merge\]],Reference=Value>*(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DeltaPsi\[merge\]],Reference=Value>-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DeltaPsim\[merge\]],Reference=Value>)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="kresp[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="K[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="a[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="DeltaPsi[merge]" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (10*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Jresp\[merge\]],Reference=Value>-3*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[JATP\[merge\]],Reference=Value>-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Jleak\[merge\]],Reference=Value>-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[JANT\[merge\]],Reference=Value>)/&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[C\[merge\]],Reference=Value>
        </Expression>
        <InitialExpression>
          150
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="JATP[merge]" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[kATP\[merge\]],Reference=Value>*(2/(1+exp(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[b\[merge\]],Reference=Value>*(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[ATP],Reference=Concentration>-&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[ATPcrit\[merge\]],Reference=Value>)))-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="kATP[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="b[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="ATPcrit[merge]" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[At\[merge\]],Reference=Value>/(1+exp(-3*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DeltaGtransport\[merge\]],Reference=Value>/(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[gas constant\[merge\]],Reference=Value>*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[absolute temperature\[merge\]],Reference=Value>))/(&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Kapp\[merge\]],Reference=Value>*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[phosphate],Reference=Concentration>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="DeltaGtransport[merge]" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.2*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Faraday constant\[merge\]],Reference=Value>*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DeltaPsi\[merge\]],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="Faraday constant[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="gas constant[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="absolute temperature[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="Kapp[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="Jleak[merge]" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[kleak\[merge\]],Reference=Value>*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DeltaPsi\[merge\]],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="kleak[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="JANT[merge]" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[kANT\[merge\]],Reference=Value>*&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[ATP],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="kANT[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="C[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="DeltaPsim[merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="k_rel_TPI[merge][merge]" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_110">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="ratio_NADPH_NADP[merge][merge]" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_111">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[NADPH],Reference=Concentration>/&lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[NADP+],Reference=Concentration>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="r2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6954" name="k1" value="1e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="r3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6955" name="DGactivity" value="1"/>
          <Constant key="Parameter_8250" name="DGperDNA" value="1"/>
          <Constant key="Parameter_8249" name="DNA" value="1"/>
          <Constant key="Parameter_8248" name="k3" value="1e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_109" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="r7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8247" name="GPChoratio" value="1"/>
          <Constant key="Parameter_5836" name="k7" value="1e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_110" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="r5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8279" name="DGactivity" value="1"/>
          <Constant key="Parameter_8276" name="DNA" value="1"/>
          <Constant key="Parameter_5837" name="GPChoratio" value="1"/>
          <Constant key="Parameter_5838" name="k5" value="1e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_111" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="r11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5834" name="k1" value="0.111"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="r10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5835" name="DGactivity" value="1"/>
          <Constant key="Parameter_8280" name="DNA" value="1"/>
          <Constant key="Parameter_8278" name="k10" value="0.024"/>
        </ListOfConstants>
        <KineticLaw function="Function_112" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_641">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="r8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7815" name="k1" value="0.007"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="r4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7814" name="k1" value="1e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="r9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7792" name="k1" value="0.187"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="r13" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7813" name="k1" value="0.204"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="r14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7811" name="k1" value="1e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="r15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7795" name="k1" value="0.061"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="r16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7794" name="k1" value="1e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="r17" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8277" name="k1" value="3.116"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="r18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7793" name="k1" value="0.054"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="r19" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7791" name="k1" value="0.029"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="r20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6197" name="k1" value="0.014"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="r21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6195" name="k1" value="0.034"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="r22" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7778" name="k1" value="0.116"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="r1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6842" name="LPSactivity" value="0"/>
          <Constant key="Parameter_7777" name="k1" value="355.637"/>
          <Constant key="Parameter_6633" name="onepmol" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_113" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="r6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6630" name="GPChoratio" value="1"/>
          <Constant key="Parameter_6194" name="LPSactivity" value="0"/>
          <Constant key="Parameter_7812" name="k6" value="0.33"/>
        </ListOfConstants>
        <KineticLaw function="Function_114" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_645">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="r12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6629" name="LPSactivity" value="0"/>
          <Constant key="Parameter_5743" name="k12" value="0.098"/>
        </ListOfConstants>
        <KineticLaw function="Function_115" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Glycerol 3-phosphate dehydrogenase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000200" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.8" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_84" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7775" name="KeqG3PDH" value="4300"/>
          <Constant key="Parameter_5746" name="KeqTPI" value="0.045"/>
          <Constant key="Parameter_6625" name="KmG3PDHDHAP" value="0.4"/>
          <Constant key="Parameter_6196" name="KmG3PDHGLY" value="1"/>
          <Constant key="Parameter_6628" name="KmG3PDHNAD" value="0.93"/>
          <Constant key="Parameter_6626" name="KmG3PDHNADH" value="0.023"/>
          <Constant key="Parameter_6627" name="VmG3PDH" value="70.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Parameter_7775"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Parameter_5746"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Parameter_6625"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_6196"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_6628"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_6626"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_6627"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="v8[merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000185" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0015729" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6193" name="k1" value="3.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_6193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Hexokinase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.1.2" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00299" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1318" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6632" name="KeqAK" value="0.45"/>
          <Constant key="Parameter_7779" name="KeqGLK" value="3800"/>
          <Constant key="Parameter_7776" name="KmGLKADP" value="0.23"/>
          <Constant key="Parameter_8672" name="KmGLKATP" value="0.15"/>
          <Constant key="Parameter_6845" name="KmGLKG6P" value="30"/>
          <Constant key="Parameter_6631" name="KmGLKGLCi" value="0.08"/>
          <Constant key="Parameter_8150" name="SUMAXP" value="4.1"/>
          <Constant key="Parameter_8671" name="VmGLK" value="226.452"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_6632"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_7779"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_7776"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_8672"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_6845"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_6631"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Parameter_8671"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="v6[merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000403" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00355" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8148" name="Keq" value="0.3975"/>
          <Constant key="Parameter_8673" name="k6" value="0.0032"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_8148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_8673"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Glyceraldehyde 3-phosphate dehydrogenase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000200" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.2.1.12" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01061" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1847" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6634" name="KeqGAPDH" value="0.005"/>
          <Constant key="Parameter_8147" name="KmGAPDHBPG" value="0.0098"/>
          <Constant key="Parameter_8675" name="KmGAPDHGAP" value="0.21"/>
          <Constant key="Parameter_8674" name="KmGAPDHNAD" value="0.09"/>
          <Constant key="Parameter_8149" name="KmGAPDHNADH" value="0.06"/>
          <Constant key="Parameter_5745" name="VmGAPDHf" value="1184.52"/>
          <Constant key="Parameter_5747" name="k_rel_GAPDH" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Parameter_6634"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Parameter_8147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Parameter_8675"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Parameter_8674"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Parameter_8149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Parameter_5745"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Glucose transport[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000185" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_2092" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0046323" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8146" name="KeqGLT" value="1"/>
          <Constant key="Parameter_5744" name="KmGLTGLCi" value="1.1918"/>
          <Constant key="Parameter_6844" name="KmGLTGLCo" value="1.1918"/>
          <Constant key="Parameter_8014" name="VmGLT" value="97.264"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="Parameter_8146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Parameter_5744"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Parameter_6844"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Parameter_8014"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="CETP Mediated TransferTo LDL[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030301" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8011" name="k28" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_106" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="Compartment_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Parameter_8011"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Phosphoglycerate kinase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.2.3" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01512" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1771" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6846" name="KeqAK" value="0.45"/>
          <Constant key="Parameter_6843" name="KeqPGK" value="3200"/>
          <Constant key="Parameter_8012" name="KmPGKADP" value="0.2"/>
          <Constant key="Parameter_8039" name="KmPGKATP" value="0.3"/>
          <Constant key="Parameter_8036" name="KmPGKBPG" value="0.003"/>
          <Constant key="Parameter_8015" name="KmPGKP3G" value="0.53"/>
          <Constant key="Parameter_8013" name="SUMAXP" value="4.1"/>
          <Constant key="Parameter_8040" name="VmPGK" value="1306.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Parameter_6846"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Parameter_6843"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Parameter_8012"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Parameter_8039"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_8036"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Parameter_8015"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Parameter_8040"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="vTransk1[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000182" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0004802" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01641" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8037" name="KmGA3P" value="0.1"/>
          <Constant key="Parameter_8038" name="KmRibose5P" value="0.1"/>
          <Constant key="Parameter_6784" name="KmSeduhept" value="0.15"/>
          <Constant key="Parameter_6781" name="KmXyl5P" value="0.15"/>
          <Constant key="Parameter_6785" name="VmTransk1f" value="4"/>
          <Constant key="Parameter_6783" name="VmTransk1r" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Parameter_8037"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Parameter_8038"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Parameter_6784"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Parameter_6781"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Parameter_6785"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Parameter_6783"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Receptor Dependent Peripheral Uptake[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T19:00:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6782" name="k20" value="0.00675"/>
        </ListOfConstants>
        <KineticLaw function="Function_97" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="Parameter_6782"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="Receptor Independent Peripheral Uptake[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T19:10:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4933" name="k1" value="5e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4933"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="vGluDH[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000200" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01528" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0004616" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4930" name="KiNADPH" value="0.03"/>
          <Constant key="Parameter_4934" name="KmGluconate" value="0.02"/>
          <Constant key="Parameter_4932" name="KmNADP" value="0.03"/>
          <Constant key="Parameter_4931" name="VmGluDH" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Parameter_4930"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Parameter_4934"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Parameter_4932"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Parameter_4931"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="vTransk2[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000182" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01830" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0004802" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7349" name="KmEry4P" value="0.09"/>
          <Constant key="Parameter_7352" name="KmF6P" value="1.1"/>
          <Constant key="Parameter_7351" name="KmGA3P" value="2.1"/>
          <Constant key="Parameter_7353" name="KmXyl5P" value="0.16"/>
          <Constant key="Parameter_6515" name="VmTransk2f" value="3.2"/>
          <Constant key="Parameter_6516" name="VmTransk2r" value="43"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Parameter_7349"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Parameter_7352"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Parameter_7351"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="Parameter_7353"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Parameter_6515"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Parameter_6516"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="Intestinal Cholesterol Synthesis[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006695" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6514" name="ICSmax" value="100"/>
          <Constant key="Parameter_6518" name="ICt" value="3120"/>
          <Constant key="Parameter_7350" name="IS" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Intestine\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_6514"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Parameter_6518"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Parameter_7350"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Billary Cholesterol Release[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T16:19:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6517" name="BCRmax" value="2000"/>
          <Constant key="Parameter_6033" name="BCRt" value="55326"/>
          <Constant key="Parameter_6030" name="BS" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Parameter_6517"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_6033"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Parameter_6030"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="Bile Salt Release[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0015721" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6034" name="k1" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_6034"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="Aldolase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000182" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/4.1.2.13" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01070" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1602" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6032" name="KeqALD" value="0.069"/>
          <Constant key="Parameter_7516" name="KmALDDHAP" value="2.4"/>
          <Constant key="Parameter_7514" name="KmALDF16P" value="0.3"/>
          <Constant key="Parameter_7511" name="KmALDGAP" value="2"/>
          <Constant key="Parameter_7515" name="KmALDGAPi" value="10"/>
          <Constant key="Parameter_6031" name="VmALD" value="322.258"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_6032"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Parameter_7516"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Parameter_7514"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Parameter_7511"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Parameter_7515"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Parameter_6031"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="Glucose-6-phosphate isomerase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000377" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.3.1.9" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00771" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_116" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8603" name="KeqPGI" value="0.314"/>
          <Constant key="Parameter_8605" name="KmPGIF6P" value="0.3"/>
          <Constant key="Parameter_8601" name="KmPGIG6P" value="1.4"/>
          <Constant key="Parameter_7735" name="VmPGI" value="339.677"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Parameter_8603"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_8605"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_8601"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_7735"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="Peripheral Cholesterol Storage[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T19:34:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6840" name="k23" value="0.017386"/>
        </ListOfConstants>
        <KineticLaw function="Function_100" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="Parameter_6840"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="vresp[merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000201" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R07171" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_26" stoichiometry="0.5"/>
          <Substrate metabolite="Metabolite_43" stoichiometry="11"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="10"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7737" name="Jresp" value="0.120822"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="LDL Cholesterol Formation[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:55:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7739" name="k17" value="0.38"/>
        </ListOfConstants>
        <KineticLaw function="Function_95" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="Compartment_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Parameter_7739"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="Pyruvate kinase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.1.40" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00200" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1911" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7736" name="KeqAK" value="0.45"/>
          <Constant key="Parameter_8602" name="KeqPYK" value="6500"/>
          <Constant key="Parameter_8604" name="KmPYKADP" value="0.53"/>
          <Constant key="Parameter_5260" name="KmPYKATP" value="1.5"/>
          <Constant key="Parameter_5258" name="KmPYKPEP" value="0.14"/>
          <Constant key="Parameter_5257" name="KmPYKPYR" value="21"/>
          <Constant key="Parameter_5261" name="SUMAXP" value="4.1"/>
          <Constant key="Parameter_5259" name="VmPYK" value="1088.71"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Parameter_7736"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Parameter_8602"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Parameter_8604"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_5260"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Parameter_5258"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_5257"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Parameter_5259"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="Bile Salt Synthesis[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006699" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5253" name="k5" value="2.66"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Compartment_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Parameter_5253"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="VLDL Cholesterol ReUptake[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:37:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5262" name="k1" value="0.0496"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5262"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="Phosphofructokinase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.1.11" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00756" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_736" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6353" name="CPFKAMP" value="0.0845"/>
          <Constant key="Parameter_6355" name="CPFKATP" value="3"/>
          <Constant key="Parameter_6354" name="CPFKF16BP" value="0.397"/>
          <Constant key="Parameter_5255" name="CPFKF26BP" value="0.0174"/>
          <Constant key="Parameter_6356" name="CiPFKATP" value="100"/>
          <Constant key="Parameter_5254" name="KPFKAMP" value="0.0995"/>
          <Constant key="Parameter_6357" name="KPFKF16BP" value="0.111"/>
          <Constant key="Parameter_7738" name="KPFKF26BP" value="0.000682"/>
          <Constant key="Parameter_6837" name="KeqAK" value="0.45"/>
          <Constant key="Parameter_6841" name="KiPFKATP" value="0.65"/>
          <Constant key="Parameter_4654" name="KmPFKATP" value="0.71"/>
          <Constant key="Parameter_4655" name="KmPFKF6P" value="0.1"/>
          <Constant key="Parameter_7513" name="L0" value="0.66"/>
          <Constant key="Parameter_7512" name="SUMAXP" value="4.1"/>
          <Constant key="Parameter_4651" name="VmPFK" value="182.903"/>
          <Constant key="Parameter_4657" name="gR" value="5.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Parameter_6353"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Parameter_6355"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Parameter_6354"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_5255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Parameter_6356"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_5254"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Parameter_6357"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Parameter_7738"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_6837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Parameter_6841"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Parameter_4654"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Parameter_4655"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Parameter_7513"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Parameter_4651"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Parameter_4657"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="vR5PI[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000377" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4656" name="KmRibu5P" value="1.5"/>
          <Constant key="Parameter_4659" name="KmXyl" value="1.5"/>
          <Constant key="Parameter_4658" name="VmR5PIf" value="1039"/>
          <Constant key="Parameter_4653" name="VmR5PIr" value="1039"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Parameter_4656"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Parameter_4659"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Parameter_4658"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Parameter_4653"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="Succinate synthesis[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000205" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006105" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="3"/>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4652" name="KSUCC" value="21.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Parameter_4652"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="Peripheral Cholesterol Synthesis[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T20:01:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6932" name="PCSS" value="5"/>
          <Constant key="Parameter_6928" name="PCSmax" value="500"/>
          <Constant key="Parameter_4682" name="PPCt" value="80342"/>
        </ListOfConstants>
        <KineticLaw function="Function_104" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Parameter_6932"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Parameter_6928"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="Parameter_4682"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="vPPI[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000377" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01056" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0004751" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6930" name="KmRibo5P" value="1.6"/>
          <Constant key="Parameter_6927" name="KmRibu5P" value="1.6"/>
          <Constant key="Parameter_6931" name="VmPPIf" value="3458"/>
          <Constant key="Parameter_6929" name="VmPPIr" value="3458"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Parameter_6930"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Parameter_6927"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Parameter_6931"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Parameter_6929"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="vANT[merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000330" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00086" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4683" name="v" value="0.190484"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="v2[merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000399" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00209" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5513" name="k1" value="0.152"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5513"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="Receptor Independent Hepatic Uptake[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T18:13:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5515" name="k1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5515"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="v5[merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000399" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00355" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5511" name="At" value="4.16"/>
          <Constant key="Parameter_4679" name="k5" value="0.082361"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4679"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="vATP[merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000216" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R05227" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
          <Product metabolite="Metabolite_43" stoichiometry="3"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6925" name="JATP" value="0.0941811"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="IDL Cholesterol ReUptake[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:49:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4681" name="k1" value="0.054"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4681"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="IDL Cholesterol Formation[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:42:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_64" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4684" name="k15" value="0.43"/>
        </ListOfConstants>
        <KineticLaw function="Function_94" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Compartment_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Parameter_4684"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="HDL Cholesterol Formation[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T19:51:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4680" name="k26" value="1.5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_103" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="Parameter_4680"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="v3[merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000210" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00351" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5512" name="k1" value="57.142"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5512"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_63"/>
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="v4[merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000399" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00709" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5514" name="k1" value="0.053"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5514"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_62"/>
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="Hepatic Nascent HDL Synthesis[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0042158" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6953" name="k11" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_91" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Parameter_6953"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="Hepatic LDLR Synthesis[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:19:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6961" name="khrs" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_92" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Compartment_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Parameter_6961"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="Peripheral LDLR Synthesis[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T19:14:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6962" name="kprs" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_98" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="Parameter_6962"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="v6PGL[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000376" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0017057" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R02035" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8549" name="Km6PGL" value="0.8"/>
          <Constant key="Parameter_6956" name="Vm6PGL" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Parameter_8549"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Parameter_6956"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="vTPI[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000377" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01015" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0004807" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.3.1.1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6959" name="KmDHAP" value="1.23"/>
          <Constant key="Parameter_6957" name="KmGA3P" value="1.27"/>
          <Constant key="Parameter_8547" name="VmDHAP" value="10900"/>
          <Constant key="Parameter_8546" name="VmGA3P" value="555"/>
          <Constant key="Parameter_8550" name="k_rel_TPI" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Parameter_6959"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Parameter_6957"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Parameter_8547"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Parameter_8546"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="Peripheral Steroid Production[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T19:48:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6958" name="k1" value="0.0005"/>
        </ListOfConstants>
        <KineticLaw function="Function_102" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="Parameter_6958"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="Intestinal Nascent HDL Synthesis[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0042158" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6838" name="k8" value="0.0005"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Parameter_6838"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="Reverse Cholesterol Transport[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043691" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_56" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6839" name="k29" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_107" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="Parameter_6839"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="Cholesterol Excretion[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0033344" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6960" name="k7" value="0.0005286"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_6960"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="vNADPH[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000201" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070995" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8548" name="k1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_8548"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="CETP Mediated Transfer To VLDL[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030301" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6922" name="k27" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_105" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="Compartment_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Parameter_6922"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="vG6PDH[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000200" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00835" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.49" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0004345" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6926" name="KiNADPH" value="0.017"/>
          <Constant key="Parameter_5256" name="KmG6P" value="0.04"/>
          <Constant key="Parameter_4969" name="KmNADP" value="0.02"/>
          <Constant key="Parameter_4970" name="VmG6PDH" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Parameter_6926"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Parameter_5256"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Parameter_4969"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Parameter_4970"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="v1[merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000185" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006848" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4972" name="v" value="0.038"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_4972"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="Release of Stored Cholesterol[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T16:53:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4968" name="k10" value="5.998"/>
        </ListOfConstants>
        <KineticLaw function="Function_90" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Compartment_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Parameter_4968"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="ATPase activity[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000376" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.6.1.3" />
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016887" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4971" name="KATPASE" value="39.5"/>
          <Constant key="Parameter_6833" name="KeqAK" value="0.45"/>
          <Constant key="Parameter_6834" name="SUMAXP" value="4.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Parameter_4971"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Parameter_6833"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="Pyruvate decarboxylase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000399" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/4.1.1.1" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00224" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6836" name="KmPDCPYR" value="4.33"/>
          <Constant key="Parameter_6832" name="VmPDC" value="174.194"/>
          <Constant key="Parameter_6835" name="nPDC" value="1.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Parameter_6836"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Parameter_6832"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Parameter_6835"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="vTransald[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000182" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0004801" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01827" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5392" name="KmEry4P" value="0.018"/>
          <Constant key="Parameter_5393" name="KmF6P" value="0.32"/>
          <Constant key="Parameter_5395" name="KmGA3P" value="0.22"/>
          <Constant key="Parameter_5391" name="KmSeduhept" value="0.18"/>
          <Constant key="Parameter_5394" name="VmTransaldf" value="55"/>
          <Constant key="Parameter_8507" name="VmTransaldr" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Parameter_5392"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Parameter_5393"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Parameter_5395"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Parameter_5391"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Parameter_5394"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Parameter_8507"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="Enolase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000211" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/4.2.1.11" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00658" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1400" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8508" name="KeqENO" value="6.7"/>
          <Constant key="Parameter_8510" name="KmENOP2G" value="0.04"/>
          <Constant key="Parameter_8506" name="KmENOPEP" value="0.5"/>
          <Constant key="Parameter_8509" name="VmENO" value="365.806"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Parameter_8508"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Parameter_8510"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Parameter_8506"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_8509"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="Cholesterol Absorption[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030299" />
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4494" name="k6" value="0.0005286"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Parameter_4494"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="Hepatic Cholesterol Synthesis[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T16:27:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4495" name="HCSmax" value="500"/>
          <Constant key="Parameter_4500" name="HCSt" value="93925"/>
          <Constant key="Parameter_4493" name="HS" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_88" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_4495"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_4500"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="Parameter_4493"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Compartment_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="Peripheral LDL Receptor Degradation[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T19:27:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4499" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_99" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="Parameter_4499"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="Phosphoglycerate mutase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000377" />
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.4.2.1" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01518" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_576" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4498" name="KeqPGM" value="0.19"/>
          <Constant key="Parameter_4497" name="KmPGMP2G" value="0.08"/>
          <Constant key="Parameter_4496" name="KmPGMP3G" value="1.2"/>
          <Constant key="Parameter_6535" name="VmPGM" value="2525.81"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Parameter_4498"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Parameter_4497"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Parameter_4496"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Parameter_6535"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="v7[merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000210" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00344" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6536" name="k1" value="0.04"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_6536"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="VLDL Cholesterol Formation[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:14:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6538" name="k1" value="0.016"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_6538"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="Release of Stored Peripheral Cholesterol[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T19:42:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6534" name="k24" value="0.1068"/>
        </ListOfConstants>
        <KineticLaw function="Function_101" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="Parameter_6534"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="Hepatic LDL Receptor Degradation[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T17:33:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6537" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_93" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Compartment_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Parameter_6537"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="Bile Salt Return[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0015721" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8187" name="k1" value="4.29"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_8187"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="Ingestion[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070508" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8188" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_8188"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="Hepatic Cholesterol Storage[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T16:47:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8190" name="k9" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default" scalingCompartment="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Compartment_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Parameter_8190"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="Bile Salt Excretion[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0015721" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8186" name="k1" value="0.856"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_8186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="vleak[merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_91">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000185" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8189" name="Jleak" value="0.0639"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="Alcohol dehydrogenase[merge][merge]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_92">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000200" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_799" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.2" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00746" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7455" name="KeqADH" value="6.9e-05"/>
          <Constant key="Parameter_7456" name="KiADHACE" value="1.1"/>
          <Constant key="Parameter_7458" name="KiADHETOH" value="90"/>
          <Constant key="Parameter_7454" name="KiADHNAD" value="0.92"/>
          <Constant key="Parameter_7457" name="KiADHNADH" value="0.031"/>
          <Constant key="Parameter_7360" name="KmADHACE" value="1.11"/>
          <Constant key="Parameter_7361" name="KmADHETOH" value="17"/>
          <Constant key="Parameter_7363" name="KmADHNAD" value="0.17"/>
          <Constant key="Parameter_7359" name="KmADHNADH" value="0.11"/>
          <Constant key="Parameter_7362" name="VmADH" value="810"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Parameter_7455"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Parameter_7456"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Parameter_7458"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Parameter_7454"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Parameter_7457"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Parameter_7360"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Parameter_7361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Parameter_7363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Parameter_7359"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Parameter_7362"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="Receptor Dependent Hepatic Uptake[merge][merge]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-21T18:02:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4742" name="k18" value="0.068"/>
        </ListOfConstants>
        <KineticLaw function="Function_96" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="Parameter_4742"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="Event" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue],Reference=Value> gt &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t0],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSintzero],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslopezero],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGintzero],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslopezero],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChointzero],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslopezero],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="Event_2" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue],Reference=Value> ge &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t1],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSint1],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslope1],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint1],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope1],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint1],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope1],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="Event_3" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue],Reference=Value> ge &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t2],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint2],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope2],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint2],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="Event_4" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue],Reference=Value> ge &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t3],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSint3],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslope3],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint3],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope3],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint3],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope3],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="Event_5" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue],Reference=Value> ge &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t4],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint4],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope4],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint4],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope4],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="Event_6" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue],Reference=Value> ge &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t5],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint5],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope5],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint5],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope5],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="Event_7" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue],Reference=Value> ge &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t6],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint6],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope6],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint6],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope]">
            <Expression>
              &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope6],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[extracellular\[merge\]\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Intestine\[merge\]\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cell\[merge\]\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Excreted\[merge\]\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Intake\[merge\]\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[FA]" value="6.0221407599999992e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[HETE]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[PGH2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[PGE2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[PGF2a]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[PGD2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[PGJ2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[dPGJ2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[Arachidonic acid]" value="1.50553519e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[LPS]" value="3.0110703799999996e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[DG]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[GPCho]" value="6.0221407599999992e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[c1],Vector=Metabolites[dPGD2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[1\,3-bisphosphoglycerate]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]],Vector=Metabolites[IDLC]" value="1.2044281519999997e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[NADH]" value="1.2887381226400005e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[NAD(+)]" value="5.1549524905600001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]],Vector=Metabolites[H+]" value="6.0221407599999992e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[ADP]" value="3.757815834240003e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[ATP]" value="2.1294289727359996e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[extracellular\[merge\]\[merge\]],Vector=Metabolites[CO2]" value="6.0221407599999992e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[ACAT]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[pyruvate]" value="9.2740967703999995e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cell\[merge\]\[merge\]],Vector=Metabolites[insulin]" value="1.6861994127999999e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cell\[merge\]\[merge\]],Vector=Metabolites[Mass]" value="2.2281920811999994e+25" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cell\[merge\]\[merge\]],Vector=Metabolites[glucose]" value="1.5055351899999997e+26" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[oxygen]" value="6.0221407599999992e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Intestine\[merge\]\[merge\]],Vector=Metabolites[IC]" value="1.8969743393999999e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]],Vector=Metabolites[PLDLRsS]" value="3.4636944795215988e+26" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Intestine\[merge\]\[merge\]],Vector=Metabolites[IBS]" value="2.8123397349199994e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[HFC]" value="3.613284456e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[ribulose 5-phosphate]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[3-phosphoglycerate]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[phosphate]" value="1.46940234544e+24" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[X]" value="6.0221407600000029e+22" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[Fructose-1\,6 bisphosphate]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[HNHDLS]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]],Vector=Metabolites[LDLC]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[erythrose 4-phosphate]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]],Vector=Metabolites[HDLC]" value="2.7099633419999994e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[CEH]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[NAD]" value="7.2265689120000001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[extracellular\[merge\]\[merge\]],Vector=Metabolites[Ethanol]" value="3.0110703799999999e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[H+]" value="6.0221407599999992e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]],Vector=Metabolites[PLDLRD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[Phosphoenolpyruvate]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]],Vector=Metabolites[CETP]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[Pyruvate]" value="2.0234392953600004e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[ribose 5-phosphate]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[NADPH]" value="9.6354252160000046e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[xylulose 5-phosphate]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]],Vector=Metabolites[INHDLS]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[extracellular\[merge\]\[merge\]],Vector=Metabolites[Glycerol]" value="9.0332111400000001e+22" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Intestine\[merge\]\[merge\]],Vector=Metabolites[ICS]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]],Vector=Metabolites[PCE]" value="5.6385303935880003e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[Fructose 6 Phosphate]" value="1.6861994127999997e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[SRB1]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Excreted\[merge\]\[merge\]],Vector=Metabolites[EC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[glyceraldehyde 3-phosphate]" value="3.0110703800000014e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[HCS]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Excreted\[merge\]\[merge\]],Vector=Metabolites[EBS]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[2-phosphoglycerate]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[citrate]" value="2.6497419343999995e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[oxaloacetate]" value="3.0110703800000001e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]],Vector=Metabolites[VLDLC]" value="1.2044281519999997e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Intake\[merge\]\[merge\]],Vector=Metabolites[DC]" value="1.8307307910400001e+26" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]],Vector=Metabolites[PLDLRs]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[water]" value="6.0221407599999992e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[High energy phosphates]" value="3.0110703799999992e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[Glucose 6 Phosphate]" value="8.3707756564000039e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[extracellular\[merge\]\[merge\]],Vector=Metabolites[Extracellular Glucose]" value="3.0110703799999999e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]],Vector=Metabolites[LCAT]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]],Vector=Metabolites[PCS]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[NADP+]" value="2.4088563040000012e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[extracellular\[merge\]\[merge\]],Vector=Metabolites[Succinate]" value="6.0221407600000029e+22" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[Glucose in Cytosol]" value="5.2392624611999999e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]],Vector=Metabolites[LPL]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]],Vector=Metabolites[PSS]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[6-phosphogluconate]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[F2\,6P]" value="1.204428152e+22" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[alpha-ketoglutarate]" value="1.354981671e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[Acetaldehyde]" value="2.4088563040000001e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[HLDLRD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[HLDLRs]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[dihydroxyacetone phosphate]" value="6.0221407599999992e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]],Vector=Metabolites[HSL]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[HCE]" value="6.0221407599999996e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[mitochondrial matrix\[merge\]],Vector=Metabolites[acetyl-CoA]" value="3.7939486788000003e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[HLDLRsS]" value="3.6132844559999989e+26" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[NADH]" value="2.3486348964000006e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[PeripheralTissue\[merge\]\[merge\]],Vector=Metabolites[PFC]" value="3.4636944795216001e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[D-6-phosphoglucono-delta-lactone]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[HepaticTissue\[merge\]\[merge\]],Vector=Metabolites[HBS]" value="2.408856304e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[cytoplasm\[merge\]\[merge\]],Vector=Metabolites[sedoheptulose 7-phosphate]" value="6.0221407600000029e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Compartments[Plasma\[merge\]\[merge\]],Vector=Metabolites[NHDL]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k1]" value="355.637" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k2]" value="1.0000000000000001e-15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k3]" value="1.0000000000000001e-15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k4]" value="1.0000000000000001e-15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k5]" value="1.0000000000000001e-15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k6]" value="0.33000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k7]" value="1.0000000000000001e-15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k8]" value="0.0070000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k9]" value="0.187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k10]" value="0.024" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k11]" value="0.111" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k12]" value="0.098000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k13]" value="0.20399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k14]" value="1.0000000000000001e-15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k15]" value="0.060999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k16]" value="1.0000000000000001e-15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k17]" value="3.1160000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k18]" value="0.053999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k19]" value="0.029000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k20]" value="0.014" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k21]" value="0.034000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k22]" value="0.11600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DNA]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGperDNA]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[onepmol]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t0]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t1]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t3]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t4]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t5]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[t6]" value="12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[timevalue]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[zero]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSactivity]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslope]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSint]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslopezero]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslope1]" value="-0.66669999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSslope3]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSintzero]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSint1]" value="1.3334999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSint3]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGactivity]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslopezero]" value="0.3014" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope1]" value="-0.15720000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope2]" value="0.043900000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope3]" value="-0.091300000000000006" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope4]" value="0.097600000000000006" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope5]" value="0.071099999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGslope6]" value="0.084599999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGintzero]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint1]" value="1.2292000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint2]" value="1.0282" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint3]" value="1.2987" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint4]" value="0.54300000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint5]" value="0.75490000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGint6]" value="0.5927" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoratio]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint]" value="315.31369999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope]" value="-158.43000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslopezero]" value="-158.43000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope1]" value="112.28" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope2]" value="24.309999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope3]" value="-39.93" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope4]" value="5.4800000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope5]" value="27.079999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoslope6]" value="-4.8739999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChointzero]" value="315.31369999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint1]" value="179.96000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint2]" value="267.93000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint3]" value="396.41000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint4]" value="214.77000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint5]" value="41.93" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoint6]" value="425.43000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Nt\[merge\]]" value="1.0700000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[At\[merge\]]" value="4.1600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[d0\[merge\]\[merge\]]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[r1\[merge\]\[merge\]]" value="0.00084000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[R0\[merge\]\[merge\]]" value="864" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Eg0\[merge\]\[merge\]]" value="1.4399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[si\[merge\]\[merge\]]" value="0.71999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[r2\[merge\]\[merge\]]" value="0.00024600000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[sigma\[merge\]\[merge\]]" value="43.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[alpha\[merge\]\[merge\]]" value="20000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k\[merge\]\[merge\]]" value="432" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[sum of AXP conc\[merge\]\[merge\]]" value="4.0999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k_rel_GAPDH\[merge\]\[merge\]]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Jresp\[merge\]]" value="0.1208220415537489" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[kresp\[merge\]]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[K\[merge\]]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[a\[merge\]]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DeltaPsi\[merge\]]" value="150" type="ModelValue" simulationType="ode">
            <InitialExpression>
              150
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[JATP\[merge\]]" value="0.094181143710603155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[kATP\[merge\]]" value="131.90000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[b\[merge\]]" value="0.0040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[ATPcrit\[merge\]]" value="3.8930172847480522" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DeltaGtransport\[merge\]]" value="17367300" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Faraday constant\[merge\]]" value="96485" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[gas constant\[merge\]]" value="8314" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[absolute temperature\[merge\]]" value="298" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Kapp\[merge\]]" value="4.3999999999999997e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Jleak\[merge\]]" value="0.063899999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[kleak\[merge\]]" value="0.000426" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[JANT\[merge\]]" value="0.19048431999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[kANT\[merge\]]" value="0.053870000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[C\[merge\]]" value="6.7499999999999997e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DeltaPsim\[merge\]]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k_rel_TPI\[merge\]\[merge\]]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[ratio_NADPH_NADP\[merge\]\[merge\]]" value="4" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r2],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r3],ParameterGroup=Parameters,Parameter=DGactivity" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGactivity],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r3],ParameterGroup=Parameters,Parameter=DGperDNA" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGperDNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r3],ParameterGroup=Parameters,Parameter=DNA" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r3],ParameterGroup=Parameters,Parameter=k3" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r7],ParameterGroup=Parameters,Parameter=GPChoratio" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoratio],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r7],ParameterGroup=Parameters,Parameter=k7" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r5],ParameterGroup=Parameters,Parameter=DGactivity" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGactivity],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r5],ParameterGroup=Parameters,Parameter=DNA" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r5],ParameterGroup=Parameters,Parameter=GPChoratio" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoratio],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r5],ParameterGroup=Parameters,Parameter=k5" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r11],ParameterGroup=Parameters,Parameter=k1" value="0.111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r10],ParameterGroup=Parameters,Parameter=DGactivity" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DGactivity],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r10],ParameterGroup=Parameters,Parameter=DNA" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[DNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r10],ParameterGroup=Parameters,Parameter=k10" value="0.024" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r8],ParameterGroup=Parameters,Parameter=k1" value="0.0070000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r4],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r9],ParameterGroup=Parameters,Parameter=k1" value="0.187" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r13],ParameterGroup=Parameters,Parameter=k1" value="0.20399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r14],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r15],ParameterGroup=Parameters,Parameter=k1" value="0.060999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r16],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r17],ParameterGroup=Parameters,Parameter=k1" value="3.1160000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r18],ParameterGroup=Parameters,Parameter=k1" value="0.053999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r19],ParameterGroup=Parameters,Parameter=k1" value="0.029000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r20],ParameterGroup=Parameters,Parameter=k1" value="0.014" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r21],ParameterGroup=Parameters,Parameter=k1" value="0.034000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r22],ParameterGroup=Parameters,Parameter=k1" value="0.11600000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r1],ParameterGroup=Parameters,Parameter=LPSactivity" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSactivity],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r1],ParameterGroup=Parameters,Parameter=k1" value="355.637" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r1],ParameterGroup=Parameters,Parameter=onepmol" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[onepmol],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r6],ParameterGroup=Parameters,Parameter=GPChoratio" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[GPChoratio],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r6],ParameterGroup=Parameters,Parameter=LPSactivity" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSactivity],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r6],ParameterGroup=Parameters,Parameter=k6" value="0.33000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r12],ParameterGroup=Parameters,Parameter=LPSactivity" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[LPSactivity],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[r12],ParameterGroup=Parameters,Parameter=k12" value="0.098000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glycerol 3-phosphate dehydrogenase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glycerol 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqG3PDH" value="4300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glycerol 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqTPI" value="0.044999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glycerol 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmG3PDHDHAP" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glycerol 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmG3PDHGLY" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glycerol 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmG3PDHNAD" value="0.93000000000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glycerol 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmG3PDHNADH" value="0.023" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glycerol 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmG3PDH" value="70.150000000000006" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v8\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v8\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="3.6000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hexokinase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hexokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqAK" value="0.45000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hexokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqGLK" value="3800" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hexokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGLKADP" value="0.23000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hexokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGLKATP" value="0.14999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hexokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGLKG6P" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hexokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGLKGLCi" value="0.080000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hexokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=SUMAXP" value="4.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[sum of AXP conc\[merge\]\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hexokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmGLK" value="226.452" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v6\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v6\[merge\]],ParameterGroup=Parameters,Parameter=Keq" value="0.39750000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v6\[merge\]],ParameterGroup=Parameters,Parameter=k6" value="0.0032000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glyceraldehyde 3-phosphate dehydrogenase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glyceraldehyde 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqGAPDH" value="0.0050000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glyceraldehyde 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGAPDHBPG" value="0.0097999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glyceraldehyde 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGAPDHGAP" value="0.20999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glyceraldehyde 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGAPDHNAD" value="0.089999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glyceraldehyde 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGAPDHNADH" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glyceraldehyde 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmGAPDHf" value="1184.52" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glyceraldehyde 3-phosphate dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k_rel_GAPDH" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k_rel_GAPDH\[merge\]\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glucose transport\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glucose transport\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqGLT" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glucose transport\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGLTGLCi" value="1.1918" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glucose transport\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGLTGLCo" value="1.1918" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glucose transport\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmGLT" value="97.263999999999996" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[CETP Mediated TransferTo LDL\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[CETP Mediated TransferTo LDL\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k28" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate kinase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqAK" value="0.45000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqPGK" value="3200" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPGKADP" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPGKATP" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPGKBPG" value="0.0030000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPGKP3G" value="0.53000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=SUMAXP" value="4.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[sum of AXP conc\[merge\]\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmPGK" value="1306.45" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk1\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk1\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGA3P" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk1\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmRibose5P" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk1\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmSeduhept" value="0.14999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk1\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmXyl5P" value="0.14999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk1\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmTransk1f" value="4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk1\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmTransk1r" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Receptor Dependent Peripheral Uptake\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Receptor Dependent Peripheral Uptake\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k20" value="0.0067499999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Receptor Independent Peripheral Uptake\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Receptor Independent Peripheral Uptake\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="5.0000000000000004e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vGluDH\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vGluDH\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KiNADPH" value="0.029999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vGluDH\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGluconate" value="0.02" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vGluDH\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmNADP" value="0.029999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vGluDH\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmGluDH" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk2\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk2\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmEry4P" value="0.089999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk2\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmF6P" value="1.1000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk2\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGA3P" value="2.1000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk2\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmXyl5P" value="0.16" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk2\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmTransk2f" value="3.2000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransk2\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmTransk2r" value="43" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Intestinal Cholesterol Synthesis\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Intestinal Cholesterol Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=ICSmax" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Intestinal Cholesterol Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=ICt" value="3120" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Intestinal Cholesterol Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=IS" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Billary Cholesterol Release\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Billary Cholesterol Release\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=BCRmax" value="2000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Billary Cholesterol Release\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=BCRt" value="55326" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Billary Cholesterol Release\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=BS" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Bile Salt Release\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Bile Salt Release\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Aldolase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Aldolase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqALD" value="0.069000000000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Aldolase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmALDDHAP" value="2.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Aldolase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmALDF16P" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Aldolase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmALDGAP" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Aldolase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmALDGAPi" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Aldolase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmALD" value="322.25799999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glucose-6-phosphate isomerase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glucose-6-phosphate isomerase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqPGI" value="0.314" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glucose-6-phosphate isomerase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPGIF6P" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glucose-6-phosphate isomerase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPGIG6P" value="1.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Glucose-6-phosphate isomerase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmPGI" value="339.67700000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral Cholesterol Storage\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral Cholesterol Storage\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k23" value="0.017385999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vresp\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vresp\[merge\]],ParameterGroup=Parameters,Parameter=Jresp" value="0.1208220415537489" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Jresp\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[LDL Cholesterol Formation\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[LDL Cholesterol Formation\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k17" value="0.38" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate kinase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqAK" value="0.45000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqPYK" value="6500" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPYKADP" value="0.53000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPYKATP" value="1.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPYKPEP" value="0.14000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPYKPYR" value="21" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=SUMAXP" value="4.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[sum of AXP conc\[merge\]\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate kinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmPYK" value="1088.71" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Bile Salt Synthesis\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Bile Salt Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k5" value="2.6600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[VLDL Cholesterol ReUptake\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[VLDL Cholesterol ReUptake\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.049599999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=CPFKAMP" value="0.084500000000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=CPFKATP" value="3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=CPFKF16BP" value="0.39700000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=CPFKF26BP" value="0.017399999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=CiPFKATP" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KPFKAMP" value="0.099500000000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KPFKF16BP" value="0.111" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KPFKF26BP" value="0.00068199999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqAK" value="0.45000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KiPFKATP" value="0.65000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPFKATP" value="0.70999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPFKF6P" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=L0" value="0.66000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=SUMAXP" value="4.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[sum of AXP conc\[merge\]\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmPFK" value="182.90299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphofructokinase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=gR" value="5.1200000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vR5PI\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vR5PI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmRibu5P" value="1.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vR5PI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmXyl" value="1.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vR5PI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmR5PIf" value="1039" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vR5PI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmR5PIr" value="1039" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Succinate synthesis\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Succinate synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KSUCC" value="21.399999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral Cholesterol Synthesis\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral Cholesterol Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=PCSS" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral Cholesterol Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=PCSmax" value="500" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral Cholesterol Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=PPCt" value="80342" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vPPI\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vPPI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmRibo5P" value="1.6000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vPPI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmRibu5P" value="1.6000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vPPI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmPPIf" value="3458" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vPPI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmPPIr" value="3458" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vANT\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vANT\[merge\]],ParameterGroup=Parameters,Parameter=v" value="0.19048431999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[JANT\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v2\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v2\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.152" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Receptor Independent Hepatic Uptake\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Receptor Independent Hepatic Uptake\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.0050000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v5\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v5\[merge\]],ParameterGroup=Parameters,Parameter=At" value="4.1600000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[At\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v5\[merge\]],ParameterGroup=Parameters,Parameter=k5" value="0.082361000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vATP\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vATP\[merge\]],ParameterGroup=Parameters,Parameter=JATP" value="0.094181143710603155" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[JATP\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[IDL Cholesterol ReUptake\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[IDL Cholesterol ReUptake\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.053999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[IDL Cholesterol Formation\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[IDL Cholesterol Formation\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k15" value="0.42999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[HDL Cholesterol Formation\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[HDL Cholesterol Formation\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k26" value="1.5e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v3\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v3\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="57.142000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v4\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v4\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.052999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic Nascent HDL Synthesis\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic Nascent HDL Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k11" value="0.0050000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic LDLR Synthesis\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic LDLR Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=khrs" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral LDLR Synthesis\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral LDLR Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=kprs" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v6PGL\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v6PGL\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=Km6PGL" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v6PGL\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=Vm6PGL" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTPI\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTPI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmDHAP" value="1.23" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTPI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGA3P" value="1.27" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTPI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmDHAP" value="10900" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTPI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmGA3P" value="555" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTPI\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k_rel_TPI" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[k_rel_TPI\[merge\]\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral Steroid Production\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral Steroid Production\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.00050000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Intestinal Nascent HDL Synthesis\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Intestinal Nascent HDL Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k8" value="0.00050000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Reverse Cholesterol Transport\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Reverse Cholesterol Transport\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k29" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Cholesterol Excretion\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Cholesterol Excretion\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k7" value="0.00052859999999999995" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vNADPH\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vNADPH\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[CETP Mediated Transfer To VLDL\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[CETP Mediated Transfer To VLDL\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k27" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vG6PDH\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vG6PDH\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KiNADPH" value="0.017000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vG6PDH\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmG6P" value="0.040000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vG6PDH\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmNADP" value="0.02" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vG6PDH\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmG6PDH" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v1\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v1\[merge\]],ParameterGroup=Parameters,Parameter=v" value="0.037999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Release of Stored Cholesterol\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Release of Stored Cholesterol\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k10" value="5.9980000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[ATPase activity\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[ATPase activity\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KATPASE" value="39.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[ATPase activity\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqAK" value="0.45000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[ATPase activity\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=SUMAXP" value="4.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[sum of AXP conc\[merge\]\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate decarboxylase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate decarboxylase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPDCPYR" value="4.3300000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate decarboxylase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmPDC" value="174.19399999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Pyruvate decarboxylase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=nPDC" value="1.8999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransald\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransald\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmEry4P" value="0.017999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransald\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmF6P" value="0.32000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransald\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmGA3P" value="0.22" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransald\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmSeduhept" value="0.17999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransald\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmTransaldf" value="55" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vTransald\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmTransaldr" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Enolase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Enolase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqENO" value="6.7000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Enolase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmENOP2G" value="0.040000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Enolase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmENOPEP" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Enolase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmENO" value="365.80599999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Cholesterol Absorption\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Cholesterol Absorption\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k6" value="0.00052859999999999995" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic Cholesterol Synthesis\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic Cholesterol Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=HCSmax" value="500" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic Cholesterol Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=HCSt" value="93925" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic Cholesterol Synthesis\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=HS" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral LDL Receptor Degradation\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Peripheral LDL Receptor Degradation\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate mutase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate mutase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqPGM" value="0.19" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate mutase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPGMP2G" value="0.080000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate mutase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmPGMP3G" value="1.2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Phosphoglycerate mutase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmPGM" value="2525.8099999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v7\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[v7\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.040000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[VLDL Cholesterol Formation\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[VLDL Cholesterol Formation\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.016" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Release of Stored Peripheral Cholesterol\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Release of Stored Peripheral Cholesterol\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k24" value="0.10680000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic LDL Receptor Degradation\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic LDL Receptor Degradation\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Bile Salt Return\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Bile Salt Return\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="4.29" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Ingestion\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Ingestion\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic Cholesterol Storage\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Hepatic Cholesterol Storage\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k9" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Bile Salt Excretion\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Bile Salt Excretion\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k1" value="0.85599999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vleak\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[vleak\[merge\]],ParameterGroup=Parameters,Parameter=Jleak" value="0.063899999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Values[Jleak\[merge\]],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KeqADH" value="6.8999999999999997e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KiADHACE" value="1.1000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KiADHETOH" value="90" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KiADHNAD" value="0.92000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KiADHNADH" value="0.031" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmADHACE" value="1.1100000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmADHETOH" value="17" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmADHNAD" value="0.17000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=KmADHNADH" value="0.11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Alcohol dehydrogenase\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=VmADH" value="810" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Receptor Dependent Hepatic Uptake\[merge\]\[merge\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gupta2009 - Eicosanoid Metabolism_1,Vector=Reactions[Receptor Dependent Hepatic Uptake\[merge\]\[merge\]],ParameterGroup=Parameters,Parameter=k18" value="0.068000000000000005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_94"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_82"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_6"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
      <StateTemplateVariable objectReference="Compartment_8"/>
      <StateTemplateVariable objectReference="Compartment_9"/>
      <StateTemplateVariable objectReference="Compartment_10"/>
      <StateTemplateVariable objectReference="Compartment_11"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 150 1.6861994127999999e+24 2.2281920811999994e+25 1.5055351899999997e+26 7.2265689120000001e+23 3.613284456e+28 1.50553519e+25 3.4636944795216001e+28 5.1549524905600001e+23 3.0110703800000014e+22 0 6.0221407599999999e+25 3.0110703799999992e+24 1.8969743393999999e+27 3.0110703800000001e+21 2.4088563040000001e+22 1.6861994127999997e+23 1.2044281519999997e+25 2.1294289727359996e+24 6.0221407600000029e+22 2.8123397349199994e+26 2.7099633419999994e+25 6.0221407599999992e+23 0 9.6354252160000046e+23 6.0221407599999999e+25 9.2740967703999995e+22 8.3707756564000039e+23 6.0221407599999992e+23 6.0221407599999999e+25 6.0221407600000029e+22 0 6.0221407599999999e+25 1.354981671e+23 1.2044281519999997e+25 0 0 0 6.0221407600000029e+22 0 2.0234392953600004e+24 2.408856304e+26 3.7939486788000003e+22 5.2392624611999999e+22 6.0221407600000029e+22 6.0221407600000029e+22 6.0221407600000029e+22 6.0221407599999996e+27 5.6385303935880003e+27 0 0 6.0221407600000029e+22 6.0221407600000029e+22 0 0 0 6.0221407600000029e+22 0 0 2.6497419343999995e+23 6.0221407600000029e+22 0 6.0221407600000029e+22 2.3486348964000006e+23 2.4088563040000012e+23 1.2887381226400005e+23 3.757815834240003e+23 0 0 1 1 0.1208220415537489 0.094181143710603155 3.8930172847480522 17367300 0.063899999999999998 0.19048431999999998 4 6.0221407599999992e+23 6.0221407599999992e+23 3.0110703799999999e+25 9.0332111400000001e+22 3.0110703799999999e+25 6.0221407600000029e+22 0 3.4636944795215988e+26 0 6.0221407599999992e+23 1.46940234544e+24 6.0221407599999992e+23 6.0221407599999992e+23 6.0221407599999992e+23 6.0221407600000029e+22 1.204428152e+22 0 0 3.6132844559999989e+26 1.8307307910400001e+26 0 3.0110703799999996e+23 6.0221407599999999e+25 6.0221407599999999e+25 6.0221407599999999e+25 6.0221407599999999e+25 6.0221407599999999e+25 6.0221407599999999e+25 6.0221407599999999e+25 1 1 1 1 1 1 1 1 1 1 1 1 355.637 1.0000000000000001e-15 1.0000000000000001e-15 1.0000000000000001e-15 1.0000000000000001e-15 0.33000000000000002 1.0000000000000001e-15 0.0070000000000000001 0.187 0.024 0.111 0.098000000000000004 0.20399999999999999 1.0000000000000001e-15 0.060999999999999999 1.0000000000000001e-15 3.1160000000000001 0.053999999999999999 0.029000000000000001 0.014 0.034000000000000002 0.11600000000000001 1 1 1 0 0.5 1 2 4 8 12 0 0 0 2 -0.66669999999999996 0 0 1.3334999999999999 0 1 1 0.3014 -0.15720000000000001 0.043900000000000002 -0.091300000000000006 0.097600000000000006 0.071099999999999997 0.084599999999999995 1 1.2292000000000001 1.0282 1.2987 0.54300000000000004 0.75490000000000002 0.5927 315.31369999999998 -158.43000000000001 -158.43000000000001 112.28 24.309999999999999 -39.93 5.4800000000000004 27.079999999999998 -4.8739999999999997 315.31369999999998 179.96000000000001 267.93000000000001 396.41000000000003 214.77000000000001 41.93 425.43000000000001 1.0700000000000001 4.1600000000000001 0.059999999999999998 0.00084000000000000003 864 1.4399999999999999 0.71999999999999997 0.00024600000000000002 43.200000000000003 20000 432 4.0999999999999996 1 2.5 2 0.10000000000000001 131.90000000000001 0.0040000000000000001 96485 8314 298 4.3999999999999997e-09 0.000426 0.053870000000000001 6.7499999999999997e-06 150 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_30" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="5"/>
        <Parameter name="StepSize" type="float" value="0.20000000000000001"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_28" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Subtask Output" type="string" value="subTaskDuring"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_27" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_26" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_30"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_33" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_32" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_21" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_30"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_19" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_21" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <SBMLReference file="BIOMD0000000436_url.xml">
    <SBMLMap SBMLid="AA" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="DG" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="DGactivity" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="DGint" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="DGint1" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="DGint2" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="DGint3" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="DGint4" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="DGint5" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="DGint6" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="DGintzero" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="DGperDNA" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="DGslope" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="DGslope1" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="DGslope2" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="DGslope3" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="DGslope4" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="DGslope5" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="DGslope6" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="DGslopezero" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="DNA" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="FA" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Function_for_ATPase_activity" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_Alcohol_dehydrogenase" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_Aldolase" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_Bile_Salt_Synthesis" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="Function_for_CETP_Mediated_TransferTo_LDL" COPASIkey="Function_106"/>
    <SBMLMap SBMLid="Function_for_CETP_Mediated_Transfer_To_VLDL" COPASIkey="Function_105"/>
    <SBMLMap SBMLid="Function_for_Enolase" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_Glucose_6_phosphate_isomerase" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_Glucose_transport" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Function_for_Glyceraldehyde_3_phosphate_dehydrogenase" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_Glycerol_3_phosphate_dehydrogenase" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_Hepatic_Cholesterol_Storage" COPASIkey="Function_89"/>
    <SBMLMap SBMLid="Function_for_Hepatic_Cholesterol_Synthesis" COPASIkey="Function_88"/>
    <SBMLMap SBMLid="Function_for_Hepatic_LDLR_Synthesis" COPASIkey="Function_92"/>
    <SBMLMap SBMLid="Function_for_Hepatic_LDL_Receptor_Degradation" COPASIkey="Function_93"/>
    <SBMLMap SBMLid="Function_for_Hexokinase" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_IDL_Cholesterol_Formation" COPASIkey="Function_94"/>
    <SBMLMap SBMLid="Function_for_Intestinal_Cholesterol_Synthesis" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="Function_for_LDL_Cholesterol_Formation" COPASIkey="Function_95"/>
    <SBMLMap SBMLid="Function_for_Peripheral_Cholesterol_Synthesis" COPASIkey="Function_104"/>
    <SBMLMap SBMLid="Function_for_Peripheral_LDLR_Synthesis" COPASIkey="Function_98"/>
    <SBMLMap SBMLid="Function_for_Peripheral_LDL_Receptor_Degradation" COPASIkey="Function_99"/>
    <SBMLMap SBMLid="Function_for_Peripheral_Steroid_Production" COPASIkey="Function_102"/>
    <SBMLMap SBMLid="Function_for_Phosphofructokinase" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_Phosphoglycerate_kinase" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_Phosphoglycerate_mutase" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_Pyruvate_decarboxylase" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_Pyruvate_kinase" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_Release_of_Stored_Cholesterol" COPASIkey="Function_90"/>
    <SBMLMap SBMLid="Function_for_Succinate_synthesis" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_v5" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_v6" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_v6PGL" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_vATP" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_vG6PDH" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_vGluDH" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_vPPI" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_vR5PI" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_vTPI" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_vTransald" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_vTransk1" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_vTransk2" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_vleak" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_vresp" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="GPCho" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="GPChoint" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="GPChoint1" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="GPChoint2" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="GPChoint3" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="GPChoint4" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="GPChoint5" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="GPChoint6" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="GPChointzero" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="GPChoratio" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="GPChoslope" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="GPChoslope1" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="GPChoslope2" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="GPChoslope3" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="GPChoslope4" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="GPChoslope5" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="GPChoslope6" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="GPChoslopezero" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="HETE" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="LPS" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="LPSactivity" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="LPSint" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="LPSint1" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="LPSint3" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="LPSintzero" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="LPSslope" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="LPSslope1" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="LPSslope3" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="LPSslopezero" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="PGD2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="PGE2" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="PGF2a" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="PGH2" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="PGJ2" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Rate_Law_for_Billary_Cholesterol_Release_1" COPASIkey="Function_87"/>
    <SBMLMap SBMLid="Rate_Law_for_Cholesterol_Absorption_1" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="Rate_Law_for_Cholesterol_Excretion_1" COPASIkey="Function_85"/>
    <SBMLMap SBMLid="Rate_Law_for_HDL_Cholesterol_Formation_1" COPASIkey="Function_103"/>
    <SBMLMap SBMLid="Rate_Law_for_Hepatic_Nascent_HDL_Synthesis_1" COPASIkey="Function_91"/>
    <SBMLMap SBMLid="Rate_Law_for_Intestinal_Nascent_HDL_Synthesis_1" COPASIkey="Function_86"/>
    <SBMLMap SBMLid="Rate_Law_for_Peripheral_Cholesterol_Storage_1" COPASIkey="Function_100"/>
    <SBMLMap SBMLid="Rate_Law_for_Receptor_Dependent_Hepatic_Uptake_1" COPASIkey="Function_96"/>
    <SBMLMap SBMLid="Rate_Law_for_Receptor_Dependent_Peripheral_Uptake_1" COPASIkey="Function_97"/>
    <SBMLMap SBMLid="Rate_Law_for_Release_of_Stored_Peripheral_Cholesterol_1" COPASIkey="Function_101"/>
    <SBMLMap SBMLid="Rate_Law_for_Reverse_Cholesterol_Transport_1" COPASIkey="Function_107"/>
    <SBMLMap SBMLid="c1" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="dPGD2" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="dPGJ2" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="function_1" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="function_11" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="function_12" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="function_13" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="function_16" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="function_2" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="function_20" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="function_21" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="function_22" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="function_7" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="function_8" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="function_9" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k10" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="k13" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="k14" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k16" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="k17" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k18" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k19" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k20" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k21" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="k22" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k9" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="onepmol" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="r1" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="r10" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="r11" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="r12" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="r13" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="r14" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="r15" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="r16" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="r17" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="r18" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="r19" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="r2" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="r20" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="r21" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="r22" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="r3" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="r4" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="r5" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="r6" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="r7" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="r8" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="r9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="t0" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="t1" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="t2" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="t3" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="t4" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="t5" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="t6" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="timevalue" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="zero" COPASIkey="ModelValue_33"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_3" name="gram" symbol="g">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_2">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_67" name="hour" symbol="h">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        3600*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
