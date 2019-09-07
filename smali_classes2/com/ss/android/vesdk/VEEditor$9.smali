.class final Lcom/ss/android/vesdk/VEEditor$9;
.super Ljava/lang/Object;
.source "VEEditor.java"

# interfaces
.implements Lcom/ss/android/vesdk/VECommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor;->genReverseVideo(Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VETimelineParams;IILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


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
