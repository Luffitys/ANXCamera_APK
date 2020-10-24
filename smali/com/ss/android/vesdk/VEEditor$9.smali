.class final Lcom/ss/android/vesdk/VEEditor$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/vesdk/VECommonCallback;


# instance fields
.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

.field final synthetic val$mVideoCompiler:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$9;->val$mVideoCompiler:Lcom/ss/android/vesdk/VEEditor;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor$9;->val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/ss/android/vesdk/VEEditor$9$1;

    invoke-direct {p2, p0}, Lcom/ss/android/vesdk/VEEditor$9$1;-><init>(Lcom/ss/android/vesdk/VEEditor$9;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
