.class Lcom/ss/android/vesdk/VEEditor$2;
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

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$2;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$2;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$700(Lcom/ss/android/vesdk/VEEditor;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$2;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$800(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$2;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$800(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$2;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$2;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object v0

    new-instance v7, Lcom/ss/android/vesdk/VEEditor$2$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/vesdk/VEEditor$2$1;-><init>(Lcom/ss/android/vesdk/VEEditor$2;IIFLjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
