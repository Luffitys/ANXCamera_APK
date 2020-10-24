.class public final synthetic Lcom/android/camera/dualvideo/render/o00oO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/dualvideo/render/o00oO0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/o00oO0o;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/o00oO0o;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/o00oO0o;->OooO00o:Lcom/android/camera/dualvideo/render/o00oO0o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isPressedInSelectWindow()Z

    move-result p0

    return p0
.end method
