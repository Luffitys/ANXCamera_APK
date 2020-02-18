.class Lcom/ss/android/vesdk/VEEditor$5;
.super Ljava/lang/Object;
.source "VEEditor.java"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;


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

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenGLCreate(I)I
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOpenGLCreate: ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEEditor"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onOpenGLDestroy(I)I
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOpenGLDestroy: ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEEditor"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onOpenGLDrawAfter(ID)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpenGLDrawing: tex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " timeStamp = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VEEditor"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1800(Lcom/ss/android/vesdk/VEEditor;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p3}, Lcom/ss/android/vesdk/VEEditor;->access$1900(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string p3, "te_edit_first_frame_time"

    invoke-static {p1, p3, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2000(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2000(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;->onRendered()V

    :cond_0
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1804(Lcom/ss/android/vesdk/VEEditor;)I

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1800(Lcom/ss/android/vesdk/VEEditor;)I

    move-result p1

    const/16 p3, 0x1e

    const/4 v0, 0x0

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/ss/android/vesdk/VEEditor;->access$2102(Lcom/ss/android/vesdk/VEEditor;J)J

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1900(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2100(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const p1, 0x46ea6000    # 30000.0f

    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p3}, Lcom/ss/android/vesdk/VEEditor;->access$2100(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v1

    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p3}, Lcom/ss/android/vesdk/VEEditor;->access$1900(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float p3, v1

    div-float/2addr p1, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Render FPS = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$2100(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->access$1902(Lcom/ss/android/vesdk/VEEditor;J)J

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$5;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->access$1802(Lcom/ss/android/vesdk/VEEditor;I)I

    :cond_1
    return v0
.end method

.method public onOpenGLDrawBefore(ID)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreviewSurface(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
