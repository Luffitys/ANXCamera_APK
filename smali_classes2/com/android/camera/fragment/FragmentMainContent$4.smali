.class Lcom/android/camera/fragment/FragmentMainContent$4;
.super Ljava/lang/Object;
.source "FragmentMainContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentMainContent;->mimojiEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentMainContent;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$4;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent$4;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentMainContent;->access$400(Lcom/android/camera/fragment/FragmentMainContent;)Lcom/android/camera/ui/LightingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/LightingView;->triggerAnimateExit()V

    return-void
.end method
