.class Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;
.super Ljava/lang/Object;
.source "FragmentFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->quitLiveRecordPreview(Z)V

    return-void
.end method
