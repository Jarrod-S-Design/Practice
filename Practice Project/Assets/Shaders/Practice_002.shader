// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32957,y:32684,varname:node_4013,prsc:2|emission-5501-OUT;n:type:ShaderForge.SFN_TexCoord,id:3270,x:31844,y:33024,varname:node_3270,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:3183,x:32344,y:32734,ptovrint:False,ptlb:node_3183,ptin:_node_3183,varname:node_3183,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1102941,c2:0.2268762,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:9432,x:32344,y:32559,ptovrint:False,ptlb:node_9432,ptin:_node_9432,varname:node_9432,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:5501,x:32606,y:32677,varname:node_5501,prsc:2|A-9432-RGB,B-3183-RGB,T-9145-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9766,x:32110,y:32887,varname:node_9766,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3270-UVOUT;n:type:ShaderForge.SFN_Length,id:4712,x:32110,y:33056,varname:node_4712,prsc:2|IN-2103-OUT;n:type:ShaderForge.SFN_RemapRange,id:2103,x:32009,y:33267,varname:node_2103,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3270-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:5002,x:32211,y:33267,varname:node_5002,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2103-OUT;n:type:ShaderForge.SFN_ArcTan2,id:9145,x:32420,y:33267,varname:node_9145,prsc:2,attp:2|A-5002-G,B-5002-R;proporder:3183-9432;pass:END;sub:END;*/

Shader "Shader Forge/Practice_002" {
    Properties {
        _node_3183 ("node_3183", Color) = (0.1102941,0.2268762,1,1)
        _node_9432 ("node_9432", Color) = (1,0,0,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _node_3183;
            uniform float4 _node_9432;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_2103 = (i.uv0*2.0+-1.0);
                float2 node_5002 = node_2103.rg;
                float3 emissive = lerp(_node_9432.rgb,_node_3183.rgb,((atan2(node_5002.g,node_5002.r)/6.28318530718)+0.5));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
