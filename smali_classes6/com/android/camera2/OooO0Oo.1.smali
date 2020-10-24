.class public final synthetic Lcom/android/camera2/OooO0Oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera2/MiCamera2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/OooO0Oo;->OooO00o:Lcom/android/camera2/MiCamera2;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/OooO0Oo;->OooO00o:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->OooO0Oo(Landroid/media/ImageReader;)V

    return-void
.end method
