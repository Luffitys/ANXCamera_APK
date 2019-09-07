.class Lcom/ss/android/vesdk/VEEditor$8$1;
.super Ljava/lang/Object;
.source "VEEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor$8;->onCallback(IIFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor$8;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor$8;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$8$1;->this$0:Lcom/ss/android/vesdk/VEEditor$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$8$1;->this$0:Lcom/ss/android/vesdk/VEEditor$8;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$8;->val$mVideoCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$8$1;->this$0:Lcom/ss/android/vesdk/VEEditor$8;

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$allIVideoPath:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iput-object v2, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$separateAudioPath:Ljava/lang/String;

    aput-object v3, v2, v4

    iput-object v2, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$reverseVideoPath:Ljava/lang/String;

    aput-object v3, v2, v4

    iput-object v2, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    iput-boolean v1, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, v4}, Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;->onReverseDone(I)V

    :cond_0
    return-void
.end method
