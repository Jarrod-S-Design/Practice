// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32808,y:32770,varname:node_4013,prsc:2|emission-8030-OUT,clip-6306-OUT;n:type:ShaderForge.SFN_TexCoord,id:8988,x:30719,y:33106,varname:node_8988,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:4019,x:31697,y:32601,ptovrint:False,ptlb:node_4019,ptin:_node_4019,varname:node_4019,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1764706,c2:1,c3:0.2162272,c4:1;n:type:ShaderForge.SFN_Color,id:3824,x:31697,y:32441,ptovrint:False,ptlb:node_3824,ptin:_node_3824,varname:node_3824,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.25,c3:0.25,c4:1;n:type:ShaderForge.SFN_Lerp,id:8030,x:32147,y:32533,varname:node_8030,prsc:2|A-3824-RGB,B-4019-RGB,T-4293-OUT;n:type:ShaderForge.SFN_Slider,id:4293,x:31540,y:32800,ptovrint:False,ptlb:Health Slider,ptin:_HealthSlider,varname:node_4293,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5773096,max:1;n:type:ShaderForge.SFN_RemapRange,id:7770,x:30922,y:33106,varname:node_7770,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8988-UVOUT;n:type:ShaderForge.SFN_Length,id:1154,x:31330,y:33217,varname:node_1154,prsc:2|IN-7770-OUT;n:type:ShaderForge.SFN_Floor,id:5223,x:31566,y:33368,varname:node_5223,prsc:2|IN-1154-OUT;n:type:ShaderForge.SFN_OneMinus,id:7078,x:31739,y:33368,varname:node_7078,prsc:2|IN-5223-OUT;n:type:ShaderForge.SFN_Add,id:5281,x:31569,y:33165,varname:node_5281,prsc:2|A-7872-OUT,B-1154-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7872,x:31330,y:33130,ptovrint:False,ptlb:node_7872,ptin:_node_7872,varname:node_7872,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Floor,id:2283,x:31739,y:33165,varname:node_2283,prsc:2|IN-5281-OUT;n:type:ShaderForge.SFN_Multiply,id:6306,x:32495,y:33050,varname:node_6306,prsc:2|A-5484-OUT,B-2283-OUT,C-7078-OUT;n:type:ShaderForge.SFN_ArcTan2,id:8168,x:31526,y:32930,varname:node_8168,prsc:2,attp:2|A-9228-G,B-9228-R;n:type:ShaderForge.SFN_ComponentMask,id:9228,x:31330,y:32930,varname:node_9228,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7770-OUT;n:type:ShaderForge.SFN_Ceil,id:9111,x:32110,y:32854,varname:node_9111,prsc:2|IN-8478-OUT;n:type:ShaderForge.SFN_OneMinus,id:5484,x:32276,y:32854,varname:node_5484,prsc:2|IN-9111-OUT;n:type:ShaderForge.SFN_Subtract,id:8478,x:31940,y:32854,varname:node_8478,prsc:2|A-8686-OUT,B-4293-OUT;n:type:ShaderForge.SFN_OneMinus,id:8686,x:31697,y:32930,varname:node_8686,prsc:2|IN-8168-OUT;proporder:4019-3824-4293-7872;pass:END;sub:END;*/

Shader "Shader Forge/Practice_003" {
    Properties {
        _node_4019 ("node_4019", Color) = (0.1764706,1,0.2162272,1)
        _node_3824 ("node_3824", Color) = (1,0.25,0.25,1)
        _HealthSlider ("Health Slider", Range(0, 1)) = 0.5773096
        _node_7872 ("node_7872", Float ) = 0.3
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform float _HealthSlider;
            uniform float _node_7872;
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
                float2 node_7770 = (i.uv0*2.0+-1.0);
                float2 node_9228 = node_7770.rg;
                float node_8168 = ((atan2(node_9228.g,node_9228.r)/6.28318530718)+0.5);
                float node_1154 = length(node_7770);
                float node_2283 = floor((_node_7872+node_1154));
                float node_6306 = ((1.0 - ceil(((1.0 - node_8168)-_HealthSlider)))*node_2283*(1.0 - floor(node_1154)));
                clip(node_6306 - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = lerp(_node_3824.rgb,_node_4019.rgb,_HealthSlider);
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
            uniform float _HealthSlider;
            uniform float _node_7872;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_7770 = (i.uv0*2.0+-1.0);
                float2 node_9228 = node_7770.rg;
                float node_8168 = ((atan2(node_9228.g,node_9228.r)/6.28318530718)+0.5);
                float node_1154 = length(node_7770);
                float node_2283 = floor((_node_7872+node_1154));
                float node_6306 = ((1.0 - ceil(((1.0 - node_8168)-_HealthSlider)))*node_2283*(1.0 - floor(node_1154)));
                clip(node_6306 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
