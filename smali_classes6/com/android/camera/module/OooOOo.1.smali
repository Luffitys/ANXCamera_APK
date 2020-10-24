.class public final synthetic Lcom/android/camera/module/OooOOo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

.field public final synthetic OooO0O0:Landroid/graphics/Bitmap;

.field public final synthetic OooO0OO:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Landroid/graphics/Bitmap;[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/OooOOo;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iput-object p2, p0, Lcom/android/camera/module/OooOOo;->OooO0O0:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/module/OooOOo;->OooO0OO:[F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/OooOOo;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iget-object v1, p0, Lcom/android/camera/module/OooOOo;->OooO0O0:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/camera/module/OooOOo;->OooO0OO:[F

    invoke-static {v0, v1, p0}, Lcom/android/camera/module/Camera2Module;->Oooo000(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Landroid/graphics/Bitmap;[F)V

    return-void
.end method
