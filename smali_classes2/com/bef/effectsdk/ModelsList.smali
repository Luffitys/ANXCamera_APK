.class public Lcom/bef/effectsdk/ModelsList;
.super Ljava/lang/Object;
.source "ModelsList.java"


# static fields
.field public static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 53

    const-string v0, "model/jointmodel/tt_joints_v4.0.model"

    const-string v1, "model/petfacemodel/tt_petface_v2.4.model"

    const-string v2, "model/catmodel/tt_catface_v2.0.model"

    const-string v3, "model/facefitting/tt_facefitting_v2.1.model"

    const-string v4, "model/skysegmodel/tt_skyseg_v5.0.model"

    const-string v5, "model/skeleton_model/tt_skeleton_template_v1.0.config"

    const-string v6, "model/skeleton_model/tt_skeleton_v4.0.model"

    const-string v7, "model/animoji/animoji_v4.0.model"

    const-string v8, "model/headsegmodel/tt_headseg_v4.0.model"

    const-string v9, "model/audiorecognize/kws_v2.0.model"

    const-string v10, "model/faceganmodel/tt_facegan_class_v1.0.model"

    const-string v11, "model/actionmodel/tt_action_detection_v4.0.model"

    const-string v12, "model/actionmodel/tt_pose_detection_v3.0.model"

    const-string v13, "model/hairparser/tt_hair_v6.2.model"

    const-string v14, "model/ar_scan/tt_arscan_voc_v2.0.dat"

    const-string v15, "model/ar_scan/tt_arscan_raw_v2.0.dat"

    const-string v16, "model/ttfacemodel/tt_face_extra_v9.0.model"

    const-string v17, "model/ttfacemodel/tt_face_v6.0.model"

    const-string v18, "model/scenerecognitionmodel/tt_c1_large_v2.0.model"

    const-string v19, "model/scenerecognitionmodel/tt_c1_small_v2.0.model"

    const-string v20, "model/facepartbeautymodel/tt_facepartbeauty_v1.0.model"

    const-string v21, "model/handmodel/tt_hand_det_v7.0.model"

    const-string v22, "model/handmodel/tt_hand_seg_v1.0.model"

    const-string v23, "model/handmodel/tt_hand_gesture_v8.0.model"

    const-string v24, "model/handmodel/tt_hand_kp_v4.0.model"

    const-string v25, "model/handmodel/tt_hand_box_reg_v8.0.model"

    const-string v26, "model/mattingmodel/tt_matting_v8.0.model"

    const-string v27, "model/mattingmodel/tt_matting_metal_v1.0.model"

    const-string v28, "model/slammodel/ttslammodel_v1.0.model"

    const-string v29, "model/objectmodel/tt_object_detection_v3.0.model"

    const-string v30, "model/colorcard/lookup.png"

    const-string v31, "model/ttfaceattrmodel/tt_face_attribute_v4.1.model"

    const-string v32, "model/ttfaceattrmodel/tt_beauty_attr6_v1.0.model"

    const-string v33, "model/share/FaceCapture.lua"

    const-string v34, "model/share/EffectEvent.lua"

    const-string v35, "model/share/effectSDKFeature_Filter_GlobalV2/Mesh/quad.mesh"

    const-string v36, "model/share/effectSDKFeature_Filter_GlobalV2/asset/texture/lookup.png"

    const-string v37, "model/share/effectSDKFeature_Filter_GlobalV2/asset/texture/newLookup.png"

    const-string v38, "model/share/effectSDKFeature_Filter_GlobalV2/sticker.config"

    const-string v39, "model/share/effectSDKFeature_Filter_GlobalV2/Xshader/filterXShader.xshader"

    const-string v40, "model/share/effectSDKFeature_Filter_GlobalV2/lua/filterScript.lua"

    const-string v41, "model/share/effectSDKFeature_Filter_GlobalV2/main.scene"

    const-string v42, "model/share/effectSDKFeature_Filter_GlobalV2/texture/lookup.texture"

    const-string v43, "model/share/effectSDKFeature_Filter_GlobalV2/texture/newLookup.texture"

    const-string v44, "model/share/effectSDKFeature_Filter_GlobalV2/Material/filterMaterial.material"

    const-string v45, "model/share/input.texture"

    const-string v46, "model/share/EffectEntry.lua"

    const-string v47, "model/share/Filter_00/config.json"

    const-string v48, "model/share/Filter_00/source/source.png"

    const-string v49, "model/share/EffectRuntime.lua"

    const-string v50, "model/share/EffectUtils.lua"

    const-string v51, "model/share/bgmask.texture"

    const-string v52, "model/share/hairmask.texture"

    filled-new-array/range {v0 .. v52}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bef/effectsdk/ModelsList;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
