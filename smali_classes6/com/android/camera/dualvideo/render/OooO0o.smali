.class public final synthetic Lcom/android/camera/dualvideo/render/OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic OooO00o:Landroid/util/SparseIntArray;

.field public final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseIntArray;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/OooO0o;->OooO00o:Landroid/util/SparseIntArray;

    iput p2, p0, Lcom/android/camera/dualvideo/render/OooO0o;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/OooO0o;->OooO00o:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/camera/dualvideo/render/OooO0o;->OooO0O0:I

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {v0, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooOo0(Landroid/util/SparseIntArray;ILcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method
