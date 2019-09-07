.class Lcom/ss/android/vesdk/VEEditor$1;
.super Ljava/lang/Object;
.source "VEEditor.java"

# interfaces
.implements Lcom/ss/android/ttve/common/TECommonCallback;


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

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .locals 2

    const/16 v0, 0x1005

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1007

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1009

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    iput p1, p2, Landroid/os/Message;->what:I

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v1}, Lcom/ss/android/vesdk/VEEditor;->access$000(Lcom/ss/android/vesdk/VEEditor;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setCallback(Lcom/ss/android/vesdk/VECommonCallback;)V

    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->access$200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->access$002(Lcom/ss/android/vesdk/VEEditor;Z)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v1}, Lcom/ss/android/vesdk/VEEditor;->access$300(Lcom/ss/android/vesdk/VEEditor;)V

    :cond_5
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v1}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput v0, p1, Landroid/os/Message;->what:I

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v1}, Lcom/ss/android/vesdk/VEEditor;->access$600(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method
