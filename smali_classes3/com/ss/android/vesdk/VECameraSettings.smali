.class public Lcom/ss/android/vesdk/VECameraSettings;
.super Ljava/lang/Object;
.source "VECameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    }
.end annotation


# instance fields
.field private facingID:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

.field private orientation:I

.field private size:Lcom/ss/android/vesdk/VESize;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;ILcom/ss/android/vesdk/VESize;)V
    .locals 3
    .param p3    # Lcom/ss/android/vesdk/VESize;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->size:Lcom/ss/android/vesdk/VESize;

    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->facingID:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    iput p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->orientation:I

    iput-object p3, p0, Lcom/ss/android/vesdk/VECameraSettings;->size:Lcom/ss/android/vesdk/VESize;

    return-void
.end method


# virtual methods
.method public getFacingID()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->facingID:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->orientation:I

    return p0
.end method

.method public getSize()Lcom/ss/android/vesdk/VESize;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->size:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method
