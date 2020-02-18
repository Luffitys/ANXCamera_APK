.class Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
.super Landroid/os/Handler;
.source "VEEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VEEditorMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1005

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1007

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1009

    if-eq v0, v1, :cond_1

    const/16 p1, 0x1015

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$900(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$900(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, v3, p1, p1, p1}, Lcom/ss/android/vesdk/VEListener$VEGetImageListener;->onGetImageData([BIII)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;->onCompileProgress(F)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const-string v4, ""

    invoke-interface {v0, p1, v2, v1, v4}, Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;->onCompileError(IIFLjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;->onCompileDone()V

    :goto_0
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0, v3}, Lcom/ss/android/vesdk/VEEditor;->access$402(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$600(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$600(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;->onSeekDone(I)V

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0, v3}, Lcom/ss/android/vesdk/VEEditor;->access$602(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    :cond_5
    :goto_1
    return-void
.end method
