.class public Lcom/android/camera/module/loader/FunctionAsdSceneDetect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;
.implements Lcom/android/camera/constant/AsdSceneConstant;


# static fields
.field private static final AEC_LUX_HEIGHT_LIGHT:F

.field private static final AEC_LUX_LAST_LIGHT:F

.field private static final AEC_LUX_LOW_LIGHT:F = 450.0f

.field private static final DEBUG:Z

.field private static final FRAME_BYPASS_NUMBER:I = 0x2

.field private static final LENS_FOCUS_DISTANCE_TOO_CLOSE:F = 2.5f

.field private static final LENS_FOCUS_DISTANCE_TOO_FAR:F = 0.5f

.field private static final REAL_BV_HEIGHT_LIGHT:Ljava/lang/Integer;

.field private static final REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "FunctionParseAsdScene"

.field private static mFrameNumber:I

.field private static mIsFlashRetain:Z


# instance fields
.field private final mEnableBv:Z

.field private mLowLightValue:F

.field private mModuleWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FunctionParseAsdScene"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOOOO()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_LAST_LIGHT:F

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOOO()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HEIGHT_LIGHT:F

    const/16 v0, -0x7d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

    const/16 v0, -0x708

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_HEIGHT_LIGHT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFunARModule()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_HEIGHT_LIGHT:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f5eb852    # 0.87f

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_HEIGHT_LIGHT:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    :goto_0
    iput p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->REAL_BV:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mEnableBv:Z

    return-void
.end method

.method private static getLowLightValue()F
    .locals 1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFunARModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooO0()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/high16 v0, 0x43e10000    # 450.0f

    return v0
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashForAuto(Ljava/lang/Integer;I)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isPortraitMode()Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isMimojiMode()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_5

    instance-of p0, v0, Lcom/android/camera2/Camera2Proxy$ASDSceneCallback;

    if-eqz p0, :cond_3

    check-cast v0, Lcom/android/camera2/Camera2Proxy$ASDSceneCallback;

    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$ASDSceneCallback;->isAutoFlashOff()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->parseRtbSceneResult(Landroid/hardware/camera2/CaptureResult;ZZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public parseRtbSceneResult(Landroid/hardware/camera2/CaptureResult;ZZ)I
    .locals 7

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getAecLux(Landroid/hardware/camera2/CaptureResult;)F

    move-result v0

    const-string v1, "FunctionParseAsdScene"

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez p2, :cond_5

    sput-boolean v2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    invoke-static {}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->getLowLightValue()F

    move-result p2

    iput p2, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    sget-boolean p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "<back facing>aecLux:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ",low_light_value:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 p1, 0x40200000    # 2.5f

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x7

    return p0

    :cond_4
    return v3

    :cond_5
    if-nez p3, :cond_f

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000O0Oo()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_6

    sget p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mFrameNumber:I

    const/4 v4, 0x2

    if-ge p2, v4, :cond_6

    add-int/2addr p2, p3

    sput p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mFrameNumber:I

    return v3

    :cond_6
    iget-boolean p2, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mEnableBv:Z

    const-string v4, ",mIsFlashRetain:"

    const-string v5, ",,low_light_value:"

    const/16 v6, 0x9

    if-eqz p2, :cond_a

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getRealBV(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p1

    sget-boolean p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<front facing>realBV:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",REAL_BV_LAST_LIGHT:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    iget p0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_8

    return v6

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_9

    sput-boolean p3, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    return v6

    :cond_9
    sput-boolean v2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    return v3

    :cond_a
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFunARModule()Z

    move-result p1

    if-eqz p1, :cond_b

    sget p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HEIGHT_LIGHT:F

    const p2, 0x3f5eb852    # 0.87f

    mul-float/2addr p1, p2

    goto :goto_0

    :cond_b
    sget p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HEIGHT_LIGHT:F

    :goto_0
    iput p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    sget-boolean p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<front facing>aecLux:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",AEC_LUX_LAST_LIGHT:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_LAST_LIGHT:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-boolean p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    if-eqz p1, :cond_d

    iget p0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_d

    return v6

    :cond_d
    sget p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_LAST_LIGHT:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_e

    sput-boolean p3, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    return v6

    :cond_e
    sput-boolean v2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    return v3

    :cond_f
    sput v2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mFrameNumber:I

    return v3
.end method
