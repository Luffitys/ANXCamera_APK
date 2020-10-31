.class Landroid/hardware/CameraInjector$CameraExInfo;
.super Ljava/lang/Object;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraExInfo"
.end annotation


# instance fields
.field private mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;

.field private mCameraParameterInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseFrameData:Z


# direct methods
.method private constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraParameterInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/hardware/CameraInjector$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/CameraInjector$CameraExInfo;-><init>(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/CameraInjector$CameraExInfo;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mReverseFrameData:Z

    return v0
.end method

.method static synthetic access$102(Landroid/hardware/CameraInjector$CameraExInfo;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mReverseFrameData:Z

    return p1
.end method

.method static synthetic access$200(Landroid/hardware/CameraInjector$CameraExInfo;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    .registers 2

    iget-object v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    return-object v0
.end method

.method static synthetic access$202(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    .registers 2

    iput-object p1, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    return-object p1
.end method

.method static synthetic access$500(Landroid/hardware/CameraInjector$CameraExInfo;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraParameterInfo:Ljava/util/HashMap;

    return-object v0
.end method
