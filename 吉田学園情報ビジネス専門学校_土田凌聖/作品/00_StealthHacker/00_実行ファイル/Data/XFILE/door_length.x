xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 42;
 -3.16616;105.30322;-4.34537;,
 4.10022;105.30322;-4.34537;,
 4.10022;0.02744;-4.34537;,
 -3.16616;0.02744;-4.34537;,
 4.10021;105.30322;55.27526;,
 -3.16614;105.30322;55.27528;,
 -3.16614;0.02744;55.27528;,
 4.10021;0.02744;55.27526;,
 2.66234;105.30322;17.32719;,
 2.66234;0.02744;18.77144;,
 2.66234;0.02744;7.64794;,
 2.66234;105.30322;7.09579;,
 -1.75633;0.02744;18.89728;,
 -1.75633;105.30322;17.45304;,
 -1.75633;105.30322;7.06736;,
 -1.75633;0.02744;7.61952;,
 4.10022;0.02744;6.63879;,
 4.10022;105.30322;6.43422;,
 -3.16617;105.30322;6.39447;,
 -3.16617;0.02744;6.59903;,
 4.10022;105.30322;17.98293;,
 4.10022;0.02744;18.87487;,
 -3.16617;0.02744;19.00913;,
 -3.16616;105.30322;18.11717;,
 -3.33296;47.82388;39.73088;,
 -3.33295;50.51091;40.84389;,
 4.26703;50.51091;40.84385;,
 4.26703;47.82388;39.73088;,
 -3.33295;51.62385;43.53092;,
 4.26703;51.62385;43.53090;,
 -3.33295;50.51091;46.21788;,
 4.26703;50.51091;46.21788;,
 -3.33296;47.82388;47.33084;,
 4.26703;47.82388;47.33088;,
 -3.33295;45.13687;46.21787;,
 4.26704;45.13687;46.21788;,
 -3.33295;44.02388;43.53092;,
 4.26703;44.02388;43.53090;,
 -3.33295;45.13687;40.84389;,
 4.26703;45.13687;40.84385;,
 -3.33295;47.82388;43.53092;,
 4.26703;47.82388;43.53090;;
 
 46;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;13,8,11,14;,
 4;9,12,15,10;,
 4;16,2,1,17;,
 4;16,17,11,10;,
 4;18,0,3,19;,
 4;18,19,15,14;,
 4;17,1,0,18;,
 4;17,18,14,11;,
 4;19,3,2,16;,
 4;19,16,10,15;,
 4;20,4,7,21;,
 4;20,21,9,8;,
 4;22,6,5,23;,
 4;22,23,13,12;,
 4;23,5,4,20;,
 4;23,20,8,13;,
 4;21,7,6,22;,
 4;21,22,12,9;,
 4;24,25,26,27;,
 4;25,28,29,26;,
 4;28,30,31,29;,
 4;30,32,33,31;,
 4;32,34,35,33;,
 4;34,36,37,35;,
 4;36,38,39,37;,
 4;38,24,27,39;,
 3;40,25,24;,
 3;40,28,25;,
 3;40,30,28;,
 3;40,32,30;,
 3;40,34,32;,
 3;40,36,34;,
 3;40,38,36;,
 3;40,24,38;,
 3;41,27,26;,
 3;41,26,29;,
 3;41,29,31;,
 3;41,31,33;,
 3;41,33,35;,
 3;41,35,37;,
 3;41,37,39;,
 3;41,39,27;;
 
 MeshMaterialList {
  2;
  46;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.235200;0.235200;0.235200;1.000000;;
   5.000000;
   0.940000;0.940000;0.940000;;
   0.170520;0.170520;0.170520;;
  }
  Material {
   0.248000;0.248000;0.248000;1.000000;;
   5.000000;
   0.340000;0.340000;0.340000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  35;
  0.000000;0.000000;-1.000000;,
  0.000003;0.000000;1.000000;,
  -0.869090;0.001734;0.494651;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.869090;0.001734;0.494651;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000001;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.498255;0.003042;0.867025;,
  -1.000000;-0.000000;-0.000001;,
  0.247231;-0.010634;-0.968898;,
  -0.256776;-0.010600;-0.966413;,
  -1.000000;-0.000000;-0.000000;,
  -0.000003;-0.000001;-1.000000;,
  -0.000002;0.707113;-0.707101;,
  -0.000001;1.000000;0.000005;,
  -0.000001;0.707108;0.707105;,
  -0.000003;-0.000002;1.000000;,
  -0.000001;-0.707104;0.707110;,
  -0.000001;-1.000000;0.000005;,
  -0.000002;-0.707108;-0.707106;,
  1.000000;0.000001;-0.000001;,
  -1.000000;0.000001;0.000001;,
  -1.000000;-0.000000;0.000002;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000001;-0.000001;,
  -1.000000;-0.000000;-0.000003;,
  -1.000000;-0.000001;-0.000001;,
  -1.000000;-0.000001;0.000001;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000002;0.000000;,
  1.000000;0.000002;-0.000002;,
  1.000000;0.000000;-0.000002;;
  46;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;4,4,2,2;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;3,3,3,3;,
  4;10,10,10,10;,
  4;5,11,11,5;,
  4;5,5,2,2;,
  4;8,8,8,8;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;9,9,9,9;,
  4;6,6,6,6;,
  4;12,12,12,12;,
  4;7,7,7,7;,
  4;13,13,13,13;,
  4;8,8,8,8;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;9,9,9,9;,
  4;15,16,16,15;,
  4;16,17,17,16;,
  4;17,18,18,17;,
  4;18,19,19,18;,
  4;19,20,20,19;,
  4;20,21,21,20;,
  4;21,22,22,21;,
  4;22,15,15,22;,
  3;14,24,25;,
  3;14,26,24;,
  3;14,27,26;,
  3;14,28,27;,
  3;14,29,28;,
  3;14,26,29;,
  3;14,30,26;,
  3;14,25,30;,
  3;23,31,31;,
  3;23,31,31;,
  3;23,31,31;,
  3;23,31,32;,
  3;23,32,33;,
  3;23,33,34;,
  3;23,34,31;,
  3;23,31,31;;
 }
}
