.class Lcom/ss/android/vesdk/VEEditor$4;
.super Ljava/lang/Object;
.source "VEEditor.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$4;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    const-string p2, "surfaceChanged: pixel format [%d], size [%d, %d]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VEEditor"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$4;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VEEditor;->access$1302(Lcom/ss/android/vesdk/VEEditor;I)I

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$4;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1, p4}, Lcom/ss/android/vesdk/VEEditor;->access$1402(Lcom/ss/android/vesdk/VEEditor;I)I

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$4;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1500(Lcom/ss/android/vesdk/VEEditor;)V

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$4;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0, p3, p4}, Lcom/ss/android/vesdk/VEEditor;->access$1700(Lcom/ss/android/vesdk/VEEditor;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$4;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->access$1200(Lcom/ss/android/vesdk/VEEditor;Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$4;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$1600(Lcom/ss/android/vesdk/VEEditor;)V

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p0, "VEEditor"

    const-string p1, "surfaceRedrawNeeded..."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
