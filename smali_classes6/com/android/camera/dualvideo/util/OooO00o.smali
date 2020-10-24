.class public final synthetic Lcom/android/camera/dualvideo/util/OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/dualvideo/util/OooO00o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/util/OooO00o;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/util/OooO00o;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/util/OooO00o;->OooO00o:Lcom/android/camera/dualvideo/util/OooO00o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;

    invoke-static {p1}, Lcom/android/camera/dualvideo/util/CameraIDManager;->OooO0O0(Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
