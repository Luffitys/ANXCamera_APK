.class public final synthetic Lcom/android/camera/dualvideo/render/Oooo0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/dualvideo/render/Oooo0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/Oooo0o;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/Oooo0o;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/Oooo0o;->OooO00o:Lcom/android/camera/dualvideo/render/Oooo0o;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->onKeyUp()V

    return-void
.end method
