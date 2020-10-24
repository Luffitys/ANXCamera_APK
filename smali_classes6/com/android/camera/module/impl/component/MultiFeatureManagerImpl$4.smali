.class Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$4;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onInstallFailed:"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
