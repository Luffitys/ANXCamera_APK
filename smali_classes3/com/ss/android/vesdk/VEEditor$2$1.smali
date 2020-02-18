.class Lcom/ss/android/vesdk/VEEditor$2$1;
.super Ljava/lang/Object;
.source "VEEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor$2;->onCallback(IIFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/VEEditor$2;

.field final synthetic val$ext:I

.field final synthetic val$f:F

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor$2;IIFLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->this$1:Lcom/ss/android/vesdk/VEEditor$2;

    iput p2, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->val$type:I

    iput p3, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->val$ext:I

    iput p4, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->val$f:F

    iput-object p5, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->this$1:Lcom/ss/android/vesdk/VEEditor$2;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$2;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->this$1:Lcom/ss/android/vesdk/VEEditor$2;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$2;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->val$type:I

    iget v2, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->val$ext:I

    iget v3, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->val$f:F

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$2$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;->onCompileError(IIFLjava/lang/String;)V

    :cond_0
    return-void
.end method
