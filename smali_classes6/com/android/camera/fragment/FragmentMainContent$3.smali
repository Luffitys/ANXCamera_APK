.class Lcom/android/camera/fragment/FragmentMainContent$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentMainContent;

.field final synthetic val$currentLightingView:Lcom/android/camera/ui/LightingView;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/ui/LightingView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$3;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent$3;->val$currentLightingView:Lcom/android/camera/ui/LightingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$3;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentMainContent;->access$500(Lcom/android/camera/fragment/FragmentMainContent;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent$3;->val$currentLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/LightingView;->triggerAnimateSuccess()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/LightingView;->triggerAnimateFocusing()V

    :goto_0
    return-void
.end method
