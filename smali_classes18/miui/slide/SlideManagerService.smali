.class public Lmiui/slide/SlideManagerService;
.super Lmiui/slide/ISlideManagerService$Stub;
.source "SlideManagerService.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.slide.SlideManagerService"

.field private static final TAG:Ljava/lang/String; = "SlideManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lmiui/slide/ISlideManagerService$Stub;-><init>()V

    iput-object p1, p0, Lmiui/slide/SlideManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lmiui/slide/SlideCloudConfigHelper;->getInstance()Lmiui/slide/SlideCloudConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lmiui/slide/SlideManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/slide/SlideCloudConfigHelper;->initConfig(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lmiui/slide/SlideManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump miui.slide.SlideManagerService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " due to missing android.permission.DUMP permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_34
    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->getInstance()Lmiui/slide/SlideCoverEventManager;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1, p2, p3}, Lmiui/slide/SlideCoverEventManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getAppSlideConfig(Ljava/lang/String;I)Lmiui/slide/AppSlideConfig;
    .registers 5

    invoke-static {}, Lmiui/slide/SlideCloudConfigHelper;->getInstance()Lmiui/slide/SlideCloudConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/slide/SlideCloudConfigHelper;->getAppSlideConfigs(Ljava/lang/String;)Lmiui/slide/AppSlideConfig;

    move-result-object v0

    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_11

    :cond_c
    new-instance v1, Lmiui/slide/AppSlideConfig;

    invoke-direct {v1}, Lmiui/slide/AppSlideConfig;-><init>()V

    :goto_11
    return-object v1
.end method

.method public getCameraStatus()I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/slide/SlideCameraMonitor;->isFrontCameraOpening()Z

    move-result v3

    if-eqz v3, :cond_11

    or-int/lit8 v2, v2, 0x1

    :cond_11
    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/slide/SlideCameraMonitor;->isBackCameraOpening()Z

    move-result v3

    if-eqz v3, :cond_1d

    or-int/lit8 v2, v2, 0x2

    :cond_1d
    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/slide/SlideCameraMonitor;->isCameraRecording()Z

    move-result v3

    if-eqz v3, :cond_29

    or-int/lit8 v2, v2, 0x4

    :cond_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public registerSlideChangeListener(Ljava/lang/String;Lmiui/slide/ISlideChangeListener;)V
    .registers 4

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    if-nez p2, :cond_b

    goto :goto_13

    :cond_b
    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->getInstance()Lmiui/slide/SlideCoverEventManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/slide/SlideCoverEventManager;->registerSlideChangeListener(Ljava/lang/String;Lmiui/slide/ISlideChangeListener;)V

    return-void

    :cond_13
    :goto_13
    return-void
.end method

.method public unregisterSlideChangeListener(Lmiui/slide/ISlideChangeListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->getInstance()Lmiui/slide/SlideCoverEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/slide/SlideCoverEventManager;->unregisterSlideChangeListener(Lmiui/slide/ISlideChangeListener;)V

    return-void
.end method
