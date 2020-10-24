.class public final synthetic Lcom/android/camera/dualvideo/util/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic OooO00o:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/dualvideo/util/OooO0OO;->OooO00o:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/util/OooO0OO;->OooO00o:I

    check-cast p1, Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/util/CameraTag;->OooO00o(ILcom/android/camera/dualvideo/util/CameraTag;)Z

    move-result p0

    return p0
.end method
