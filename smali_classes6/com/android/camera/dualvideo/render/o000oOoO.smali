.class public final synthetic Lcom/android/camera/dualvideo/render/o000oOoO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/dualvideo/render/o000oOoO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/o000oOoO;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/o000oOoO;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/o000oOoO;->OooO00o:Lcom/android/camera/dualvideo/render/o000oOoO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemManager;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooOo0(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    return-void
.end method
