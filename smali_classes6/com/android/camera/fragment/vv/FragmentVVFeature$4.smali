.class Lcom/android/camera/fragment/vv/FragmentVVFeature$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->access$300(Lcom/android/camera/fragment/vv/FragmentVVFeature;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    iget-object v1, v1, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->access$300(Lcom/android/camera/fragment/vv/FragmentVVFeature;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/data/observeable/VMFeature;->removeFeature(Ljava/lang/String;)V

    return-void
.end method
