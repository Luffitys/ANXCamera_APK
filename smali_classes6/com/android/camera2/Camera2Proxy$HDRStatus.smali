.class public Lcom/android/camera2/Camera2Proxy$HDRStatus;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private enable:Z

.field private isFlashHDR:Z

.field private isSuperResolutionHDR:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->enable:Z

    iput-boolean p2, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isFlashHDR:Z

    iput-boolean p3, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR:Z

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->enable:Z

    return p0
.end method

.method public isFlashHDR()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isFlashHDR:Z

    return p0
.end method

.method public isSuperResolutionHDR()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->enable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isFlashHDR:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "hdrEnable: %b, isNightHDR: %b, isSuperResolutionHDR: %b"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
