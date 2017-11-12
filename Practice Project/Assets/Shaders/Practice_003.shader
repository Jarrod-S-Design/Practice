// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33080,y:32735,varname:node_4013,prsc:2|emission-8030-OUT,voffset-321-OUT;n:type:ShaderForge.SFN_TexCoord,id:8988,x:31185,y:33108,varname:node_8988,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:5968,x:31576,y:33111,varname:node_5968,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4697-X;n:type:ShaderForge.SFN_Color,id:4019,x:32220,y:32640,ptovrint:False,ptlb:node_4019,ptin:_node_4019,varname:node_4019,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1764706,c2:0.4888438,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:3824,x:32220,y:32480,ptovrint:False,ptlb:node_3824,ptin:_node_3824,varname:node_3824,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.25,c3:0.25,c4:1;n:type:ShaderForge.SFN_Lerp,id:8030,x:32670,y:32572,varname:node_8030,prsc:2|A-3824-RGB,B-4019-RGB,T-355-OUT;n:type:ShaderForge.SFN_Slider,id:4293,x:31942,y:32877,ptovrint:False,ptlb:node_4293,ptin:_node_4293,varname:node_4293,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.759469,max:8;n:type:ShaderForge.SFN_Clamp01,id:355,x:32533,y:33310,varname:node_355,prsc:2|IN-3719-OUT;n:type:ShaderForge.SFN_Sin,id:7061,x:32279,y:33121,varname:node_7061,prsc:2|IN-6575-OUT;n:type:ShaderForge.SFN_Multiply,id:6575,x:32089,y:33129,varname:node_6575,prsc:2|A-3533-OUT,B-6108-OUT,C-3003-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3533,x:31942,y:33032,ptovrint:False,ptlb:node_3533,ptin:_node_3533,varname:node_3533,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_RemapRange,id:3719,x:32234,y:33378,varname:node_3719,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-7061-OUT;n:type:ShaderForge.SFN_Tau,id:3003,x:31894,y:33298,varname:node_3003,prsc:2;n:type:ShaderForge.SFN_Time,id:6381,x:31523,y:33307,varname:node_6381,prsc:2;n:type:ShaderForge.SFN_Add,id:6108,x:31815,y:33111,varname:node_6108,prsc:2|A-5968-OUT,B-6381-TSL;n:type:ShaderForge.SFN_NormalVector,id:3031,x:32521,y:33472,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:4835,x:32521,y:33639,ptovrint:False,ptlb:node_4835,ptin:_node_4835,varname:node_4835,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Multiply,id:321,x:32788,y:33412,varname:node_321,prsc:2|A-3031-OUT,B-4835-OUT,C-355-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4697,x:31368,y:33111,varname:node_4697,prsc:2;proporder:4019-3824-4293-3533-4835;pass:END;sub:END;*/

Shader "Shader Forge/Practice_003" {
    Properties {
        _node_4019 ("node_4019", Color) = (0.1764706,0.4888438,1,1)
        _node_3824 ("node_3824", Color) = (1,0.25,0.25,1)
        _node_4293 ("node_4293", Range(0, 8)) = 1.759469
        _node_3533 ("node_3533", Float ) = 2
        _node_4835 ("node_4835", Float ) = 0.3
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
            uniform float4 _node_4019;
            uniform float4 _node_3824;
            uniform float _node_3533;
            uniform float _node_4835;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_6381 = _Time;
                float node_355 = saturate((sin((_node_3533*(mul(unity_ObjectToWorld, v.vertex).r.r+node_6381.r)*6.28318530718))*0.5+0.5));
                v.vertex.xyz += (v.normal*_node_4835*node_355);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_6381 = _Time;
                float node_355 = saturate((sin((_node_3533*(i.posWorld.r.r+node_6381.r)*6.28318530718))*0.5+0.5));
                float3 emissive = lerp(_node_3824.rgb,_node_4019.rgb,node_355);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _node_3533;
            uniform float _node_4835;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_6381 = _Time;
                float node_355 = saturate((sin((_node_3533*(mul(unity_ObjectToWorld, v.vertex).r.r+node_6381.r)*6.28318530718))*0.5+0.5));
                v.vertex.xyz += (v.normal*_node_4835*node_355);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
