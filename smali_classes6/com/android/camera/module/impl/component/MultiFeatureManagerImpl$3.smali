.class Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

.field final synthetic val$cancelRunnable:Ljava/lang/Runnable;

.field final synthetic val$featureName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    iput-object p2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$featureName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "feature_install_cancel_conform"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallOperation(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel confirm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FML"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->cancelInstallFeature(Ljava/lang/String;)V

    return-void
.end method
